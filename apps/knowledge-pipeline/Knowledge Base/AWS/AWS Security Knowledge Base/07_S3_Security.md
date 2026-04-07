# 07_S3_Security.md

## Scope
- Topic: S3 encryption and access controls, access points, CORS, MFA Delete, access logs, object lock
- Files processed: 49
- Extracted non-empty transcript lines: 1836
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 5 Topic 3: S3 Security)

This section is the study-first architecture guide for securing object storage through encryption, policy design, and immutable controls.

### Phase 1 - Foundations

#### Module 1: S3 Security Control Planes
- Data confidentiality via encryption controls.
- Access authorization via IAM and bucket/access-point policies.
- Data governance via retention, lock, logging, and replication controls.


##### Source Transcript Details
- Module focus: S3 Security Control Planes
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/157_[SAA_DVA_SOA] S3 CORS - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/155_S3 CORS Hands On.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/026_S3 Security.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/157_S3 MFA Delete Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/146_S3 - Authorization Evaluation Process.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/150_S3 Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/152_S3 Encryption - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/159_S3 Access Logs - Hands On.txt
- Top concept clusters from transcript metadata:
- Data Security Operational Context
- Storage Data Protection
- Encryption Fundamentals
- Access Control Enforcement
- Cross-Account and Multi-Region Security
- Certificate and TLS Security
- Key Management Lifecycle
- Secrets Management
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 49
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1836
- Key insights inside selected files: 760
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- Now let's get into S3 security.
- The second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can neve...
- Next, S3 security, how do you secure a bucket?
- Well, first you have user-based security where you have IAM policies, and by setting up an IAM policy on one of your user, you allow it to access a specific bucket.
- Okay, finally, for S3 security.
- So that rounds up everything for S3 security.
- And what I need to do is click on it and click on my security credentials.
- This is taking me to the security credentials I have in IAM.
- And just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- So this is another level of security.
- So let's practice using CORS.
- And for this we first must change the index.html files.
- So if you open it, you will find that this part has been commented out and this part is to demo CORS.
- Okay, so the way to just make it work is that you first go to line 13 and you remove the first characters before the div.
- And after script, you remove as well the dash, dash and arrow.
- So this is going to enable CORS.
- And what's going to happen is that my first webpage is now gonna say Hello world I love coffee and show the coffee image.

##### Polished Architect Notes
- Transcript signals that let's get into S3 security.
- Transcript signals that the second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can...
- Transcript signals that next, S3 security, how do you secure a bucket?
- Transcript signals that first you have user-based security where you have IAM policies, and by setting up an IAM policy on one of your user, you allow it to access a specific bucket.
- Transcript signals that finally, for S3 security.
- Transcript signals that that rounds up everything for S3 security.
- Transcript signals that this is taking me to the security credentials I have in IAM.
- Transcript signals that just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- Transcript signals that the object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Transcript signals that this is another level of security.
- Transcript signals that let's practice using CORS.
- Transcript signals that for this we first must change the index.html files.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Data Protection as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Encryption Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cross-Account and Multi-Region Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get into S3 security.
- Design implication: the second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can...
- Design implication: next, S3 security, how do you secure a bucket?
#### Module 2: Storage Threat Models
- Public exposure from policy misconfiguration.
- Insecure cross-origin or pre-signed access patterns.
- Mutable data risk where immutability is required.


##### Source Transcript Details
- Module focus: Storage Threat Models
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/026_S3 Security.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/146_S3 - Authorization Evaluation Process.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/150_S3 Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/152_S3 Encryption - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/159_S3 Access Logs - Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/147_S3 - Cross Account Access and Canned ACL.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/153_[SOA] S3 Access Points - Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt
- Top concept clusters from transcript metadata:
- Data Security Operational Context
- Storage Data Protection
- Encryption Fundamentals
- Access Control Enforcement
- Cross-Account and Multi-Region Security
- Certificate and TLS Security
- Key Management Lifecycle
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 49
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1836
- Key insights inside selected files: 647
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Now let's get into S3 security.
- The second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can neve...
- Next, S3 security, how do you secure a bucket?
- Well, first you have user-based security where you have IAM policies, and by setting up an IAM policy on one of your user, you allow it to access a specific bucket.
- Okay, finally, for S3 security.
- So that rounds up everything for S3 security.
- And just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- So this is another level of security.
- So that means that ACLs are going to be disabled because they're considered an old way of making security on AWS.
- But no ACLs, the bucket owner will own all the objects and that simplifies a lot the security model of Amazon S3.
- You can just have the IAM role authorize the API calls and that will, can simplify your security model.
- So let's practice replication on Amazon S3.
- For this, we're going to create a new bucket.
- I'll call it s3-stephane-bucket-origin-v2.
- And I will set it in one region that I want, for example, eu-west-1.
- This will be my origin bucket and then data will be replicated from this bucket to another bucket.
- So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.

##### Polished Architect Notes
- Transcript signals that let's get into S3 security.
- Transcript signals that the second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can...
- Transcript signals that next, S3 security, how do you secure a bucket?
- Transcript signals that first you have user-based security where you have IAM policies, and by setting up an IAM policy on one of your user, you allow it to access a specific bucket.
- Transcript signals that finally, for S3 security.
- Transcript signals that that rounds up everything for S3 security.
- Transcript signals that just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- Transcript signals that the object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Transcript signals that this is another level of security.
- Transcript signals that that means that ACLs are going to be disabled because they're considered an old way of making security on AWS.
- Transcript signals that no ACLs, the bucket owner will own all the objects and that simplifies a lot the security model of Amazon S3.
- Transcript signals that you can just have the IAM role authorize the API calls and that will, can simplify your security model.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Data Protection as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Encryption Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cross-Account and Multi-Region Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get into S3 security.
- Design implication: the second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can...
- Design implication: next, S3 security, how do you secure a bucket?
### Phase 2 - Core Services

#### S3 Encryption Models
- Server-side and key-managed options with operational trade-offs.
- Default encryption as baseline control, not full security strategy.

#### Authorization and Access Boundaries
- Bucket policies and access points define data access boundaries.
- Block Public Access and MFA delete protect against common high-impact mistakes.
- Pre-signed URLs and CORS require strict scope and time controls.

#### Logging and Governance Features
- Access logs and event notifications support audit and automation workflows.
- Object Lock and retention controls support immutability and compliance objectives.

### Phase 3 - Advanced Patterns

#### Pattern 1: Multi-Account Data Sharing with Guardrails
- Use policy-scoped sharing and endpoint-aware access controls.
- Keep producer/consumer boundaries explicit and auditable.

#### Pattern 2: Immutable Data Protection
- Apply object lock governance/compliance modes for critical datasets.
- Combine retention controls with replication and lifecycle strategy.

#### Pattern 3: Event-Driven Data Security Automation
- Trigger notifications/remediation from object and access events.
- Use event filters to avoid alert fatigue and noisy automation.

### Phase 4 - System Design (Production)

#### Reference S3 Security Architecture
- Encrypted buckets by default with explicit key governance.
- Access segmented by access points and policy conditions.
- Immutable and logging controls enabled for critical data classes.

#### Scaling Considerations
- Policy sprawl across buckets and access points.
- Cross-region replication and retention consistency.
- Metadata and event volume in large object estates.

#### Cost Considerations
- Storage class, retention duration, and replication drive cost profile.
- Logging and event processing add operational cost that must be budgeted.

### Cross-Cloud Concept Mapping (S3 Security)

#### Underlying Concept: Object Storage Security
- AWS: S3 security controls
- Azure: Blob security and immutability controls
- GCP: Cloud Storage IAM, retention, and CMEK controls
- Trade-off: policy expression and immutability semantics differ; align controls to compliance intent.

#### Underlying Concept: Immutable Retention
- AWS: Object Lock and Glacier vault-style retention controls
- Azure: immutable blob policies
- GCP: retention locks and bucket-level retention controls
- Trade-off: lock governance and legal-hold semantics vary by provider.

### Real-World Use Cases from Transcript Signals
- Lock down critical buckets against accidental or malicious public exposure.
- Implement immutable retention for regulated archives.
- Secure temporary sharing with tightly scoped pre-signed access.

### Constraints and Exam-Relevant Traps Captured
- Encryption without policy hardening still leaves exposure paths.
- CORS and pre-signed URL misuse can create accidental data leakage.
- Immutability must be designed with recovery and legal workflows in mind.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/026_S3 Security.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now let's get into S3 security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And first of all, we're going to look at S3 encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And it's good to know, first of all, SSE-S3 which allows you to encrypt S3 objects using keys handled and managed by AWS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Then we have SSE-KMS, where you leverage the KMS service to manage your encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, first of all, any API call that is done through SSE-KMS will appear as an API call in KMS, and therefore, your key usage appears in CloudTrail, which is very helpful for audit purposes.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: The second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can never be read because a public anonymous user cannot have access to your KMS key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal.

Line 8:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS
- Key Insights: Finally, if you do upload objects with the SSE-KMS encryption scheme, you need to make sure that you have access to the IAM permission, kms:GenerateDataKey, because this is how the data key is being used to upload that object specifically.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You also have SSE-C.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So, in that example, we want to manage our own encryption keys, but we pass them on to Amazon S3, and the encryption is done server side.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Or, if you prefer to manage your own encryption keys and also do the encryption client side, then you use client-side encryption, and therefore you encrypt and your decrypt your data client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Finally, if you use Glacier, all the data is going to be by default AES-256 encrypted, and the key will remain under the control of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, you also have encryption in transit, and in that case Amazon S3 will expose two endpoints.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 14:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: You'll have the HTTP endpoint, which is non-encrypted, and that's not the default one your client use, and the default one used by your client is the HTTPS endpoint to guarantee that you have encryption in flight using SSL or TLS certificates.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So you can use whatever endpoint you want, but of course HTTPS is recommended, and it is actually mandatory if you want to use the SSE-C encryption scheme.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Finally, if you wanted to force your users to use HTTPS, then you will use a bucket policy, and you will use the condition on the aws:SecureTransport condition.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And we're good to go with encryption in flights.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Next, we have events in S3 buckets, and so there are multiple ones.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: The first one is S3 Access Logs, which will give you detailed records of all the requests that are made into a buckets, and it might take hours to deliver and it might be delivered to another S3 buckets, and it might be incomplete.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 20:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: This is from the documentation, this is best effort, but still a really good access log to get into S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: S3 Event Notifications now, which is to retrieve notifications whenever certain events happen in your buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 22:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: For example, new objects are being created, objects are being removed, objects are being restored, or there is a replication event happening, and the destinations of these S3 events can be SNS, SQS queue and Lambda.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And so, typically, these S3 event notifications are going to be delivered within seconds, but it can sometime take a minute or two, and you will receive a notification for every single object if you have enabled versioning on your S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: But if somehow you haven't enabled versioning, and in the very rare occasion that you're doing two writes at the same time on the same object, then you may receive just one notification and not two, and that is outlined in the documentation, but, for the rest, you will receive a notification for every single object inserted into your S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for Trusted Advisor, check the bucket permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this will be helpful, for example, to know if your bucket is being public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And you have Amazon EventBridge where you need to enable CloudTrail object-level logging on S3 first and then the target of Amazon EventBridge could be Lambda functions, SQS, SNS, etc, etc.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Next, S3 security, how do you secure a bucket?
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 29:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Well, first you have user-based security where you have IAM policies, and by setting up an IAM policy on one of your user, you allow it to access a specific bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: And you have resource-based policy, which is bucket policies, so this is bucket-wide rules for the S3 console, and we've seen that it's very helpful when we have cross-account access, because it allows the accounts who wants to access the S3 buckets not to assume a role and give up its permissions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Then we have object ACL finer grain, and finally bucket access control list, which is less common, and the exam probably will not talk to you about the ACLs, only talk about the S3 bucket policies because this is the way forward for the exam.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 32:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, now let's talk about the S3 bucket policies in details.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 33:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: Amazon S3
- Key Insights: So you should use an S3 bucket policy in order to grant public access to the bucket, or force objects to be encrypted at upload, or grant access to another account, cross-account access, and you can get conditions on many different things, and this is very important to remember those.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is SourceIp.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to have a condition on the public or elastic IP.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we have a second one called VpcSourceIp, which allows you to get a condition on the private IP, but only if you are using a VPC endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But there is another option.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's called Source VPC or Source VPC Endpoint.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And this is when you define a VPC endpoint, we saw this in the next slide or the one after, and this is very helpful when you have a private access to your S3 buckets and you want to say, okay, only IP coming from this VPC endpoint or this VPC are allowed.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But again, this is not by IP, this is by VPC or VPC endpoint.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we have CloudFront Origin Identity.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So it's possible to have a condition on saying only a CloudFront distribution with an origin identity is able to access my S3 bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, you can have conditions on multifactor authentication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: If you wanna see many different S3 bucket policies, please use this link and have a look, learn a little bit more, if these are not very familiar for you.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now pre-signed URLs, what are those?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can generate pre-signed URLs using the SDK or the CLI.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this for downloads or for uploads, they are both valid.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you sign these URLs with your IAM credentials.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so whoever has this pre-signed URL has exact same right that you were given when you created that pre-signed URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's valid for a default of one hour, but you can change the timeout with the expires-in arguments, and users will inherit the permission of the person who created or generated the URL for GET or PUT, GET is for download and PUT is for upload.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when we do use pre-signed URLs?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We will use them, for example, if we want to allow logged-in users to only download a premium video on your S3 buckets on demand, or allow an ever-changing list of users to download files by generating URLs dynamically.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Also, if you want to allow a user to upload a file temporarily to a very precise location in your bucket, and then make sure they don't have any rights after this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, so now let's talk about VPC Endpoint Gateway for S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 56:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's say you have a VPC and, in it, you have an EC2 instance, it's in the public subnet, and it wants to access an S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 57:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now the S3 bucket has a public access and, therefore, you need to go through an internet gateway for the EC2 instance to get a public IP, go through the internet gateway and then get access through the public internet to the S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 58:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, the S3 bucket can have a bucket policy, and we can filter, have a condition for the bucket policy by using AWS:SourceIP, and this must be a public IP or an elastic IP, which are public by the way.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's option one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Option two is we have a instance in a private subnet, and we want to access the S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, there's a way where we could have this private instance go through a net gateway in this public subnet, go through the internet gateway and then go through the public route.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you go shoop like this up and then right, but there is a better way, right?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Because here you go through the public internet, and you access your bucket publicly.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Another way to do this is to use a VPC Endpoint Gateway.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you define this VPC Endpoint Gateway, and then all the traffic remains on the AWS network.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It stays private.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 67:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: And now the idea is that you can access your S3 bucket directly through this VPC endpoint, and if you wanted to use an S3 bucket policy, you could have two conditions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is AWS:SourceVpce, where you can specify one or few VPC endpoints that is allowed to go through to this buckets, or AWS:SourceVpc to encompass all the possible VPC endpoints that belong to a specific VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And so these will be the two very important conditions to remember for your S3 buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 70:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Number one is SourceIP, which is for public IP, and the second one is SourceVpc or SourceVpce, when you have a VPC endpoint to access your S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 71:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: I hope that makes sense and I hope this diagram is something that sheds a lot of lights on these S3 bucket policies and networking conditions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 72:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, finally, for S3 security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 73:
- Concepts: Storage Data Protection
- Services: S3 Object Lock
- Key Insights: So let's talk about Object Locks and Glacier Vault Lock.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So they're very similar.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: S3 Object Lock allows you to adopt a WORM, so write once, read many model, which is to block an object version deletion for a specified amount of time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you have the certainty that will never, ever, ever be deleted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 77:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: S3 Object Lock
- Key Insights: It's the same for Glacier Vault Lock, where you adopt the same model, and you lock the policy for future edits, so that it can no longer be changed and any object put into Glacier will never ever be deleted, which is extremely helpful if you have compliance and data retention requirements, and you need to prove these to auditors, then it's a great way to show that, because you've set up a Object Lock or a Glacier Vault Lock, then the object will never ever be deleted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 78:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So very simple, take an object, put it in the vault and lock that vault, and the object can never ever be deleted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 79:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So that rounds up everything for S3 security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So there should be a lot of things that you already knew, but probably one or two new things in there.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And remember, going into the exam, the very important things is all about the details.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 82:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So everything I'm saying about the details is what you should be paying attention on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/027_S3 Access Points.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: S3 Access Points
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 13:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 14:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 15:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 29:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 30:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 32:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/028_S3 Multi-Region Access Points.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So you also have the possibility to define multi-region access points on Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: The idea is that with this access point, you have a global endpoint that will span multiple S3 buckets in multiple regions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 4:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the data is replicated from one bucket to the next and vice versa.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This way, all your regions are synchronized and we'll see as well, we have failover controls, so it's possible for us to define all buckets are active, or to have some buckets as a backup, so as a passive, so that if we failover if there's a region problem, then we can failover to the passive buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at, for example, an example with three regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We have US-EAST-1, EU-WEST-1, and AP-SOUTHEAST-1, with the same S3 bucket that's going to be replicated across all regions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So automatically, these roles are created by Amazon S3 for you, so you just have to say it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But then all the data within these buckets is going to be replicated no matter what.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And as you can see, we must have replication rules across all buckets to one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Multi-Region Access Points
- Key Insights: Then we create this S3 multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in case this region is down then we may be redirected into the other regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So then we have the fellow rear controls I told you about for your S3 access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of a bucket that's across that's replicated across two regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: And we have a multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now in the case of an active passive fellow rear control where you're going to designate one bucket as active and the other one as passive.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Therefore whenever we request an object.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We're not going to go this time to the lowest latency we're just going to go to the one that's active.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And of course, if you have multiple active ones you will have the lowest latency.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And these kind of failover controls are valid for active/passive type of setups, but also active/active.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is when you can write to multiple regions at a time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/029_S3 Multi-Region Access Points - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create two buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna call this one my-global-app-stephane and then eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to go all the way down and create these buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to create another bucket, I'll call this one my-global-app-stephane-us-east-1 and I will choose another region being us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 6:
- Concepts: Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 7:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So I'll call this one MyGlobalApp, and then we need to add buckets into this access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here I will have app in this and we have these two buckets that I wanted to add.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's add these buckets and you can see I can add more buckets, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you only have one bucket per AWS region as far as it goes right now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this, I need to make sure that the name is lowercase, my-global-app.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: All right, now let's create this access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, it can take less than 30 minutes usually, but up to 24 hours to create, so we'll wait for it to be ready and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So my multi-region access point is now ready.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I can click on it, and we have, its ARN, we have its alias, and we have the buckets, that's underneath.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if I click on these buckets, I can open them in new tabs, and before I do so, let's go into Permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 20:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And then for Replication and failover, this is where it gets interesting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So we have a map of what's happening for your replication and your failover.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And as you can see right now, we don't have any replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So let's create a replication rule.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here we have to choose we want to replicate among all specified buckets, or from one, two different destinations.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The simplest is obviously the first one, which was going to give us high availability and failover capabilities.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is done directly from this console as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we enable the rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll say all objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And finally, let's go ahead and create these replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And you can verify this by also going into your Management, and here you can find your replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I'm not gonna show you how to actually use it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is more of an application specific type of API calls, but at least we saw what these are made of.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: And just to finish, what you can do is just delete this multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You're not paying anything for having it, but in case you are using it, you will pay extra charges, based on how many gigabytes go through it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/030_S3 Object Lambda.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon EFS, Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: So there is another use case for EFS three access points and it's called S3 Object Lambda.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So the idea is that you have an S3 bucket, but you want to modify the object just before it is being retrieved by a color application.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lambda
- Key Insights: And instead of, for example duplicating our buckets to have different versions of each object, we can use S3 Object Lambda instead.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: And for this, we need the S3 access points that we just saw.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Say we have the cloud and we have an S3 bucket in it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So an E-commerce application maybe owns the data in this S3 bucket and so they're able to access directly the S3 buckets and put and get the original object out of it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: But then an analytics application may want to only have access to the redacted object.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: That means that some data has been deleted from the object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: And so instead of creating a new S3 bucket for this what we can do is that we create an S3 access point on top of a S3 bucket and is connected to a Lambda function.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, we haven't seen Lambda in depth, but a Lambda function allows you to run a bit of code in the cloud very easily.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so this Lambda function is going to redact the object as it is being retrieved.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: And on top of this Lambda function, we're going to create an S3 object Lambda access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And, this is how the analytics application is going to access our S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: So to summarize the analytics application accesses our S3 Object Lambda access points, which invokes our Lambda function.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Our Lambda function is going to retrieve the data from the S3 bucket and runs some code to redact the data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And therefore the analytics application is obtaining a redacted object from the very same S3 bucket as the E-commerce application.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Now, a marketing application may want to have access to an enriched object, and they have a customer loyalty database to enhance the data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So instead of, again, creating a new S3 bucket and creating all the objects with all the enriched data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What we can do is, again, using a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So another piece of code.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this one will enrich the data by looking it up from the customer loyalty database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: S3 Access Points, S3 Object Lambda
- Key Insights: And therefore we can also create an object Lambda access point on top of it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: And therefore our marketing application can access this access point, this S3 object Lambda access point to get, again the enriched objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 25:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: As you can see, we only need one S3 bucket but we can create access points and object Lambda to modify the data as we wish.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for it is to redact, for example, PII data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So personally identifiable information, for analytics or non-production environments, or for example to convert data from XML to JSON or to perform any kind of transformation you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: For example resizing and watermarking images on the fly but the watermark is specific to the user who request the object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lambda
- Key Insights: So that's kind of a cool usage for S3 Object Lambda.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/146_S3 - Authorization Evaluation Process.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So now let's discuss how authorization is working for Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that can be quite complicated, but this is just general rule and then we'll drill down into some use cases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first we look at the user context.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Is the IAM principal authorized by the parent accounts?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Does it mean for example, that it has the correct IAM policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And if the parent owns the bucket or the object, because you should know that you have different level of ownerships within buckets and we'll talk about those in details as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: (none explicit)
- Key Insights: So if the parent owns the bucket or the object, then the bucket policy or the object ACL is going to be evaluated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll see that ACLs are deprecated but still worth mentioning in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Now, if the parent owns the bucket and objects, it can grant permission to its IAM principals using Identity-Based Policy or Resource-Based Policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll have a look at this to see the distinction between buckets and objects not owned by the account owner.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next we have the bucket context.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to evaluate the policies of the account that owns the bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We're going to check for an explicit deny.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And then we have the object context.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to look at the requester.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Does it have the permissions from the object owner?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So two cases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: (none explicit)
- Key Insights: If the bucket owner is also the object owner, then the access is granted using a bucket policy and that's the most common use case we've seen so far.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Or if the bucket owner is not equal to the object owner then the access is granted using object owner ACL.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So to simplify things, because ACLs are quite complicated, as you can see the rules are very, very difficult to understand, AWS has created a setting called Bucket Owner Enforced Setting for Object Ownership.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that the bucket owner and the objects are the same.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then if you do this, then the ACLs applied to the bucket or the objects are not editable anymore and they're no longer considered for access, which simplifies a lot of the authorization flow.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Still, I'm gonna show you everything with diagrams so you can understand these rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of an IAM user.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It makes a request.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we look at whether or not we are a user or a role.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Yes, we are a user.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll look at the user context.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: And we'll look at whether or not the IAM policy authorizes us to access the object in Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If no, well, access denied.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If yes, then we go into the bucket context.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now we'll look at the bucket owner and we'll look at if there is an explicit deny.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If there is, then of course we deny it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: If not, then we look at the object context, and here we look at the authority assigned by the object owner.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And the object owner, if it has unauthorized the access, then denied.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If yes, granted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if we are just not looking at an IAM role or user, then we go straight into the bucket context.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is for example, if you have like public access.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the theory.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's go into some practice with three accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Why three?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Well, in this example, we have a user in account one, a bucket in account two, and the accounts that owns the object inside of the bucket is account three.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a edge use case, but you need to understand it to really understand how things work.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we'll go into more simple use cases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So here in this case, S3 is going to verify that first Jill has the correct permissions to perform the requested operation.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Then S3 is going to evaluate the bucket policy to determine if the bucket owner has explicitly denied Jill access to the objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 49:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So if there is no bucket policy that explicitly denies Jill, then we move on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And then we will evaluate the object ACL to determine if Jill has the proper permission to access the object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so that means that account three should have authorized account one to access the object.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in this use case, as you can see, we have three different accounts, but in the case where the account two is also the account three, then ACLs are out of the picture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And the only thing that can be considered is the bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Finally, to understand how authorization works in Amazon S3, we must talk about bucket operations versus object operations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 55:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So if we look at the first statement, it has an S3 ListBucket, and it turns out that the resources it applies to is the bucket named test.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's called a bucket level permission.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But then if you look at the second statement, then we have GetObject, PutObject, and DeleteObject.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As you can see, the ARN now has /*.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So this /* right here means that we consider any object within the bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so that is object level permission.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Some APIs are on the bucket and some APIs are on the objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the way to differentiate it is by lengthening the ARN.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you want to apply to all objects, then we'll have /*.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So we've seen how authorization works in Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll go into more examples over time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you know the basics, and I know this is a complicated lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Don't worry.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Watch the next ones, and then if you're still curious, just watch this one again, and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/147_S3 - Cross Account Access and Canned ACL.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So now let's talk about cross account access to objects in S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So you have several ways to do cross account access to S3 objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: The first one is to use IAM policies and S3 bucket policies.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's the most common one we'll see.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you can use IAM policies and access control lists or ACLs and that's less common because they've been deprecated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this only works if the bucket owner enforced setting is equals to disabled.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But the setting by default for all newly created buckets is going to be enabled.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that ACLs are going to be disabled because they're considered an old way of making security on AWS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And the third way to do cross account access is cross accounts IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here we take a look at ACLs, what they mean, and why it's preferable not to have them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's consider an account where we have an IAM user named John, and then we have another account with an S3 bucket and another IAM user named Bob.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So John has an IAM policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: And this IAM policy is allowing it to access the S3 three bucket in account B.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And it turns out that the account B is also allowing John to get access to it by using a bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So everything is in place, everything is working.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And so John can do an s3:PutObject into the S3 bucket of account B and the object is going to be stored there.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So far so good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now Bob is doing the same thing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Bob is on its own account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Let's say it has been authorized, thanks to the IAM policy, as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So Bob can do s3:PutObject and put its own object into its own S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: But Bob now wants to access the object that was created by John.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that, well, it's going to be denied.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Well, because an object uploaded by default by a user into a bucket that has ACLs enabled, will not be accessible by another account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So there is a concept of object ownership in S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So even though the S3 bucket is owned by account B, the objects within may be owned only by the users, or the roles, or the accounts, that actually upload these objects.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it gets quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so to get it working, you need to make sure that the account A has given the proper permissions and the object ownership to the accounts B administrator.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So this is what the IAM policy looks like.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Key Management Lifecycle, Storage Data Protection
- Services: (none explicit)
- Key Insights: It says, "Hey, when I upload an object, I want to grant full control to the accounts A." And that's quite complicated, this is why ACLs are very complicated.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And so here we have some ACL-specific headers that either will grant full permissions explicitly or we can use Canned ACL and we'll see this in the next slide.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So the solution to this is to not use ACLs and instead to define a S3 object ownership so that the bucket owner owns all the objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: End of the story.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If you are in the ACL world then you need to use what's called Canned ACL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so Canned ACL are the way of a shortcut to give a bucket owner access to the object we just uploaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So if we upload an object and we add the x-amz-acl header for bucket owner full control that means that when we upload an object we also give the object ownership to the bucket owner.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So these Canned ACLs are shortcut ACLs and I'm just giving them to you but I don't think they appear in the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But we have private, public-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And they are shortcuts to giving proper ACLs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, ACLs are not recommended, but I'm still teaching them to you because it's important for you to know about them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And they've been disabled by default since April 2023.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you cannot use ACL anymore from that point at least by default.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And the new setting is, again, object ownership.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So that's only the Bucket policies the IAM policies, the SCP and the VPC Endpoint Policies, will control access to your S3 bucket objects.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 46:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: But no ACLs, the bucket owner will own all the objects and that simplifies a lot the security model of Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 47:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Finally, the last way to get access to Amazon S3 is to use an IAM role.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of the cross-account IAM role.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Here, we have accounts A that has an S3 bucket and also an IAM role that is being assumed by the IAM user in the bottom.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 50:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So when it assumes that role, thanks to the proper policies, then it can access the S3 bucket directly from within the account A.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 51:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So in this case, if you use an IAM role, the benefit is that you do not need to create an S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can just have the IAM role authorize the API calls and that will, can simplify your security model.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's up to you and based on the situation you want to use.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: You've seen how to do cross accounts API calls for Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/148_S3 - Samples S3 Bucket Policies.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So here is a short lecture to show you some simple S3 bucket policies that can come up in the exam.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the first one is to force HTTPS for encryption in flight.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So in that case, we wanna have a bucket policy where we deny any request where the SecureTransport is false.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that we're not using HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So HTTP will be denied and HTTPS is going to be allowed.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's something you've seen.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now you should know about this condition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The second one is to restrict by public IP address.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So we take an S3 bucket and we access it by using the public API.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here we block traffic unless we have a specified source IP that is contained within a CIDR of IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So here, we deny users that don't have the correct IP and users that do have the correct IP, for example, from a corporate office, are able to do API calls against my S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Lastly, it's possible for you to restrict by user id.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So we have an S3 bucket and we want to restrict access only for specific users.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, we have a AWS userId tag.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have the Role ID we can reference or the User ID or the Account ID, and that's how we restrict access for a bucket from specific id.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, this account cannot access it, but that account can access it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for the bucket policies.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/149_S3 - VPC Endpoint Strategy.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Hi, and welcome to this lecture on VPC Endpoint Strategies for Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So we know that we can access Amazon S3 directly through a VPC Gateway Endpoint.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this doesn't have any costs and it can only be accessed by resources within the VPC where it's created.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So we have VPC Gateway Endpoint for Amazon s3 and then we enable DNS support.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We update the root tables and we keep on using the public DNS of Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And what's going to happen is that the traffic is gonna go through this VPC gateway endpoints.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We also need to make sure that the security group attached to the EC2 instance has Outbound rules that allows traffic that go directly into Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when we have all these things together, it's working.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Just remember that Gateway Endpoints can only be accessed by resources within your VPC but not elsewhere, so Direct Connect does not work, side to side VPN does not work, and so on VPC peering does not work, only stuff within your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Next we have the VPC Interface Endpoint for Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of a VPC with several availability zones.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have DNS support enabled and DNS hostnames enabled.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have private subnets across these two AZs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So with the VPC interface endpoint we're going to get Elastic Network interfaces deployed in our subnets and then the security groups can be attached to these ENIs for network security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So then what we're going to do is that we're going to have EC2 instances and with the appropriate network security we're gonna be able to access Amazon S3 privately through the VPC interface endpoints.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The advantage of using an interface endpoint is that we can get access directly from on-premises through a site to site VPN or Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: This costs about 1 cents per hour per AZ, so it's not free and it's works similarly, once you have enabled the DNS in your settings in your VPC, then any public DNS of Amazon S3 will be resolved to the private interface endpoint and you'll be good.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, finally, you need to know there's like something called private DNS name, which works for most VPC endpoints, but for the VPC interface endpoint for Amazon S3 there is no such thing as private DNS name.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: The only thing you can use is the public DNS name of Amazon s3, but the traffic will still resolve to the VPC interface endpoint within your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 20:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So if we try to summarize what we have in a single VPC architecture, we may have EC2 instances accessing directly Amazon S3 for a gateway endpoint for free.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Or if you choose to create an interface endpoint we have a private link into Amazon S3 and the use case would be to use either direct connect or site to site VPN to connect to Amazon S3 through this interface endpoint.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: If you have a multi VPC centralized architecture where you want all your network traffic to go through one Central VPC, then an architecture you can have is EC2 instances that connect through Gateway Endpoint to Amazon S3 in their respective VPC because that's free and you can do it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then interface endpoints can be very helpful.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, if you wanted to centralize traffic through this central VPC, so instead of going through Gateway Endpoint, you could go through a transit gateway into the interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this works as well for the on-premises traffic such as Direct Connect and site to side VPN.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So at the exam, you will have indicators whether or not you should use Gateway or interface and it's up to you to choose the right one of course but you have enough information now to really understand the differences.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Also, we have VPC endpoint restrictions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have a couple ones.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have SourceVPC, and SourceVPCE.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here with SourceVPC we can restrict access to a specific VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, in here I restrict access to my bucket if it doesn't come through a specified source VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now this condition can only work if you have a VPC endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that on top of going through the VPC endpoint you can restrict the VPC it's coming from.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to restrict access to specific VPC endpoints what you can do is have a source VPCE condition, E for endpoints, and then you specify the VPC endpoints ID.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Once you have this as well so you can restrict by SourceIP.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Just remember, the AWS SourceIP condition is for public IP addresses, whereas the VPC SourceIP is for private IP addresses and it is only valid when you start using VPC endpoints.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/150_S3 - Regain Access to Locked S3 Bucket.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So there is a chance you may get locked out of your S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: How does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Well say you define an S3 bucket policy and you deny access to everyone.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So Deny s3*, Principal*.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Literally, once you attach this bucket policy, you cannot do anything.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Users cannot access your data, you cannot even change the bucket policy because while that is an API call on top of your S bracket.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what do you do to solve this problem?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, what you need to do is to delete the S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: But the only thing that doesn't get denied in your account when everything else is being denied, is your AWS accounts root user, because deny statement is to not apply to the root user, so therefore using the root user, you can go ahead, safely delete the bucket policy, and create a new one that doesn't lock you out.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So just a short lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It should make sense but worth saying in that may get you one point at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

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

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/151_S3 - Block Public Access Settings.txt

Line 1:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Another very short lecture on the Block Public Access settings for your buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when you create a bucket, you will see these on and off type of setting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And these settings really basically block public access for your buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so it turns out a lot of different processes that will allow you to make your buckets public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So this was created in order to prevent company data leaks, because while companies used to set their buckets as public and now we have restrictions that if you know that your bucket should never be public no matter what, we'll leave these on, and even if you set a bucket policy that allows your bucket to be public, it's going to be blocked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: On top of it, you can set this on the bucket level, but you can also add on the account level to really make sure that all your buckets within your accounts can never be made public, and that is a good enough setting for 99% of the cases.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/152_[SAA_DVA_SOA] S3 Access Points.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: S3 Access Points
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 13:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 14:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 15:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 29:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 30:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 32:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/153_[SOA] S3 Access Points - Hands On.txt

Line 1:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So let's go ahead and create an access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And for this, on the left hand side, I have the access point direct menu.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And in here I can create an access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So I call this one "demo access point." and then you have to specify a bucket name.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So I can specify the demo-S3-event-Stephane in my bucket, the region is determined by my bucket location, so EU-West-1, and then the network origin for this access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So is this a VPC access or is this an internet access?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now if you specify the VPC access, that means that you want all the traffic to be coming from within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So you want it to remain private, in which case, while the S3 console doesn't support accessing the S3 bucket resource using the VPC access points, and you need to use the API.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If to specify VPC, you need to obviously specify a VPC ID but I wanna demo stuff to use.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So I will use the internet, and in the internet I will be able to access my access point publicly.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 11:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: Next, do we want to block public access settings for this access point?
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So we have the same setting as your S3 buckets and then the access point policy, which is written in JSON., and will provide access to the object store.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: So let's look at some examples for policies for access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So let's say we want to ensure that this bucket name right here is only accessed through a access powering policy and it will only give access to a subfolder.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for this, I can go into the policies example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will scroll down.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So I will click on access point policies examples, and then I will show you the first step.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: S3 Access Points
- Key Insights: So the first step is to create an access point policy grant.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so I'm going to copy this and paste it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And if you look at the statements, so we allow a specific user, for example, I can take my account ID in here, and say the user Stephane is only going to be able to do get object and put object on, and then I need to specify the proper region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The account ID again is here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: Access point, okay.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And here is the name of the access point I have.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 25:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: S3 Access Points
- Key Insights: So let's just copy this name right here and call it my access point, access point name. and then object, Stephane, star.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is going to only allow me to write to the directory Stephane star, which is I think pretty cool.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And so this is the access point policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So now it's been applied and I can access this access point right here.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 29:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And as you can see, it took me directly into the demo-S3-Stephane bucket and it created an excess point as well in here.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 30:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So my access point is now linked to my buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And what I can do is that I can go now to my bucket's permissions and change the bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, because we've created an access point in here, and that means that if we access our S3 buckets through this access point and my Stephane user access it through this access point, then it's only gonna be allowed to access a specific sub directory.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But my user's Stephane could still access my bucket through the buckets directly.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So what I need to do, is go into permissions and create a bucket policy that will be blocking any access other than access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 36:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And to do so, you click on delegating access control to access points, and then you need to paste that bucket policy in.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So we'll edit this bucket policy and paste it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in this example we're saying, okay, allow any, when.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, any action on the bucket ARN, so which you get the bucket ARN right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the resources, this one and then this one, slash star.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: As long as the access point accounts is using the buckets accounts ID.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here it is, I'm going to paste this in.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So effectively what we're saying is that, this S3 bucket can only be accessed if you are using an access points coming from this accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is the current accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: So this is good because now what we're doing, is that we're saying, hey, you can only access this buckets, okay, through the access points.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: And now you can define as many access points as you want directly in here.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I've created one, but I could create another one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: And then through the access points, as you can see, we can view the buckets and so on.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 51:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And there's going to be a specific ARN for this access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: We've seen access points in details.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/154_[SOA] S3 Multi-Region Access Points.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So you also have the possibility to define multi-region access points on Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: The idea is that with this access point, you have a global endpoint that will span multiple S3 buckets in multiple regions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 4:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the data is replicated from one bucket to the next and vice versa.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This way, all your regions are synchronized and we'll see as well, we have failover controls, so it's possible for us to define all buckets are active, or to have some buckets as a backup, so as a passive, so that if we failover if there's a region problem, then we can failover to the passive buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at, for example, an example with three regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We have US-EAST-1, EU-WEST-1, and AP-SOUTHEAST-1, with the same S3 bucket that's going to be replicated across all regions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So automatically, these roles are created by Amazon S3 for you, so you just have to say it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But then all the data within these buckets is going to be replicated no matter what.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And as you can see, we must have replication rules across all buckets to one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Multi-Region Access Points
- Key Insights: Then we create this S3 multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in case this region is down then we may be redirected into the other regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So then we have the fellow rear controls I told you about for your S3 access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of a bucket that's across that's replicated across two regions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: And we have a multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now in the case of an active passive fellow rear control where you're going to designate one bucket as active and the other one as passive.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Therefore whenever we request an object.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We're not going to go this time to the lowest latency we're just going to go to the one that's active.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And of course, if you have multiple active ones you will have the lowest latency.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And these kind of failover controls are valid for active/passive type of setups, but also active/active.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is when you can write to multiple regions at a time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/155_[SOA] S3 Multi-Region Access Points - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create two buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna call this one my-global-app-stephane and then eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to go all the way down and create these buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to create another bucket, I'll call this one my-global-app-stephane-us-east-1 and I will choose another region being us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 6:
- Concepts: Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 7:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So I'll call this one MyGlobalApp, and then we need to add buckets into this access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here I will have app in this and we have these two buckets that I wanted to add.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's add these buckets and you can see I can add more buckets, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you only have one bucket per AWS region as far as it goes right now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this, I need to make sure that the name is lowercase, my-global-app.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: All right, now let's create this access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, it can take less than 30 minutes usually, but up to 24 hours to create, so we'll wait for it to be ready and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So my multi-region access point is now ready.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I can click on it, and we have, its ARN, we have its alias, and we have the buckets, that's underneath.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if I click on these buckets, I can open them in new tabs, and before I do so, let's go into Permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 20:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And then for Replication and failover, this is where it gets interesting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So we have a map of what's happening for your replication and your failover.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And as you can see right now, we don't have any replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So let's create a replication rule.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here we have to choose we want to replicate among all specified buckets, or from one, two different destinations.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The simplest is obviously the first one, which was going to give us high availability and failover capabilities.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is done directly from this console as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we enable the rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll say all objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And finally, let's go ahead and create these replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And you can verify this by also going into your Management, and here you can find your replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I'm not gonna show you how to actually use it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is more of an application specific type of API calls, but at least we saw what these are made of.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security
- Services: S3 Access Points, S3 Multi-Region Access Points
- Key Insights: And just to finish, what you can do is just delete this multi-region access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You're not paying anything for having it, but in case you are using it, you will pay extra charges, based on how many gigabytes go through it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/156_[SAA_DVA_SOA] S3 CORS.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: CORS is Cross-Origin Resource Sharing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is something you need to know at the exam for one question.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, I'm gonna go in depth to how that works and that will make answering that question very easy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the origin is a scheme, a protocol a host, a domain, and a port.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, if you look at https://www.example.com the implied port is 443 for HTTPS, the protocol is HTTPS itself and the domain of course is www.example.com Now, CORS is a web browser based mechanism of security to allow or to deny request to other origins while visiting the main origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at what the same origin means.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's the same origin if we have the same scheme, the same host and the same port.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, we have these two URLs, they're share the same origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But, we can have different origins.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, www.example.com and other.example.com And so, if our web browser is visiting one website and supposed to make a request to another website as part of the request scheme then these requests will not be fulfilled unless the other origin allows for the request using the CORS header.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They're called the Access-Control-Allow-Origin headers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's go through a diagram to understand how that works and how they can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we have a web server and that's your origin and it's https://www.example.com and a web browser.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the second web server, which is the cross-origin, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, www.other.com Now, the web browser is going to do an HTTPS request into the first origin web server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the web browser has a security built in, and first is going to do a pre-flight request to the cross-origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's gonna say, Hey, I wanna get the options for www.other.com And, by the way, my origin where the request is coming from is the https://www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then the web server, if it's considered and configured to use the Cross-Origin Resource Sharing is going to say, Yes, I do allow this origin, the example.com origin, for the get, put and delete methods.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is what we call the CORS headers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And, if the web browser is happy with this CORS headers, then the web browser is going to make a request to the other server to retrieve these files and make these calls.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, how does it apply to Amazon S3?
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, if a client makes a cross-origin request on our S3 buckets, we need to enable the correct CORS headers.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a very popular exam question, and one way to do it very quickly is to allow for a specific origin or to allow for*, that means all origins.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We have a web browser and we have an S3 bucket, which has a static website being enabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's my bucket HTML.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And we are storing our assets, our images in another S3 bucket called my-buckets-assets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, we have enabled a static website for it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, the web browser goes to the first S3 bucket and say, Hey, I want to get the index, that HTML file, for this URL right here which is, of course, the static website URL.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we get back the index.html and within the index.html there is an image and that image lives on another website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we get the images/coffee this is the web browser doing its thing, but this time it's saying, Hey the target host is this other website, but the origin is this first website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And if the S3 bucket is not configured to have the correct CORS headers it's going to refuse the request, or else if it's allowing this request, then it's going to have the correct headers and say, Okay, you can do this request and you can get the image.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 35:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So remember, CORS is a web browser security that allows you to enable images or assets or files being retrieved from one S3 bucket in case the request is originating from another origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture for some hands on to show you exactly how CORS works.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/157_[SAA_DVA_SOA] S3 CORS - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's practice using CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this we first must change the index.html files.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you open it, you will find that this part has been commented out and this part is to demo CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so the way to just make it work is that you first go to line 13 and you remove the first characters before the div.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And after script, you remove as well the dash, dash and arrow.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is going to enable CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And what's going to happen is that my first webpage is now gonna say Hello world I love coffee and show the coffee image.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But after this, we're going to have a script that is going to fetch an extra page, an extra HTML page, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then displays underneath.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this extra HTML page right here is saying this extra page has been successfully loaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go into our buckets and we're going to upload two files.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have the extra-page.html and the index.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to do is that we're going to upload these two files now, because this is successful.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if I go into my Properties and look for my endpoints right here, I can click on this to open in a new tab.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we have I love coffee, Hello world!
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The coffee image.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then this extra page has been successfully loaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that the fetch request worked from within the same origin because, well, both my extra page and my index.html files are on the same bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's demonstrate CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And to do this, I must first create another extra extra bucket and enable it as a website.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's create a bucket and call it demo-other-origin-stephane.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will choose it to be in another region, for example, to demonstrate that there are very different servers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, I will put this one in Canada.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'll scroll down.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will unblock all public access because we will make this public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I will scroll down, create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now I go into the bucket itself.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then under Properties I will scroll down and make sure that we have enabled this as a website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So yes, this is a website and I wanna host a static website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we'll say index.html, even though we don't have one, this will be enough for the index documents.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next, we need to make this bucket public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go into Permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then for the bucket policy, let's edit it, okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And to make it simple, I'm going to just copy the one I had from before.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this one is going to be copied here and pasted, and I will just swap out the buckets ARN, right here under the resource.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is effectively going to make these buckets public as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's save these changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we have an unexpected response because we just removed the first character.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Save the changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Back in here, we are going to now upload, in my other-origin, we're going to upload a file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to upload this extra-page.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Upload it, and we're good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this file should now be a public file on my buckets enabled as a website.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So if I click on this, this Object URL right here, as we can see the extra page has been loaded and the file is public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now what we have is that we have the origin buckets in here and we can remove this extra-page.html because we don't need this one right now because we have placed it in another bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to have to change the index.html file to point instead to the extra page in my other origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first, let's go to this page, and I'm going to refresh this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I get a "404 Not Found" because, well, we cannot find the extra-page.html.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Right now we shows that we have something to fix.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's close this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go to this demo-origin-stephane, other-origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go to the properties, find the public URL, this one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's open this as an STS website, /extra-page.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So perfect, we have this extra page, this puzzle website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll use this entire URL and change our index.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this time to fetch, we're going to fetch not this but the full path to my extra-page.html on another bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is going to trigger across origin resource share request.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now I need to re-upload this index.html file where I need to.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's upload it here on the main buckets, the first one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And let's override it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now my file is uploaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go onto my first webpage right now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it's using the new index.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to first open, under More tools, I'm going to open the web developer tools.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is something also called the Chrome Developer Tools.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to refresh this page to see if we have an error.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, we don't have any error message here, but in my console log debugger, we have something that is written very, very small and may be aware.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: But it says cross-origin request blocked because the policy does not allow this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There's a CORS header called the Access-Control-Allow that is missing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, currently, because my request is going onto this other bucket, but this other bucket is not set up for CORS yet, then this request is failing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the web browser is saying that the cross-origin request has been blocked.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's fix this by adding the CORS setting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go here under my other origin, okay, and you go under Permissions, scroll down, and we have the CORS setting here that we define in JSON.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's edit this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we need to add the correct CORS setting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So thankfully I have them here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 82:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you just copy this block of code and you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here, the AllowedOrigins we need to define are going to be a URL of the first bucket with http without a slash at the end.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So fair lazy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 85:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go to my first web page.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 86:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We copy this entirely, we paste it here, and if there's a slash at the end like right now, just remove it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 87:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to save these CORS settings.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now we're saying to this other origin that's, yes it's okay to make requests from the first origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 89:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we know that it's going to work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, let's refresh this page now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 91:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As we can see now, this extra pet has been successfully loaded, and that's correct.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 92:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we can also have a look at this by going into the networking tab.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 93:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the request that was made on the extra page, and we look at the response headers, we can see right here, again, it's very small, but we can see that there is Access-Control-Allow-Methods GET, Access-Control-Allow-Origin, and this is the origin of my first buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 94:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So these are the headers that allow this cross origin request to be made.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 95:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, I know that what we've seen right now may be a bit advanced, of course, but this CORS settings just come up at the exam at a high level.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 96:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Did you know what it is?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 97:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But I wanted to show you exactly how it worked so that it becomes very easy for you to answer this one question.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 98:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 99:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/158_[SAA_DVA_SOA] S3 Access Logs.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So now, let's talk about S3 Access Logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So for audit purposes, you may want to log all the access made into your S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So that means that any request made to your S3 bucket from any account, whether or not it's authorized or denied, is going to be logged as a file into another S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that data then can be analyzed using data analysis tool such as Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the target logging buckets must also be in the same AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, you're going to request against your S3 buckets, and then you're going to enable the access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's all the requests are being logged into the logging buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, there's a specific format to this logs, and you can find it at this URL to find the log formats.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, with access logs, there is a little bit of warning.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Never ever set your logging bucket to be the same as the bucket you are monitoring, because otherwise, it will create a logging loop and it will be infinite and your bucket will grow in size exponentially.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: While you do put object, but the app bucket and the logging bucket is the same.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So there will be a logging loop and you will log that again and log that again and log that again and you will pay a lot of money.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So do not try this at home.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/159_S3 Access Logs - Permissions.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So here is a quick lecture around the permissions to enable the S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have a source bucket, and the logs are sent into a destination bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: The destination bucket must have a bucket policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it looks like this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: The important thing to note here is that the resource this bucket applies to should be the destination-bucket/*, saying that any path on this bucket should be allowed the operation s3:PutObject as long as the source arn, so that means the source bucket, the source origin of this request is the arn of the source bucket on the left-hand side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If you understand this, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: It's a simple policy, but you need to see it once.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's go ahead and practice S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And for this I'm going to create an S3 access log, stephane-v3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I will go ahead and create that bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that bucket is going to be our logging bucket, and I'm going to keep this open here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in another tab I'm going to take one of my buckets that I've created, and then I'm going to enable the logging.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I just took one bucket, but whatever bucket you want for you really.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will go on Properties and then I will scroll down and look for Server access logging.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we edit it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's Enable it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And as you can see, the Bucket policy will be updated for the target bucket where we want to write data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first we have to specify a destination.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, oops.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go in my bucket and type access.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So stephane access log v3.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is the bucket I want and I will choose this as my destination.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we have a destination region.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have the destination bucket name.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Prefix, this is if I wanted to select an optional prefix in my bucket to, for example, have /logs, but we will not do this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And then the Log object key format.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have this format right here, and there is an example here given to me as the log key example.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Or if I use the second one, I can also specify a different S3 event time or a log file delivery time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, this would change my final key format.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Right now we're going to keep it as default.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's just use the first option, okay, which will be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then click on Save changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And now my S3 Server access logging is enabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now what I can do is I can go to my objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I can click on this one, I can maybe open it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Back into my bucket, I can go in it and I can upload a file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'll add a file and it'll be, for example, my beach.jpeg.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can do a lot of things in your bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And all of this is going to generate activity.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this activity is going to be logged into your logging buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now if I refresh, as you can see, nothing happens yet.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's because it takes a little bit of time for your access logs to go into your logging buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: But what we can do in the meantime is have a look at the Permissions, because when we enabled the server buckets, so when were right here, the Server access logging, when we enabled it, it was saying that the Bucket policy will be updated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's verify that.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: We can scroll down and we have the Bucket policy right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: And indeed, yes, the bucket policy was updated to allow the logging service of Amazon S3 to put objects into this buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this, now what we have to do is go back into our bucket and wait for the first logs to be sent.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it took a couple of hours, but I just refreshed.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in my bucket, I see a lot of files now, objects, and these have been created directly for my access logs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I can click on one of them and I can open it, for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in here I'm able to see, well, what happened?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is quite hard to decipher, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But it gives you the API call, the success rate, who accessed it, what bucket it was, at what time, and a lot of information.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt

Line 1:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So now let's talk about object encryption in Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So you can encrypt objects in S3 buckets using one of the following four methods.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The first one is server-side encryption, SSE, and you have multiple flavors of it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So you have SSE-S3, which is server-side encryption with Amazon S3-managed keys, and that is enabled by default for your buckets and your objects.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 5:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Then we have SSE-KMS, where we encrypt this time with a KMS key to manage the encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we have SSE-C to use customer-provided key, so this time we provide the own encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And don't worry, we'll see all of these in great details in the next slide, so this is just an overview.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So the first one is Amazon S3 for SSE-S3 encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So in this case, the encryption is using a key that's handled, managed and owned by AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You never have access to this key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 15:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now SSE-S3 is enabled by default for new buckets and new objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We have Amazon S3, and we have our user.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: The user, you, you're going to upload a file with the correct header, and then it will be an object under Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Amazon S3 will pair it with the S3-owned key, okay, because we're using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 20:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And then we'll perform encryption by mixing the key and the object, and that will be what will be stored on your S3 buckets.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So that's for the simpler one, SSE-S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then we have SSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So this time, instead of relying on the key that is owned by AWS and the S3 service, you want to manage your own keys yourself using the KMS service, the Key Management Service.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the advantages using KMS is that you have user control over this key, so you can create keys yourself within KMS, and you can edit the key usage using CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So anytime someone uses a key in KMS, this is going to be logged in a service that logs everything that happens in AWS called CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS
- Key Insights: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So anything SSE, of course, is server side.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: Well, again, we upload the object, this time with a different header, and in the header we actually specify the KMS key we want to use.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: Then the object is appearing in Amazon S3, and this time the KMS key that's going to be used is coming out of the AWS KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 31:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So these two things together are going to be blended and then you're gonna get encryption, and that's the file is going to end up in the S3 buckets.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 32:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is another level of security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 35:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Each of these API calls is going to count towards the KMS quotas of API calls per second, so based on the region, you have between 5,000 and 30,000 requests per second, although they can be increased using the Service Quotas Console.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Next we have the SSE-C type of encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this time the keys are managed outside of AWS, but it still server-side encryption because we send the key to AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: But Amazon S3 will never store the encryption key you provide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: After they're used, they're being discarded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The user is going to upload a file as well as the key, but the user manages the key outside of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Then, Amazon S3 will use the client's provided key and the object to perform some encryption and then put the file as encrypted into an S3 bucket.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 48:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Finally, we have the client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is easier to implement if we leverage some client library such as the Client-Side Encryption Library.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 51:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And also, you can retrieve the data from Amazon S3, and then the decryption of the data happens on the client outside of Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 52:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Therefore the clients fully manages the keys and the encryption cycle.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have a file and we have a client's key that's outside of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: The client itself is going to provide and perform the encryption, so now we have an encrypted file, and that file as is can be sent into Amazon S3 for upload.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 56:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we've seen all the levels of encryption of objects, but now let's talk about encryption in transit.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Certificate and TLS Security, Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal; Storage access-hardening signal.

Line 58:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 59:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is not something to worry about in real life because while most clients would use the HTTPS endpoint by default.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Now how would you go about forcing encryption in transits?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: For this, we could use a bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So you attach a bucket policy to your S3 bucket, and you attach this statement which is saying that you deny any GetObject operation if the condition is "aws:SecureTransport": "false".
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 64:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 65:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Okay, so that's it for encryption, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Cryptographic control signal.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/193_S3 Encryption Summary.txt

Line 1:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So I know you've just seen S3 encryption in detail.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I'm just going to give you a summary with one bit of information you need to know.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So we've seen SSE-S3 is to encrypt S3 objects using keys handled and managed by AWS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: We've seen SSE-KMS where we use KMS to manage encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the benefits that the key usage appears in CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But the thing I haven't told you in the previous lecture that I'm telling you right now is that the objects, even if you make them public, they can never be read by anonymous users because they do not have access to the underlying KMS keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Whereas an objects encrypted with SSE-S3 made public can be accessed by anonymous user.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 8:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So also, when you do s3:PutObject, you need to make sure you have the kms:GenerateDataKey permission because well, you need to generate a data key to encrypt a large file in Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 9:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: When you use SSE-C, this is when you want to manage your own encryption keys for server-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we have the option of client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And finally, if you use Glacier, all data is going to be encrypted with AES-256 and the key will be under AWS control.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this summary lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/194_[SAA_DVA_SOA] S3 Default Encryption.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So just a short lecture on default encryption versus bucket policies.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So by default now all buckets are having a default encryption of SSE-S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's applied automatically to new objects toward the new buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: But you can change this to be a different default encryption, for example, SSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Nonetheless, you can also force encryption by using a bucket policy to refuse any API call to put an S3 object without the correct encryption headers.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So for example, SSC-KMS or SSE-C.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS
- Key Insights: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Or, hey, if you are uploading this but there is no customer side algorithm, so no SSE-C, then deny this object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is just an example, but at least you see that a bucket policy can also force a way to have encryption in your buckets.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And by the way, bucket policies are always going to be evaluated before your default encryption settings.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 11:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/195_S3 Bucket Policies Examples.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, I'm just going to show you a few S3 Bucket Policies that can be helpful for the exam.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You may have seen them already, but it's good to see them one more time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So, the first one is to force HTTPS going into Amazon S3 to get in-flight encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 4:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: You would have a Deny statement in your bucket policy for all actions if the condition, right here, says that the SecureTransport is false.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's a classic one for the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And the second one is, how do you force the specific KMS key on the S3 bucket for encryption?
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 7:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Well, again, you would have a Deny statement and you're saying, "Hey, I want to make sure that this header right here is equal to aws:kms." And then if you want to have a specific KMS key ID, you can have the exact same thing, but this time, the x-amz-server-side-encryption-aws-kms-key-id condition should be equal to the ARN of your KMS key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/196_[DVA] S3 Bucket Key.txt

Line 1:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So now let's talk about a cool new settings for your S3 Buckets using it with SSE-KMS encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is a new setting which will allow you to decrease and wait for it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: The number of API calls made to KMS from Amazon S3 when you use the SSE-KMS type of encryption by 99%.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 4:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: Which will reduce the cost of your overall KMS encryption used by Amazon S3 by also 99%.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And how does this work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, this leverages data key and more importantly, this thing called an S3 bucket key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: Well, a customer master key and KMS is going to be used to generate a data key for your Amazon S3 Bucket once in a while and this key will rotates.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 9:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: But, once in a while and this key's called an Amazon S3 Bucket key.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 10:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And this key is what's going to be used to encrypt objects in your Amazon S3 Buckets with KMS encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So this extra bucket key is going to generate a lot of data keys using envelope encryption which is going to go into encrypting your S3 Buckets.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 12:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: But by adding an S3 Bucket key and not using KMS directly to generate these data keys, we are reducing the number of API calls we are making into KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore, we are reducing our costs by a lot.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And so this is an optimization of using SSE-KMS to decrease the number of KMS API calls in order, for example, not to have a high bill or not to go over the limits of encryption within your Amazon S3 Buckets but without compromising on security.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The result of that is that you will see less CloudTrail events regarding KMS in CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And also, you will have a way way lower costs as I said in KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: A very good setting to know, especially if you use SSE-KMS at Scale were very high for both.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now let me show you where you can find that setting in the S3 Console.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 20:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's go into the S3 Console and I'm going to create a new buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So I'm going to create a buckets and I'll call it, (keyboard typing) Demo S3 Buckets key.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we'll block, public settings.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll disable, versioning.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: We'll enable, encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And it's going to be SSE-KMS, and it's going to be managed key. (mouse clicking) And we are going to enable, bucket keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So by default, it is enabled now, but we could disable it if we wanted to get every single upload to talk to KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But, if you want to enable it we'll just click on enable.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And this will use the bucket key to decrease the cost and the number of calls made to KMS without losing any security.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So fairly easy, then we create the buckets and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And we're now using the bucket key for encryption into our S3 Buckets.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/197_Large File Upload to S3 with KMS Key.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here is a tricky use case for an exam question, and that is quite unintuitive but makes sense when I explain it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So how do you upload a large file to Amazon S3 that is KMS encrypted?
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when you upload a large file, of course you must use a multi-part upload.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then what permissions do we need for that multi-part upload?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Well, number one, we want to generate a data key, because while we want to make sure we can encrypt the file and encrypt each specific part, but then we also need the KMS decrypt permission to be able to decrypt these parts before they can be reassembled, and then re-encrypt it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that's the trick.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: We're missing the decrypt option.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: With a user with the proper permissions, there is a large file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It does get split up into multiple parts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Each part is going to be encrypted with its own data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Each key is going to be... each file encrypted is going to be uploaded into Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 13:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Amazon S3 will use the decrypt operation to decrypt each file into plain text and then recombine them into an S3 object.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 14:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And this S3 object is going to be again encrypted into the final object.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Funky, right?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: But what you have to remember is that you need two kind of permissions, including decrypt, for doing a large file upload to Amazon S3 with KMS encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/198_S3 Batch Encryption.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, so another short lecture on how to update many objects at a time in an S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So first, we use S3 Batch, and this will allow us to perform bulk operations on existing S3 objects in a single request.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for example, what we want to do is to encrypt unencrypted objects.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: To get the list of all the objects we must encrypt, we must first get the list of all the objects and their associated metadata.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 5:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And for this we use S3 Inventory and there is a field called encryption status in the optional fields we can use.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we want to filter that list and only return on the encrypted objects.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for this, we can use Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then finally, while these fit together, we'll be able to encrypt everything.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So to summarize, we have S3 Inventory giving us an object list that we filter with Athena, and then we send that object list into our S3 Batch service to do encryption of all the objects and get them processed.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 10:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So now let's talk about S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you want to lock your Glacier Vault to adapt a WORM model.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means Write Once Read Many.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 5:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: So for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: That means that once you've set a Vault Lock Policy and you locked it, it can no longer be changed or deleted by anyone which is very helpful for compliance and data retention.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: S3 Object Lock
- Key Insights: So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful for anything legal such as compliance or data retention.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's for the Glacier option.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it's quite simple to understand.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, there is the same option or something similar at least for the S3 buckets, but it's a bit more complicated.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So for enabling S3 Object Lock, you must first enable versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, it allows you to adapt a WORM model, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: But this time it's not a lock policy at the whole S3 bucket level.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: It is a lock you can adapt for each and every object within your bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: S3 Object Lock
- Key Insights: So you can do an object lock on the single object.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: And the idea is that thanks to an S3 object lock, you want to block a specific object version to be deleted for a specified amount of time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have two retention modes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the first one is the compliance mode.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: The compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that once you are in your compliance mode, no one can change anything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's when you wanna be super compliance.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But if you want to be a bit more flexibility you have the Governance Retention mode.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So in this case, most user cannot override or delete an object version or alter its lock settings.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: But some users, the admin users, have special permissions and that's given through IAM and they can change the retention or delete an object directly.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So compliance is very strict as a retention mode.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Whereas government's is a bit more lenient and some users have had admin powers and can change a few things.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in both these modes you have to set a retention period.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that period of time can be extended, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, there is one more thing you can do with the S3 object log, it's to pull the legal hold on an object.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is different from what we saw.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So legal hold protects any object on your S3 bucket indefinitely and that's independent from the retention period.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 36:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So once you place a legal hold on an object think of like, oh, this object is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We need to use it in a trial.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's place a legal hold on it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Then the object is protected forever regardless of what retention mode and retention period you've set on it from before.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And then someone who has the IAM permissions S3 PutObjectLegalHold has the option to take any objects and put legal holds on them or to remove them.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 41:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So you need to know the differences of the S3 object lock going at the exam.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/200_Glacier Vault Lock - Deep Dive.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So let's do a deep dive on Amazon S3 Glacier vault policies and Vault Lock.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: So each vault will have one vault access policy and one Vault Lock policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So they're difference and both these policies are written in JSON.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So a vault access policy is like a bucket policy, like an S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: This is used to restrict user and account permissions, whereas a Vault Lock policy is a policy you lock for regulatory and compliance requirements when you set up a lock.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: This policy is immutable.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means it can never be changed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: That's why it's called a lock policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So for example, you can use this to forbid deleting an archive if less than one year old or to implement write once read many policy, WORM, policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here is our vault.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: We have a Vault Lock policy and so the users can or cannot do things based on the Vault Lock policy but we can also combine it with a vault access policy for more permissions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And this vault access policy can change over time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: So now let's talk about the Vault Lock process.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in case you want to lock our vault.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: So first, we attach a Vault Lock policy and then the vault goes into in-progress regarding its lock.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: During this time, we're going to get back a lock ID and this lock ID has 24 hours before it expired.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: And so that's 24 hours for us to test the Vault Lock policy and make sure it is appropriate.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You need to remember this process going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/201_[SOA] Glacier Vault Lock - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a play with vault locks by going into the Glacier Console.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And, in there, I'm able to go ahead and create a vault.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see, Glacier is used for creating vaults, setting data ritual policies, and sending event notifications.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So lets create a vault, and I'm going to create in my region close to me, I'll collect my demo vault, click on next step, and here, we can set up notifications in case some jobs complete.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, basically, when a retrieval job is completed, we can receive an SMS notification.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will not enable it right now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll set it later.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then, review, everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I'll submit it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here is my first Glacier vault.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, basically I have just an, it's like a bucket, but it's called a vault in Glacier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so, if I click on this vault, I can get some information.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: I can get some information around the details of this vault, the notification that I set if I wanted to get information, the permissions, so we can set a vault access policy document, I just mentioned, to basically say who can do what on this vault.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Just like a S3 bucket policy, really.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: And then a vault lock.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: And the vault lock basically allows you to create, edit, and view details, and to create your lock policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So, this lock policy gives you compliance.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So if you create a lock policy, and we can click here to see how to write a lock policy, we could set a specific kind of lock policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, this one is to deny delete permissions for archives less that 365 days old.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Or the second one would be to deny permission based on the tag.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we have lots of different ways to do locks, but the idea is that using locks, you're able to get strong requirements on how your data is going to be in Glacier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The thing to know is that once you set a lock, you cannot change it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: So, I will initiate vault lock, which says that I need to match my ARN, obviously.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, lets go to Glacier and find my ARN.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, here's my lock and here's my ARN.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to copy this right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So once I set my vault policy lock, then it will not be able to be changed ever.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: So, I will click on initiate vault lock, and here, I get a vault I.D.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, I need to absolutely copy this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: You cannot lose this, and it's saying we have 24 hours to validate this policy and complete the lock process.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: After which, the lock I.D. will expire and your in progress policy will be deleted.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, now I have 24 hours, basically, to complete the lock process.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: So, lets close this, and so here I have the option to either delete my vault lock, or I have 23 hours to complete it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: So, I want to complete it, so I click on complete vault lock, and I paste the lock I.D.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I just got from before, and if you didn't copy it, then you have to redo everything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: So, delete the vault lock and recreate it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: Then, I acknowledge the fact that my vault lock, once it's configured, I will not be able to change it ever.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's irreversible.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: That's why it's so strong from a regulatory perspective, and I click on complete vault lock, and here we go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: My vault lock policy is now locked.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so, we'll never ever ever be able to delete an archive that is less than 365 days, ever.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I cannot change this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: S3 Object Lock
- Key Insights: And so this is why vault lock policies are so important, and you need to know them coming into the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The last thing to know is that through this UI, you're not able to upload files that relate to Glacier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You will have to use the SDK, or the CLI, or something like this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: I won't show you, but the idea is that you don't get a full UI like you do for S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Here we have to use the API if wanting to upload file into this demo vault.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for Glacier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Just remember how we created a vault, how we locked it, using some kind of lock policy, and how you can set another lock policy here for access to this vault, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about how we can move objects between different storage classes so you can transition them, and this is a diagram of how it's possible.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so all the types of permutations are shown in this graph.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as a matter of fact, if you know that your objects are going to be infrequently accessed, then move them to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you know that you're going to archive objects, move them into the Glacier of tiers or the Deep Archive tier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, moving these objects can be done manually, of course, but we can automate this using lifecycle rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So these lifecycle rules are made of multiple things.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: The first thing is a transition action to configure the object to transition to another storage class.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can also set up expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So configure objects to be deleted, to be expired after some time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, your access log files, you want to delete them after 365 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The rules can also be specified for a certain prefix.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So they can apply to entire buckets or to a specific path within your buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And you can also specify it for specific object tags.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you want to only do a rule for the department finance, you can.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here's some scenarios.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But these thumbnails, they can be easily recreated from the original photo and they only need to be kept for 60 days.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But the source images, they should be able to be immediately retrieved for these 60 days and afterwards the user can wait up to six hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how would you design this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is what an exam question will ask you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the thumbnails can be on One-Zone IA because well, they're infrequently accessed, and they can be recreated easily, and you can have a lifecycle configuration to expire them or delete them after 60 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: After this time, for up to 365 days, deleted objects should be recoverable within 48 hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: For this, we can enable S3 versioning in order to keep and have object versions so that the deleted objects are in fact hidden by a delete marker and then can be recovered.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then you will create a rule to transition the non-current versions of the objects to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means the versions that are not the top level versions, and then transition afterwards these non-current versions to Glacier Deep Archive for archival purposes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Lastly, how do we determine what's the optimal number of days to transition an object from one class to another?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, you can do this thanks to Amazon S3 Analytics.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's going to give you recommendations for Standard and for Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It does not work with One-Zone IA or Glacier.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And so the S3 buckets will have S3 Analytics run on top of it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this will create a CSV report that will give you some recommendations and some statistics.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The report is going to be updated daily and then it can take between 24 to 48 hours to start seeing data analysis coming out of it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a good first step, this CSV report to put together lifecycle rules that makes sense or to improve them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create a lifecycle rule for our buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go under management and create a lifecycle rule.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This one is going to be called demo rule, and we apply it to all the objects in the buckets and I acknowledge it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we can see we have five different rule actions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We can move current versions of objects between storage classes, non-current versions of objects between classes, expired current versions of objects, permanently delete non-current versions of objects, and finally delete expired objects, delete markers or incomplete multi-part upload.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So five different use cases.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's have a look at them one by one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So to move current version objects between storage classes that means that you have a version bucket, and the current version is the version that is the most recent the one displayed to the user.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, we can transition to standard IA after 30 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we can go into intelligent tier after 60 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we can go into say glacier after 90 days for instant retrieval.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then after 180 days flexible retrieval and then maybe deep archive after 365 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can have a transition as much as you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we need to take this back to acknowledge what we do.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We can also, for example move non-current versions so faster.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So this one, we want to move an object that is non-current therefore an object that has been overridden quote unquote by near one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we can say, okay, this one we wanna move it into glacier flexible because we know that after 90 days we won't need it for retrieval.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect and we're good to go but we could add more transitions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for example we want to expire current versions of objects after, and at the bottom you can set it up after 700 days.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And same for the non-current options.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We want to permanently delete them after 700 days as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is something we can do and now we can have a look at all these transitions and expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is nice because it shows you a timeline of what is going to happen to your current version and your non-current versions of your objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if we're happy with all of this, we can just go ahead and create this role, and this role will act in the background to do what it's supposed to be doing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now you know how to automate moving objects in AWS free between different source classes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/204_[CCP_SAA_DVA_SOA] S3 Replication.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: Now let's talk about Amazon S3 Replication, and there are two flavors of it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So CRR is for cross-region replication and SRR is for same-region replication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: The idea is that we have an S3 Bucket in one region and a target S3 Bucket in another region, and we want to set up asynchronous replication between these two buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, to do so, we first must enable Versioning in the source and the destination buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And if we do CRR, so cross-region replication, the two regions must be different.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If we do SRR, the two regions are the same.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, it's possible for you to have these buckets in different AWS accounts and copying happens asynchronously.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So the replication mechanism happens behind the scenes, in the background.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 10:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So the use cases for replication are manyfold.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: The first one is that if you use cross-region replication, this can be helpful for compliance or for providing lower latency access to your data because it's in another region, or to replicate data across accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: Okay, so that's it about replication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's practice replication on Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For this, we're going to create a new bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: I'll call it s3-stephane-bucket-origin-v2.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will set it in one region that I want, for example, eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This will be my origin bucket and then data will be replicated from this bucket to another bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I will create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then open this bucket in a new tab.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will create a second bucket and this will be my target bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So I will do s3-stephane-bucket-replica-v2.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 11:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down and let's again enable bucket versioning on the target bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now we have our primary bucket and our secondary bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What I'm going to do is that in the origin bucket, I'm going to upload a file, so I will add a file of my beach, for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is done and we can close this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So now this has one file but, of course, this does not get replicated yet because we haven't set up replication yet.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So on the origin bucket, what I need to do is to go under Management, scroll down and there are replication rules.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Currently zero.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So let's go ahead and create our first replication rule.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'll call this one DemoReplicationRule.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We'll set it as enabled.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For the source bucket, we'll leave it as is and in terms of rule scope, we'll apply it to all objects in the bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for the destination, we can specify a bucket in this account or another account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll choose one in this account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the bucket name is my target bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I need to actually enter the name.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll take this bucket right here, copy and paste it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, and as you can see, the destination region was identified as being us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So therefore, this is a Cross-Region Replication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now for IAM role, we need to actually go and create a new role for this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here's the option.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at some settings but for now it doesn't really matter for us.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's just save this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we get a prompt right here, which says do you want to replicate existing objects?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for newer uploads.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So if you wanted to replicate the previous objects from the source to the destination bucket, you could use something called a Batch Operation, an S3 Batch Operation to do so and you would need to say yes, replicate existing objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 43:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: But this is separate from the replication feature itself.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Therefore, I'm going to say no, do not replicate existing objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So we have this Management with a replication rule that is ready.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now what I'm going to do is check in my replica bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Of course, if I refresh now, we see that the objects haven't been replicated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do is now upload a new file, for example, upload the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Upload it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here is the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's show the versions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is coffee.jpg and the version is GBk.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now if we go in my target bucket, and refresh this, it's gonna take maybe five seconds.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And this took about 10 seconds on the first replication but we can see that my coffee.jpg has been added into my replica bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if I show the versions, we can see that the version ID of my coffee.jpg is the exact same of the origin bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the version's IDs are replicated, which is great.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if I wanted to import the beach.jpg, I would need to upload a new version of that file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's upload beach.jpg again.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now this has been uploaded, we can look at the versions, so there is a new version right here of DK2 of my beach.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now if I go here and refresh, now let's look at one more setting that is important for your exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 65:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So if I go back into Management, and take this and edit this role, we can scroll down and have a look at one setting called the delete marker replication.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So by default, delete markers are not replicated but there's a feature to do so.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 67:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So if you enable delete marker replication, then they will be replicated from one bucket to another.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's save this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So my replication rules have been saved.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so that means that if I go in this bucket, and I choose to delete this file, for example, I delete my coffee.jpg file, let's delete it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This will actually create a delete marker because my bucket is versioned.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now my coffee.jpg is deleted.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And let's have a look in here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh and we need to wait little bit.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now you can see that the delete marker has been replicated to my replica bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if I don't show version, I don't see my coffee.jpg file but of course, if I show versions, I will see it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is true here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And of course, this is true here as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the delete markers are deleted but if you decide to delete a specific version of a file, for example, I delete this one, which is I delete a specific version ID.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is called the permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 82:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And if I permanently delete one object in my origin bucket, it will not be replicated to my replica bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 85:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/206_[SAA_DVA_SOA] S3 Replication - Notes.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Hey, so just a few notes about Amazon S3 Replications.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: And if you want to replicate existing objects, then you need to use the S3 Batch Replication feature.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So this will replicate the existing objects and the objects that have failed Replication, and in case you have delete operations, you can replicate these delete markers from the source bucket to the target bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's an optional setting, but if you have a deletion with the version ID, they are not replicated, so if it's a permanent deletion, because you want to avoid malicious deletes happening from one bucket to another.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Finally, there's no chaining of replications.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So that means that if bucket one has replication to bucket two, and then, bucket two has replication to bucket three, then the objects of bucket one are not replicated into the bucket three, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/150_S3 Encryption.txt

Line 1:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So now let's talk about object encryption in Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So you can encrypt objects in S3 buckets using one of the following four methods.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The first one is server-side encryption, SSE, and you have multiple flavors of it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So you have SSE-S3, which is server-side encryption with Amazon S3-managed keys, and that is enabled by default for your buckets and your objects.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 5:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Then we have SSE-KMS, where we encrypt this time with a KMS key to manage the encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we have SSE-C to use customer-provided key, so this time we provide the own encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And don't worry, we'll see all of these in great details in the next slide, so this is just an overview.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So the first one is Amazon S3 for SSE-S3 encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So in this case, the encryption is using a key that's handled, managed and owned by AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You never have access to this key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 15:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now SSE-S3 is enabled by default for new buckets and new objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We have Amazon S3, and we have our user.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: The user, you, you're going to upload a file with the correct header, and then it will be an object under Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Amazon S3 will pair it with the S3-owned key, okay, because we're using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 20:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And then we'll perform encryption by mixing the key and the object, and that will be what will be stored on your S3 buckets.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So that's for the simpler one, SSE-S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then we have SSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So this time, instead of relying on the key that is owned by AWS and the S3 service, you want to manage your own keys yourself using the KMS service, the Key Management Service.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the advantages using KMS is that you have user control over this key, so you can create keys yourself within KMS, and you can edit the key usage using CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So anytime someone uses a key in KMS, this is going to be logged in a service that logs everything that happens in AWS called CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS
- Key Insights: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So anything SSE, of course, is server side.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: Well, again, we upload the object, this time with a different header, and in the header we actually specify the KMS key we want to use.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: Then the object is appearing in Amazon S3, and this time the KMS key that's going to be used is coming out of the AWS KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 31:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So these two things together are going to be blended and then you're gonna get encryption, and that's the file is going to end up in the S3 buckets.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 32:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is another level of security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 35:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Each of these API calls is going to count towards the KMS quotas of API calls per second, so based on the region, you have between 5,000 and 30,000 requests per second, although they can be increased using the Service Quotas Console.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Next we have the SSE-C type of encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this time the keys are managed outside of AWS, but it still server-side encryption because we send the key to AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: But Amazon S3 will never store the encryption key you provide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: After they're used, they're being discarded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The user is going to upload a file as well as the key, but the user manages the key outside of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Then, Amazon S3 will use the client's provided key and the object to perform some encryption and then put the file as encrypted into an S3 bucket.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 48:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Finally, we have the client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is easier to implement if we leverage some client library such as the Client-Side Encryption Library.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 51:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And also, you can retrieve the data from Amazon S3, and then the decryption of the data happens on the client outside of Amazon S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 52:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Therefore the clients fully manages the keys and the encryption cycle.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have a file and we have a client's key that's outside of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: The client itself is going to provide and perform the encryption, so now we have an encrypted file, and that file as is can be sent into Amazon S3 for upload.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 56:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we've seen all the levels of encryption of objects, but now let's talk about encryption in transit.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Certificate and TLS Security, Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal; Storage access-hardening signal.

Line 58:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 59:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is not something to worry about in real life because while most clients would use the HTTPS endpoint by default.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Now how would you go about forcing encryption in transits?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: For this, we could use a bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: So you attach a bucket policy to your S3 bucket, and you attach this statement which is saying that you deny any GetObject operation if the condition is "aws:SecureTransport": "false".
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 64:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 65:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Okay, so that's it for encryption, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Cryptographic control signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/152_S3 Encryption - Hands On.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So let's practice encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And for this I'm going to create a bucket called demo-encryption-stephane-v2.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we scroll down, we're going to leave this on, leave this on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We're going to enable bucket versioning.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 6:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So I will go over SSE-S3 right now and we'll have a look at SSE-KMS and DSSE-KMS later on.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's click on Create a bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And now we have created a bucket that has default encryption turn on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So let's verify this by actually uploading an object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to add a file and we'll add our coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to just click on Upload.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And as you can see now I can click on this file and scroll down, look for the server side encryption settings.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: And indeed the file was encrypted with server side encryption with Amazon S3 managed keys, so SSE-S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 14:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: We can also edit the encryption mechanism for a file.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I could just click on Edit.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And as you can see, if we do edit the server side encryption, then this will create a new version of the object with updated setting.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, this is why I have enabled versioning for my bucket, is to show you that a new version of the file will be created.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So let's change the encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And for this, we're going to override the bucket settings for default encryption for this one object.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And so we have a choice to use either SSE-KMS or DSSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So DSSE-KMS, I won't spend a lot of time on this.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: It's just two level of encryptions on KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So just a stronger KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: We're just going to use KMS right now.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It is simpler and it is not going to cost us any money.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we're going to use SSE-KMS as we learned.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then we have to specify a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we can either enter a KMS key ARN, or we can choose from your own KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So if we choose from the KMS keys right now, you should have only one key available the AWS/S3 key, and it's called the default KMS key for the S3 service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you click on it, we can use this key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that's not going to cost us any money because this is the default key for the service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: If you created your own KMS key, then it would be available in this list.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But creating your own KMS key will cost you some money every month.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So for this purpose, we're just going to use the default AWS/S3 KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's save the changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We close this, and now if we go under Versions, as we can see, we have two versions of our file right now available.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And so the current version, if we scroll down and go under service side encryption, as we can see it is indeed encrypted with SSE-KMS with this encryption key, which corresponds to the default AWS/S3 KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is really good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next we go under this part.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we can do the same process by uploading a file and then we're going to add a file, for example, beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And under Properties, we're going to find server side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And here we can specify an encryption key to either use the default encryption mechanism or to override it with SSE-S3, SSE-KMS or DSSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And finally, let's have a look at the default encryption properties.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So let's scroll down and we're going to find default encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's edit this, and here we have the option.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So we can enable SSE-S3, SSE-KMS as the default encryption, or DSSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So in case we do SSE-KMS, we have the bucket key option available to us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is to reduce the cost by doing less API calls to AWS KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so this is enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: If we just use SSE-S3, then this setting doesn't count.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 52:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we've seen that we can change the default encryption here.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you may ask me, well, SSE-C is missing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, indeed it is missing because SSE-C you can only do from the CLI, not from the console.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that you cannot enable SSE-C right here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So therefore, the only options you can deal with in the console are SSE-S3, SSE-KMS and DSSE-KMS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Storage access-hardening signal.

Line 58:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that's it, we've seen all the encryption options in AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/153_S3 Default Encryption.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So just a short lecture on default encryption versus bucket policies.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So by default now all buckets are having a default encryption of SSE-S3.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's applied automatically to new objects toward the new buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: But you can change this to be a different default encryption, for example, SSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: Nonetheless, you can also force encryption by using a bucket policy to refuse any API call to put an S3 object without the correct encryption headers.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So for example, SSC-KMS or SSE-C.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS
- Key Insights: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Or, hey, if you are uploading this but there is no customer side algorithm, so no SSE-C, then deny this object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is just an example, but at least you see that a bucket policy can also force a way to have encryption in your buckets.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And by the way, bucket policies are always going to be evaluated before your default encryption settings.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 11:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: So that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/154_S3 CORS.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: CORS is Cross-Origin Resource Sharing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is something you need to know at the exam for one question.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, I'm gonna go in depth to how that works and that will make answering that question very easy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the origin is a scheme, a protocol a host, a domain, and a port.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, if you look at https://www.example.com the implied port is 443 for HTTPS, the protocol is HTTPS itself and the domain of course is www.example.com Now, CORS is a web browser based mechanism of security to allow or to deny request to other origins while visiting the main origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at what the same origin means.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's the same origin if we have the same scheme, the same host and the same port.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, we have these two URLs, they're share the same origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But, we can have different origins.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, www.example.com and other.example.com And so, if our web browser is visiting one website and supposed to make a request to another website as part of the request scheme then these requests will not be fulfilled unless the other origin allows for the request using the CORS header.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They're called the Access-Control-Allow-Origin headers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's go through a diagram to understand how that works and how they can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we have a web server and that's your origin and it's https://www.example.com and a web browser.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the second web server, which is the cross-origin, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, www.other.com Now, the web browser is going to do an HTTPS request into the first origin web server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the web browser has a security built in, and first is going to do a pre-flight request to the cross-origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's gonna say, Hey, I wanna get the options for www.other.com And, by the way, my origin where the request is coming from is the https://www.example.com.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then the web server, if it's considered and configured to use the Cross-Origin Resource Sharing is going to say, Yes, I do allow this origin, the example.com origin, for the get, put and delete methods.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is what we call the CORS headers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And, if the web browser is happy with this CORS headers, then the web browser is going to make a request to the other server to retrieve these files and make these calls.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, how does it apply to Amazon S3?
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, if a client makes a cross-origin request on our S3 buckets, we need to enable the correct CORS headers.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a very popular exam question, and one way to do it very quickly is to allow for a specific origin or to allow for*, that means all origins.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: We have a web browser and we have an S3 bucket, which has a static website being enabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's my bucket HTML.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And we are storing our assets, our images in another S3 bucket called my-buckets-assets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, we have enabled a static website for it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, the web browser goes to the first S3 bucket and say, Hey, I want to get the index, that HTML file, for this URL right here which is, of course, the static website URL.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we get back the index.html and within the index.html there is an image and that image lives on another website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we get the images/coffee this is the web browser doing its thing, but this time it's saying, Hey the target host is this other website, but the origin is this first website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And if the S3 bucket is not configured to have the correct CORS headers it's going to refuse the request, or else if it's allowing this request, then it's going to have the correct headers and say, Okay, you can do this request and you can get the image.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 35:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So remember, CORS is a web browser security that allows you to enable images or assets or files being retrieved from one S3 bucket in case the request is originating from another origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture for some hands on to show you exactly how CORS works.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/155_S3 CORS Hands On.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's practice using CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this we first must change the index.html files.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you open it, you will find that this part has been commented out and this part is to demo CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so the way to just make it work is that you first go to line 13 and you remove the first characters before the div.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And after script, you remove as well the dash, dash and arrow.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is going to enable CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And what's going to happen is that my first webpage is now gonna say Hello world I love coffee and show the coffee image.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But after this, we're going to have a script that is going to fetch an extra page, an extra HTML page, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then displays underneath.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this extra HTML page right here is saying this extra page has been successfully loaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go into our buckets and we're going to upload two files.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have the extra-page.html and the index.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to do is that we're going to upload these two files now, because this is successful.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if I go into my Properties and look for my endpoints right here, I can click on this to open in a new tab.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we have I love coffee, Hello world!
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The coffee image.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then this extra page has been successfully loaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that the fetch request worked from within the same origin because, well, both my extra page and my index.html files are on the same bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's demonstrate CORS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And to do this, I must first create another extra extra bucket and enable it as a website.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's create a bucket and call it demo-other-origin-stephane.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will choose it to be in another region, for example, to demonstrate that there are very different servers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, I will put this one in Canada.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'll scroll down.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I will unblock all public access because we will make this public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I will scroll down, create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now I go into the bucket itself.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then under Properties I will scroll down and make sure that we have enabled this as a website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So yes, this is a website and I wanna host a static website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we'll say index.html, even though we don't have one, this will be enough for the index documents.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next, we need to make this bucket public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go into Permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then for the bucket policy, let's edit it, okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And to make it simple, I'm going to just copy the one I had from before.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this one is going to be copied here and pasted, and I will just swap out the buckets ARN, right here under the resource.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is effectively going to make these buckets public as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's save these changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we have an unexpected response because we just removed the first character.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Save the changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Back in here, we are going to now upload, in my other-origin, we're going to upload a file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to upload this extra-page.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Upload it, and we're good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this file should now be a public file on my buckets enabled as a website.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So if I click on this, this Object URL right here, as we can see the extra page has been loaded and the file is public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now what we have is that we have the origin buckets in here and we can remove this extra-page.html because we don't need this one right now because we have placed it in another bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to have to change the index.html file to point instead to the extra page in my other origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first, let's go to this page, and I'm going to refresh this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I get a "404 Not Found" because, well, we cannot find the extra-page.html.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Right now we shows that we have something to fix.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's close this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go to this demo-origin-stephane, other-origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go to the properties, find the public URL, this one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's open this as an STS website, /extra-page.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So perfect, we have this extra page, this puzzle website.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll use this entire URL and change our index.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this time to fetch, we're going to fetch not this but the full path to my extra-page.html on another bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is going to trigger across origin resource share request.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now I need to re-upload this index.html file where I need to.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's upload it here on the main buckets, the first one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And let's override it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now my file is uploaded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go onto my first webpage right now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it's using the new index.html.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to first open, under More tools, I'm going to open the web developer tools.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is something also called the Chrome Developer Tools.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to refresh this page to see if we have an error.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, we don't have any error message here, but in my console log debugger, we have something that is written very, very small and may be aware.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: But it says cross-origin request blocked because the policy does not allow this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There's a CORS header called the Access-Control-Allow that is missing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, currently, because my request is going onto this other bucket, but this other bucket is not set up for CORS yet, then this request is failing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the web browser is saying that the cross-origin request has been blocked.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's fix this by adding the CORS setting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go here under my other origin, okay, and you go under Permissions, scroll down, and we have the CORS setting here that we define in JSON.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's edit this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we need to add the correct CORS setting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So thankfully I have them here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 82:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you just copy this block of code and you paste it here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here, the AllowedOrigins we need to define are going to be a URL of the first bucket with http without a slash at the end.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So fair lazy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 85:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go to my first web page.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 86:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We copy this entirely, we paste it here, and if there's a slash at the end like right now, just remove it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 87:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to save these CORS settings.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now we're saying to this other origin that's, yes it's okay to make requests from the first origin.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 89:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we know that it's going to work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, let's refresh this page now.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 91:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As we can see now, this extra pet has been successfully loaded, and that's correct.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 92:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we can also have a look at this by going into the networking tab.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 93:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the request that was made on the extra page, and we look at the response headers, we can see right here, again, it's very small, but we can see that there is Access-Control-Allow-Methods GET, Access-Control-Allow-Origin, and this is the origin of my first buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 94:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So these are the headers that allow this cross origin request to be made.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 95:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, I know that what we've seen right now may be a bit advanced, of course, but this CORS settings just come up at the exam at a high level.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 96:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Did you know what it is?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 97:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But I wanted to show you exactly how it worked so that it becomes very easy for you to answer this one question.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 98:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 99:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/156_S3 MFA Delete.txt

Line 1:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So now let's talk about a security feature called MFA Delete.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: MFA stands for multi-factor authentication, and this is a way to force users to generate a code on a device.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It could be, for example, a mobile phone with a Google Authenticator application or whatever, or another one for example, or a hardware such as an MFA hardware device.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And this is going to give you a code, and that code must be inserted into Amazon S3 before doing important operations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when is MFA going to be required?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Well, it's going to be required when you want to permanently delete an object version.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is definitely a protection against permanent deletions or if you want to suspend Versioning on the bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, both these options are quite destructive, and so MFA will be recovered for this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But if you want to enable Versioning or list deleted versions, then the MFA will not be required because these are not dangerous operations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Storage access-hardening signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is quite complicated because while using the root account is not something you should do a lot, but you will see how do this in the next lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: (none explicit)
- Key Insights: And just remember that MFA Delete is an extra protection to prevent against the permanent deletion of specific object versions.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/157_S3 MFA Delete Hands On.txt

Line 1:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Okay, so let's demonstrate MFA delete.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So I'm going to create a bucket, and I'll call it demo stephane MFA delete 2020 in eu-west-1.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to enable bucket versioning, and click on create buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if we go to this bucket, the MFA bucket, and go to properties and bucket versioning and click on edit.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: As you can see, Multi-Factor authentication (MFA) delete is currently disabled, and you cannot change this through the UI of Amazon console, for some reason.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So maybe someday they will allow us to enable it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But for now, what you have to do is to enable it directly using the AWS CLI.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So a prerequisite of this hands-on is to make sure that, under IAM, you have already set up an MFA device for your root accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm using my root account right now, as you can see, it's, I'm logged in as roots.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And what I need to do is click on it and click on my security credentials.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is taking me to the security credentials I have in IAM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And under a Multi-Factor authentication MFS, you can see I've set up already a virtual device for my MFA, and the ARN is right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next, we have to go ahead and actually configure the ADA CLA to use this root account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, this is something I don't recommend on doing, except for enabling MFA delete on your S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is to create new access keys, and I will download the key file and then show the access keys as well.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: I will remove them, so don't worry about seeing mine, but you should never share your root access key with anyone as well as your secret access key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so what I need you to do now is to set up the CLA with these two little settings.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to configure my command line.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So AWS configure and then I'm going to create a profile and I've called this profile, roots-MFA-delete-demo.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this file, you can find under, s3advanced.mfadelete.sh.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're using the comments from there.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to set up this profile and then after you enter my access key Id, which is right here.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So let's go ahead and paste this, my secret access key, which is all the way here, paste it.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Default region name, eu-west-1, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, if I do AWS S3 LS, does it work? and do it with my profile that I've just created, which is called by the way, root-MFA-delete-demo.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Yes this gives me my three buckets that I have.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So my profile is correctly set up.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Next, what I have to do is to enable the MFA delete.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for this, there is this full setting right here that I'm going to copy and then edit, with you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I paste it and I need to first change the bucket names.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the bucket for now is called, MFA-demo-stephane but I'm going to change it by demo-stephane-MFA-delete-2020, which is good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Versioning configuration status enabled.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: MFA delete equals enabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we are good to go here and then we need to specify the ARN of the MFA device and this I can find.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's find it's right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is the ARN of the MFA device, So I'm going to paste it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, the MFA code.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is something that I'm going to get directly from my application, that gives me my MFA code.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So seven one zero three four three, press enter.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And apparently this is not correct.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's wait another one. (typing) And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this was set up.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now, how do we know if it worked?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Well, if I go into my bucket versioning and refresh, as we can see now, bucket versioning, it says bucket versioning is enabled as well as Multi-Factor authentication, MFA delete is enabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so, how do we know if it worked?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, let's say I'm going to my objects and I'm going to upload objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let me upload, for example, a copy of the JPEG file, I will upload it, so this is working Now If I go back to my buckets, take that objects and delete it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to delete it, but we have enabled versioning, so this is just going to add a delete marker.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is working as well.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So all in all so far, so good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if I list my bucket versions now, okay I have two versions for my file, but now if I wanted to, for example, delete this specific version ID.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this one is called a permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: It says, you cannot delete object because Multi-Factor authentication, MFA deletes is enabled for this bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 56:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And so to do so we need to use the CLI command to delete this file or disabled MFA delete.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 57:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So we can just go ahead and disable MFA delete, so for this, the command is right here.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 58:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So it's the same command that this time will do MFA delete equals disabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to take the command from before and I'm going to edit it out, so here we go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: MFA delete equals disabled and obviously the MFA code I need to change.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let me wait for the next MFA code to appear on my screen.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Hopefully it will work.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Press enter.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here we go, this works.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now if I try another time to delete, for example, delete, the delete marker.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Yes, it is working because I have disabled MFA delete.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's confirm it by typing in this texts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then finally going back to my buckets, go into my properties and under bucket versioning, yes, we can see that MFA delete is disabled.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And obviously at the end of the lecture, I almost forgot, but no, I didn't forget.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Please delete your route access key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is really bad to you have them so, I will deactivate them and we're good to go, and then finally I can probably delete them at some point.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Thank you so much, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/158_S3 Access Logs.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So now, let's talk about S3 Access Logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So for audit purposes, you may want to log all the access made into your S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So that means that any request made to your S3 bucket from any account, whether or not it's authorized or denied, is going to be logged as a file into another S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that data then can be analyzed using data analysis tool such as Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the target logging buckets must also be in the same AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, you're going to request against your S3 buckets, and then you're going to enable the access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's all the requests are being logged into the logging buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, there's a specific format to this logs, and you can find it at this URL to find the log formats.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, with access logs, there is a little bit of warning.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Never ever set your logging bucket to be the same as the bucket you are monitoring, because otherwise, it will create a logging loop and it will be infinite and your bucket will grow in size exponentially.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: While you do put object, but the app bucket and the logging bucket is the same.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So there will be a logging loop and you will log that again and log that again and log that again and you will pay a lot of money.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So do not try this at home.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/159_S3 Access Logs - Hands On.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's go ahead and practice S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And for this I'm going to create an S3 access logs, define V3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I will go ahead and create that bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that bucket is going to be our logging bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to keep this open here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in another tab I'm going to take one of my buckets that I've created.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to enable the um logging.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I just took one bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But whatever bucket you want for your really I will go on properties and then I will scroll down and look for server access logging.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we edit it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's enable it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And as you can see the bucket policy will be updated for the target buckets where we want to write data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first we have to specify a destination.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So oops.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go in my bucket and type access.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So Stefan access log v3.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is the bucket I want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will choose this as my destination.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we have a destination region.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is EU West one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have the destination bucket name prefix.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is if I wanted to select an optional prefix in my bucket to for example have slash logs, but we will not do this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And then the log object key format.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have this format right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And there is an example here given to me as the log key example.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Or if I use the second one, I can also specify a different S3 event time or a log file delivery time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again this would change my final uh key format.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Right now we're going to keep it as default.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's just use the first option okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Which will be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then click on Save changes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And now my S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Uh, server access logging is enabled.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now what I can do is I can go to my objects, I can click on this one, I can maybe open it, um, back into my bucket, I can go in it and I can upload a file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'll add a file and it'll be, for example, my JPEG.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can do a lot of things in your bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And all of this is going to generate activity.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this activity is going to be logged into your logging bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now if I refresh, as you can see nothing happens yet.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's because it takes a little bit of time for your access logs to go into your logging buckets.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But what we can do in the meantime is have a look at the permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Because when we enabled the server bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we were right here the server access logging.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: When we enabled it, it was saying that the bucket policy will be updated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's verify that we can scroll down.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And we have the bucket policy right here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: And indeed yes, the bucket policy was updated to allow the logging service of Amazon S3 to put objects into this buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this, um, not what we have to do is go back into our buckets and wait for the first logs to be sent.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it took a couple of hours, but I just refreshed.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in my bucket I see a lot of files now objects and these have been created directly for my access log.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I can click on one of them and I can open it for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And in here I'm able to see, well what happened.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is quite hard to decipher okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But it gives you the API call, the success rate, who accessed it, what bucket it was, at what time, and a lot of information.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/160_S3 Pre-signed URLs.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, now, let's talk about Amazon S3 pre-signed URLs.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, they are URLs you can generate using the S3 console, the CLI or the SDK, and the URL has an expiration.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you use the console, it's up to 12 hours and if use the CLI, you can go up to 168 hours.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, the idea is that when you generate a pre-signed URL, the user that will get that URL will inherit the permissions of the user that generated that URL for a GET or a PUT.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what's the use case?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Well, say you have an S3 bucket and it's private, and you want to give someone outside of AWS access to one file.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't want to make that file public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't want to make that file in any way that would break your security, right?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, you as your bucket owner or the user, you're going to generate a pre-signed URL out of this file, and the S3 Bucket will give you a URL.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That URL is going to be pre-signed, meaning that it will carry over your credentials, in terms of authorization to access that file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you will send this URL to the target user that you want to give access to the file for a limited amount of time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And then that user, sorry, will be using the URL to access the file on the S3 Buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 13:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And then you will get a file back from the S3 buckets, and the user has being able to download it, for example.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, pre-signed URL are a very, very common use case when it comes to temporary access to one specific file for download or even for upload.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, the examples are to only allow logged-in users to download a premium video of your S3 bucket or to allow an ever-changing list of users to download files by generating URLs dynamically, or to allow, temporarily, a user to upload a file to a precise location in your S3 bucket, while maintaining your S3 bucket private.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, and I will see you in the next lecture for some hands on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/161_S3 Pre-signed URLs - Hands On.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Okay, so let's demonstrate S3 pre-signed URL.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to take one bucket that I know is not public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so I click on my coffee.jpg for example, you can take whatever image you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So, we know that this image is private because if I go and click on my object URL right here, I get an access denied.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this public URL right here is not working because my bucket is not public.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But, I know that if I clicked on open right here, it's going to open a new tab and my image is still showing, why?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because the beginning is exactly the same as before, but then in here all the way, you have what's called a pre-signed URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so this URL was pre-signed with my credentials which allowed me to access this image.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is how do we generate pre-signed URLs for everyone?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So two options, number one, you can use a CLI and the other option is now to do it from the console itself.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So, if you click on object action, you can click on share a pre-signed URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And now, it says that anyone can access the object with this URL until it expires, even if the bucket and object are private.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we're saying, "Hey, I want to have this image and I want to allow minutes or hours." So I will say, "Hey, it's going to be valid for the next five minutes." And then click on create pre-signed URL.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now it has been created and I can share this URL with anyone and they will be able to enter it, press Enter and voila, get access to your image.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So, that's very handy if you want to share access to some files in your S3 bucket very quickly and then make sure that the URL expires for maximum security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/162_Glacier Vault Lock & S3 Object Lock.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So now let's talk about S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you want to lock your Glacier Vault to adapt a WORM model.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means Write Once Read Many.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 5:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: So for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Access Control Enforcement
- Services: S3 Object Lock
- Key Insights: That means that once you've set a Vault Lock Policy and you locked it, it can no longer be changed or deleted by anyone which is very helpful for compliance and data retention.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: S3 Object Lock
- Key Insights: So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful for anything legal such as compliance or data retention.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's for the Glacier option.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it's quite simple to understand.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, there is the same option or something similar at least for the S3 buckets, but it's a bit more complicated.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So for enabling S3 Object Lock, you must first enable versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, it allows you to adapt a WORM model, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: But this time it's not a lock policy at the whole S3 bucket level.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: It is a lock you can adapt for each and every object within your bucket.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Storage Data Protection
- Services: S3 Object Lock
- Key Insights: So you can do an object lock on the single object.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: And the idea is that thanks to an S3 object lock, you want to block a specific object version to be deleted for a specified amount of time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have two retention modes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the first one is the compliance mode.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: The compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that once you are in your compliance mode, no one can change anything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's when you wanna be super compliance.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But if you want to be a bit more flexibility you have the Governance Retention mode.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So in this case, most user cannot override or delete an object version or alter its lock settings.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: But some users, the admin users, have special permissions and that's given through IAM and they can change the retention or delete an object directly.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So compliance is very strict as a retention mode.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Whereas government's is a bit more lenient and some users have had admin powers and can change a few things.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, in both these modes you have to set a retention period.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that period of time can be extended, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Now, there is one more thing you can do with the S3 object log, it's to pull the legal hold on an object.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is different from what we saw.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So legal hold protects any object on your S3 bucket indefinitely and that's independent from the retention period.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 36:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So once you place a legal hold on an object think of like, oh, this object is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We need to use it in a trial.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Let's place a legal hold on it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Then the object is protected forever regardless of what retention mode and retention period you've set on it from before.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And then someone who has the IAM permissions S3 PutObjectLegalHold has the option to take any objects and put legal holds on them or to remove them.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 41:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lock
- Key Insights: So you need to know the differences of the S3 object lock going at the exam.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/163_S3 Access Points.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 11:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 12:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: S3 Access Points
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 13:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 14:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 15:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 21:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 22:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 23:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 28:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 29:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 30:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 31:
- Concepts: Access Control Enforcement
- Services: S3 Access Points
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage access-hardening signal.

Line 32:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: S3 Access Points
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/164_S3 Object Lambda.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon EFS, Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: So there is another use case for EFS three access points and it's called S3 Object Lambda.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So the idea is that you have an S3 bucket, but you want to modify the object just before it is being retrieved by a color application.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lambda
- Key Insights: And instead of, for example duplicating our buckets to have different versions of each object, we can use S3 Object Lambda instead.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: And for this, we need the S3 access points that we just saw.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Say we have the cloud and we have an S3 bucket in it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So an E-commerce application maybe owns the data in this S3 bucket and so they're able to access directly the S3 buckets and put and get the original object out of it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 8:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: But then an analytics application may want to only have access to the redacted object.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: That means that some data has been deleted from the object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points
- Key Insights: And so instead of creating a new S3 bucket for this what we can do is that we create an S3 access point on top of a S3 bucket and is connected to a Lambda function.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, we haven't seen Lambda in depth, but a Lambda function allows you to run a bit of code in the cloud very easily.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so this Lambda function is going to redact the object as it is being retrieved.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: And on top of this Lambda function, we're going to create an S3 object Lambda access point.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 14:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And, this is how the analytics application is going to access our S3 buckets.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 15:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: So to summarize the analytics application accesses our S3 Object Lambda access points, which invokes our Lambda function.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 16:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: Our Lambda function is going to retrieve the data from the S3 bucket and runs some code to redact the data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: And therefore the analytics application is obtaining a redacted object from the very same S3 bucket as the E-commerce application.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 18:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Now, a marketing application may want to have access to an enriched object, and they have a customer loyalty database to enhance the data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So instead of, again, creating a new S3 bucket and creating all the objects with all the enriched data.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What we can do is, again, using a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So another piece of code.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this one will enrich the data by looking it up from the customer loyalty database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: S3 Access Points, S3 Object Lambda
- Key Insights: And therefore we can also create an object Lambda access point on top of it.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 24:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: And therefore our marketing application can access this access point, this S3 object Lambda access point to get, again the enriched objects.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 25:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Access Points, S3 Object Lambda
- Key Insights: As you can see, we only need one S3 bucket but we can create access points and object Lambda to modify the data as we wish.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage access-hardening signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for it is to redact, for example, PII data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So personally identifiable information, for analytics or non-production environments, or for example to convert data from XML to JSON or to perform any kind of transformation you want.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: For example resizing and watermarking images on the fly but the watermark is specific to the user who request the object.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Storage Data Protection
- Services: Amazon S3, S3 Object Lambda
- Key Insights: So that's kind of a cool usage for S3 Object Lambda.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

## Step 2 â€” Consolidation

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
- AWS KMS
- Amazon EFS
- Amazon S3
- S3 Access Points
- S3 Multi-Region Access Points
- S3 Object Lambda
- S3 Object Lock

### 3. Features List
- access points
- certificate
- cors
- envelope encryption
- kms
- mfa delete
- object lock
- vault lock

### 4. Use Cases
- 026_S3 Security.txt:3: And it's good to know, first of all, SSE-S3 which allows you to encrypt S3 objects using keys handled and managed by AWS.
- 026_S3 Security.txt:21: S3 Event Notifications now, which is to retrieve notifications whenever certain events happen in your buckets.
- 026_S3 Security.txt:22: For example, new objects are being created, objects are being removed, objects are being restored, or there is a replication event happening, and the destinations of these S3 events can be SNS, SQS queue and Lambda.
- 026_S3 Security.txt:26: So this will be helpful, for example, to know if your bucket is being public.
- 026_S3 Security.txt:30: And you have resource-based policy, which is bucket policies, so this is bucket-wide rules for the S3 console, and we've seen that it's very helpful when we have cross-account access, because it allows the accounts who wants to access the S3 buckets not to assume a role and give up its permissions.
- 026_S3 Security.txt:39: And this is when you define a VPC endpoint, we saw this in the next slide or the one after, and this is very helpful when you have a private access to your S3 buckets and you want to say, okay, only IP coming from this VPC endpoint or this VPC are allowed.
- 026_S3 Security.txt:50: And so whoever has this pre-signed URL has exact same right that you were given when you created that pre-signed URL.
- 026_S3 Security.txt:52: So when we do use pre-signed URLs?
- 026_S3 Security.txt:53: We will use them, for example, if we want to allow logged-in users to only download a premium video on your S3 buckets on demand, or allow an ever-changing list of users to download files by generating URLs dynamically.
- 026_S3 Security.txt:70: Number one is SourceIP, which is for public IP, and the second one is SourceVpc or SourceVpce, when you have a VPC endpoint to access your S3 buckets.
- 027_S3 Access Points.txt:8: So we can, for example, create a finance access point that is going to be connected to the finance data.
- 027_S3 Access Points.txt:28: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- 028_S3 Multi-Region Access Points.txt:7: So let's have a look at, for example, an example with three regions.
- 028_S3 Multi-Region Access Points.txt:13: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- 028_S3 Multi-Region Access Points.txt:20: Therefore whenever we request an object.
- 028_S3 Multi-Region Access Points.txt:23: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- 028_S3 Multi-Region Access Points.txt:25: This is when you can write to multiple regions at a time.
- 029_S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 030_S3 Object Lambda.txt:1: So there is another use case for EFS three access points and it's called S3 Object Lambda.
- 030_S3 Object Lambda.txt:3: And instead of, for example duplicating our buckets to have different versions of each object, we can use S3 Object Lambda instead.
- 030_S3 Object Lambda.txt:26: So the use cases for it is to redact, for example, PII data.
- 030_S3 Object Lambda.txt:27: So personally identifiable information, for analytics or non-production environments, or for example to convert data from XML to JSON or to perform any kind of transformation you want.
- 030_S3 Object Lambda.txt:28: For example resizing and watermarking images on the fly but the watermark is specific to the user who request the object.
- 146_S3 - Authorization Evaluation Process.txt:2: And that can be quite complicated, but this is just general rule and then we'll drill down into some use cases.
- 146_S3 - Authorization Evaluation Process.txt:5: Does it mean for example, that it has the correct IAM policy.
- 146_S3 - Authorization Evaluation Process.txt:18: If the bucket owner is also the object owner, then the access is granted using a bucket policy and that's the most common use case we've seen so far.
- 146_S3 - Authorization Evaluation Process.txt:39: So this is for example, if you have like public access.
- 146_S3 - Authorization Evaluation Process.txt:44: It's a edge use case, but you need to understand it to really understand how things work.
- 146_S3 - Authorization Evaluation Process.txt:45: And then we'll go into more simple use cases.
- 146_S3 - Authorization Evaluation Process.txt:52: So in this use case, as you can see, we have three different accounts, but in the case where the account two is also the account three, then ACLs are out of the picture.
- 147_S3 - Cross Account Access and Canned ACL.txt:31: It says, "Hey, when I upload an object, I want to grant full control to the accounts A." And that's quite complicated, this is why ACLs are very complicated.
- 147_S3 - Cross Account Access and Canned ACL.txt:37: So if we upload an object and we add the x-amz-acl header for bucket owner full control that means that when we upload an object we also give the object ownership to the bucket owner.
- 147_S3 - Cross Account Access and Canned ACL.txt:50: So when it assumes that role, thanks to the proper policies, then it can access the S3 bucket directly from within the account A.
- 148_S3 - Samples S3 Bucket Policies.txt:11: So here, we deny users that don't have the correct IP and users that do have the correct IP, for example, from a corporate office, are able to do API calls against my S3 buckets.
- 148_S3 - Samples S3 Bucket Policies.txt:17: So for example, this account cannot access it, but that account can access it.
- 149_S3 - VPC Endpoint Strategy.txt:8: So when we have all these things together, it's working.
- 149_S3 - VPC Endpoint Strategy.txt:21: Or if you choose to create an interface endpoint we have a private link into Amazon S3 and the use case would be to use either direct connect or site to site VPN to connect to Amazon S3 through this interface endpoint.
- 149_S3 - VPC Endpoint Strategy.txt:24: For example, if you wanted to centralize traffic through this central VPC, so instead of going through Gateway Endpoint, you could go through a transit gateway into the interface endpoint.
- 149_S3 - VPC Endpoint Strategy.txt:31: For example, in here I restrict access to my bucket if it doesn't come through a specified source VPC.
- 149_S3 - VPC Endpoint Strategy.txt:36: Just remember, the AWS SourceIP condition is for public IP addresses, whereas the VPC SourceIP is for private IP addresses and it is only valid when you start using VPC endpoints.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:9: But the only thing that doesn't get denied in your account when everything else is being denied, is your AWS accounts root user, because deny statement is to not apply to the root user, so therefore using the root user, you can go ahead, safely delete the bucket policy, and create a new one that doesn't lock you out.
- 151_S3 - Block Public Access Settings.txt:2: So when you create a bucket, you will see these on and off type of setting.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:8: So we can, for example, create a finance access point that is going to be connected to the finance data.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:28: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- 153_[SOA] S3 Access Points - Hands On.txt:20: And if you look at the statements, so we allow a specific user, for example, I can take my account ID in here, and say the user Stephane is only going to be able to do get object and put object on, and then I need to specify the proper region.
- 153_[SOA] S3 Access Points - Hands On.txt:39: And in this example we're saying, okay, allow any, when.
- 154_[SOA] S3 Multi-Region Access Points.txt:7: So let's have a look at, for example, an example with three regions.
- 154_[SOA] S3 Multi-Region Access Points.txt:13: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- 154_[SOA] S3 Multi-Region Access Points.txt:20: Therefore whenever we request an object.
- 154_[SOA] S3 Multi-Region Access Points.txt:23: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- 154_[SOA] S3 Multi-Region Access Points.txt:25: This is when you can write to multiple regions at a time.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 156_[SAA_DVA_SOA] S3 CORS.txt:6: For example, if you look at https://www.example.com the implied port is 443 for HTTPS, the protocol is HTTPS itself and the domain of course is www.example.com Now, CORS is a web browser based mechanism of security to allow or to deny request to other origins while visiting the main origin.
- 156_[SAA_DVA_SOA] S3 CORS.txt:9: For example, we have these two URLs, they're share the same origin.
- 156_[SAA_DVA_SOA] S3 CORS.txt:11: For example, www.example.com and other.example.com And so, if our web browser is visiting one website and supposed to make a request to another website as part of the request scheme then these requests will not be fulfilled unless the other origin allows for the request using the CORS header.
- 156_[SAA_DVA_SOA] S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:22: And I will choose it to be in another region, for example, to demonstrate that there are very different servers.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:23: For example, I will put this one in Canada.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:19: Prefix, this is if I wanted to select an optional prefix in my bucket to, for example, have /logs, but we will not do this.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:25: So let's just use the first option, okay, which will be enough for our use case.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:31: So I'll add a file and it'll be, for example, my beach.jpeg.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:37: But what we can do in the meantime is have a look at the Permissions, because when we enabled the server buckets, so when were right here, the Server access logging, when we enabled it, it was saying that the Bucket policy will be updated.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:45: So I can click on one of them and I can open it, for example.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:8: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:35: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:37: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:64: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- 193_S3 Encryption Summary.txt:3: So we've seen SSE-S3 is to encrypt S3 objects using keys handled and managed by AWS.
- 193_S3 Encryption Summary.txt:8: So also, when you do s3:PutObject, you need to make sure you have the kms:GenerateDataKey permission because well, you need to generate a data key to encrypt a large file in Amazon S3.
- 193_S3 Encryption Summary.txt:9: When you use SSE-C, this is when you want to manage your own encryption keys for server-side encryption.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:4: But you can change this to be a different default encryption, for example, SSE-KMS.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:6: So for example, SSC-KMS or SSE-C.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:7: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- 196_[DVA] S3 Bucket Key.txt:3: The number of API calls made to KMS from Amazon S3 when you use the SSE-KMS type of encryption by 99%.
- 196_[DVA] S3 Bucket Key.txt:10: And this key is what's going to be used to encrypt objects in your Amazon S3 Buckets with KMS encryption.
- 196_[DVA] S3 Bucket Key.txt:11: So this extra bucket key is going to generate a lot of data keys using envelope encryption which is going to go into encrypting your S3 Buckets.
- 196_[DVA] S3 Bucket Key.txt:14: And so this is an optimization of using SSE-KMS to decrease the number of KMS API calls in order, for example, not to have a high bill or not to go over the limits of encryption within your Amazon S3 Buckets but without compromising on security.
- 197_Large File Upload to S3 with KMS Key.txt:1: So here is a tricky use case for an exam question, and that is quite unintuitive but makes sense when I explain it.
- 197_Large File Upload to S3 with KMS Key.txt:3: So when you upload a large file, of course you must use a multi-part upload.
- 198_S3 Batch Encryption.txt:3: And for example, what we want to do is to encrypt unencrypted objects.
- 198_S3 Batch Encryption.txt:8: And then finally, while these fit together, we'll be able to encrypt everything.
- 198_S3 Batch Encryption.txt:10: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:24: So it's when you wanna be super compliance.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:31: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:41: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:42: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- 200_Glacier Vault Lock - Deep Dive.txt:5: This is used to restrict user and account permissions, whereas a Vault Lock policy is a policy you lock for regulatory and compliance requirements when you set up a lock.
- 200_Glacier Vault Lock - Deep Dive.txt:9: So for example, you can use this to forbid deleting an archive if less than one year old or to implement write once read many policy, WORM, policy.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:5: So, basically, when a retrieval job is completed, we can receive an SMS notification.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:19: For example, this one is to deny delete permissions for archives less that 365 days old.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:2: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:9: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:12: For example, your access log files, you want to delete them after 365 days.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:13: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:14: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:20: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:25: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:6: So five different use cases.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:9: So for example, we can transition to standard IA after 30 days.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:16: We can also, for example move non-current versions so faster.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:20: And for example we want to expire current versions of objects after, and at the bottom you can set it up after 700 days.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:10: So the use cases for replication are manyfold.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:4: And I will set it in one region that I want, for example, eu-west-1.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:11: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:15: What I'm going to do is that in the origin bucket, I'm going to upload a file, so I will add a file of my beach, for example.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:40: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:50: So I'm going to do is now upload a new file, for example, upload the coffee.jpg file.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:70: And so that means that if I go in this bucket, and I choose to delete this file, for example, I delete my coffee.jpg file, let's delete it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:80: So the delete markers are deleted but if you decide to delete a specific version of a file, for example, I delete this one, which is I delete a specific version ID.
- 150_S3 Encryption.txt:8: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- 150_S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 150_S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 150_S3 Encryption.txt:35: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- 150_S3 Encryption.txt:37: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- 150_S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 150_S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 150_S3 Encryption.txt:64: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- 152_S3 Encryption - Hands On.txt:40: So we can do the same process by uploading a file and then we're going to add a file, for example, beach.jpg.
- 152_S3 Encryption - Hands On.txt:56: And finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- 153_S3 Default Encryption.txt:4: But you can change this to be a different default encryption, for example, SSE-KMS.
- 153_S3 Default Encryption.txt:6: So for example, SSC-KMS or SSE-C.
- 153_S3 Default Encryption.txt:7: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- 154_S3 CORS.txt:6: For example, if you look at https://www.example.com the implied port is 443 for HTTPS, the protocol is HTTPS itself and the domain of course is www.example.com Now, CORS is a web browser based mechanism of security to allow or to deny request to other origins while visiting the main origin.
- 154_S3 CORS.txt:9: For example, we have these two URLs, they're share the same origin.
- 154_S3 CORS.txt:11: For example, www.example.com and other.example.com And so, if our web browser is visiting one website and supposed to make a request to another website as part of the request scheme then these requests will not be fulfilled unless the other origin allows for the request using the CORS header.
- 154_S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 155_S3 CORS Hands On.txt:22: And I will choose it to be in another region, for example, to demonstrate that there are very different servers.
- 155_S3 CORS Hands On.txt:23: For example, I will put this one in Canada.
- 156_S3 MFA Delete.txt:3: It could be, for example, a mobile phone with a Google Authenticator application or whatever, or another one for example, or a hardware such as an MFA hardware device.
- 156_S3 MFA Delete.txt:5: So when is MFA going to be required?
- 156_S3 MFA Delete.txt:6: Well, it's going to be required when you want to permanently delete an object version.
- 157_S3 MFA Delete Hands On.txt:49: So let me upload, for example, a copy of the JPEG file, I will upload it, so this is working Now If I go back to my buckets, take that objects and delete it.
- 157_S3 MFA Delete Hands On.txt:53: And if I list my bucket versions now, okay I have two versions for my file, but now if I wanted to, for example, delete this specific version ID.
- 157_S3 MFA Delete Hands On.txt:65: So now if I try another time to delete, for example, delete, the delete marker.
- 159_S3 Access Logs - Hands On.txt:22: This is if I wanted to select an optional prefix in my bucket to for example have slash logs, but we will not do this.
- 159_S3 Access Logs - Hands On.txt:30: Which will be enough for our use case.
- 159_S3 Access Logs - Hands On.txt:35: So I'll add a file and it'll be, for example, my JPEG.
- 159_S3 Access Logs - Hands On.txt:42: Because when we enabled the server bucket.
- 159_S3 Access Logs - Hands On.txt:44: When we enabled it, it was saying that the bucket policy will be updated.
- 159_S3 Access Logs - Hands On.txt:52: So I can click on one of them and I can open it for example.
- 160_S3 Pre-signed URLs.txt:4: So, the idea is that when you generate a pre-signed URL, the user that will get that URL will inherit the permissions of the user that generated that URL for a GET or a PUT.
- 160_S3 Pre-signed URLs.txt:5: So what's the use case?
- 160_S3 Pre-signed URLs.txt:13: And then you will get a file back from the S3 buckets, and the user has being able to download it, for example.
- 160_S3 Pre-signed URLs.txt:14: So, pre-signed URL are a very, very common use case when it comes to temporary access to one specific file for download or even for upload.
- 161_S3 Pre-signed URLs - Hands On.txt:3: And so I click on my coffee.jpg for example, you can take whatever image you want.
- 162_Glacier Vault Lock & S3 Object Lock.txt:24: So it's when you wanna be super compliance.
- 162_Glacier Vault Lock & S3 Object Lock.txt:31: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- 162_Glacier Vault Lock & S3 Object Lock.txt:41: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- 162_Glacier Vault Lock & S3 Object Lock.txt:42: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- 163_S3 Access Points.txt:8: So we can, for example, create a finance access point that is going to be connected to the finance data.
- 163_S3 Access Points.txt:28: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- 164_S3 Object Lambda.txt:1: So there is another use case for EFS three access points and it's called S3 Object Lambda.
- 164_S3 Object Lambda.txt:3: And instead of, for example duplicating our buckets to have different versions of each object, we can use S3 Object Lambda instead.
- 164_S3 Object Lambda.txt:26: So the use cases for it is to redact, for example, PII data.
- 164_S3 Object Lambda.txt:27: So personally identifiable information, for analytics or non-production environments, or for example to convert data from XML to JSON or to perform any kind of transformation you want.
- 164_S3 Object Lambda.txt:28: For example resizing and watermarking images on the fly but the watermark is specific to the user who request the object.

### 5. Constraints / Limitations
- 026_S3 Security.txt:7: The second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can never be read because a public anonymous user cannot have access to your KMS key.
- 026_S3 Security.txt:31: Then we have object ACL finer grain, and finally bucket access control list, which is less common, and the exam probably will not talk to you about the ACLs, only talk about the S3 bucket policies because this is the way forward for the exam.
- 026_S3 Security.txt:33: So you should use an S3 bucket policy in order to grant public access to the bucket, or force objects to be encrypted at upload, or grant access to another account, cross-account access, and you can get conditions on many different things, and this is very important to remember those.
- 026_S3 Security.txt:36: And we have a second one called VpcSourceIp, which allows you to get a condition on the private IP, but only if you are using a VPC endpoint.
- 026_S3 Security.txt:39: And this is when you define a VPC endpoint, we saw this in the next slide or the one after, and this is very helpful when you have a private access to your S3 buckets and you want to say, okay, only IP coming from this VPC endpoint or this VPC are allowed.
- 026_S3 Security.txt:43: So it's possible to have a condition on saying only a CloudFront distribution with an origin identity is able to access my S3 bucket policy.
- 026_S3 Security.txt:53: We will use them, for example, if we want to allow logged-in users to only download a premium video on your S3 buckets on demand, or allow an ever-changing list of users to download files by generating URLs dynamically.
- 026_S3 Security.txt:58: Now, the S3 bucket can have a bucket policy, and we can filter, have a condition for the bucket policy by using AWS:SourceIP, and this must be a public IP or an elastic IP, which are public by the way.
- 026_S3 Security.txt:69: And so these will be the two very important conditions to remember for your S3 buckets.
- 026_S3 Security.txt:80: So there should be a lot of things that you already knew, but probably one or two new things in there.
- 026_S3 Security.txt:81: And remember, going into the exam, the very important things is all about the details.
- 026_S3 Security.txt:82: So everything I'm saying about the details is what you should be paying attention on.
- 027_S3 Access Points.txt:13: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- 027_S3 Access Points.txt:14: So we're going to create our own read only policy on the analytics access point.
- 027_S3 Access Points.txt:16: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- 027_S3 Access Points.txt:17: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- 027_S3 Access Points.txt:29: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- 027_S3 Access Points.txt:31: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- 028_S3 Multi-Region Access Points.txt:3: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- 028_S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 029_S3 Multi-Region Access Points - Hands On.txt:10: But you only have one bucket per AWS region as far as it goes right now.
- 029_S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 029_S3 Multi-Region Access Points - Hands On.txt:31: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- 030_S3 Object Lambda.txt:8: But then an analytics application may want to only have access to the redacted object.
- 030_S3 Object Lambda.txt:25: As you can see, we only need one S3 bucket but we can create access points and object Lambda to modify the data as we wish.
- 146_S3 - Authorization Evaluation Process.txt:6: And if the parent owns the bucket or the object, because you should know that you have different level of ownerships within buckets and we'll talk about those in details as well.
- 146_S3 - Authorization Evaluation Process.txt:24: And just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- 146_S3 - Authorization Evaluation Process.txt:51: And so that means that account three should have authorized account one to access the object.
- 146_S3 - Authorization Evaluation Process.txt:53: And the only thing that can be considered is the bucket policy.
- 146_S3 - Authorization Evaluation Process.txt:54: Finally, to understand how authorization works in Amazon S3, we must talk about bucket operations versus object operations.
- 147_S3 - Cross Account Access and Canned ACL.txt:6: So, this only works if the bucket owner enforced setting is equals to disabled.
- 147_S3 - Cross Account Access and Canned ACL.txt:27: So even though the S3 bucket is owned by account B, the objects within may be owned only by the users, or the roles, or the accounts, that actually upload these objects.
- 147_S3 - Cross Account Access and Canned ACL.txt:41: Now, ACLs are not recommended, but I'm still teaching them to you because it's important for you to know about them.
- 147_S3 - Cross Account Access and Canned ACL.txt:43: So you cannot use ACL anymore from that point at least by default.
- 147_S3 - Cross Account Access and Canned ACL.txt:45: So that's only the Bucket policies the IAM policies, the SCP and the VPC Endpoint Policies, will control access to your S3 bucket objects.
- 148_S3 - Samples S3 Bucket Policies.txt:7: Now you should know about this condition.
- 148_S3 - Samples S3 Bucket Policies.txt:13: So we have an S3 bucket and we want to restrict access only for specific users.
- 148_S3 - Samples S3 Bucket Policies.txt:17: So for example, this account cannot access it, but that account can access it.
- 149_S3 - VPC Endpoint Strategy.txt:3: So this doesn't have any costs and it can only be accessed by resources within the VPC where it's created.
- 149_S3 - VPC Endpoint Strategy.txt:9: Just remember that Gateway Endpoints can only be accessed by resources within your VPC but not elsewhere, so Direct Connect does not work, side to side VPN does not work, and so on VPC peering does not work, only stuff within your VPC.
- 149_S3 - VPC Endpoint Strategy.txt:19: The only thing you can use is the public DNS name of Amazon s3, but the traffic will still resolve to the VPC interface endpoint within your VPC.
- 149_S3 - VPC Endpoint Strategy.txt:26: So at the exam, you will have indicators whether or not you should use Gateway or interface and it's up to you to choose the right one of course but you have enough information now to really understand the differences.
- 149_S3 - VPC Endpoint Strategy.txt:32: Now this condition can only work if you have a VPC endpoint.
- 149_S3 - VPC Endpoint Strategy.txt:36: Just remember, the AWS SourceIP condition is for public IP addresses, whereas the VPC SourceIP is for private IP addresses and it is only valid when you start using VPC endpoints.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:5: Literally, once you attach this bucket policy, you cannot do anything.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:6: Users cannot access your data, you cannot even change the bucket policy because while that is an API call on top of your S bracket.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:9: But the only thing that doesn't get denied in your account when everything else is being denied, is your AWS accounts root user, because deny statement is to not apply to the root user, so therefore using the root user, you can go ahead, safely delete the bucket policy, and create a new one that doesn't lock you out.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:12: It should make sense but worth saying in that may get you one point at the exam.
- 151_S3 - Block Public Access Settings.txt:5: So this was created in order to prevent company data leaks, because while companies used to set their buckets as public and now we have restrictions that if you know that your bucket should never be public no matter what, we'll leave these on, and even if you set a bucket policy that allows your bucket to be public, it's going to be blocked.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:13: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:14: So we're going to create our own read only policy on the analytics access point.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:16: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:17: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:29: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:31: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- 153_[SOA] S3 Access Points - Hands On.txt:14: So let's say we want to ensure that this bucket name right here is only accessed through a access powering policy and it will only give access to a subfolder.
- 153_[SOA] S3 Access Points - Hands On.txt:20: And if you look at the statements, so we allow a specific user, for example, I can take my account ID in here, and say the user Stephane is only going to be able to do get object and put object on, and then I need to specify the proper region.
- 153_[SOA] S3 Access Points - Hands On.txt:26: So this is going to only allow me to write to the directory Stephane star, which is I think pretty cool.
- 153_[SOA] S3 Access Points - Hands On.txt:33: Well, because we've created an access point in here, and that means that if we access our S3 buckets through this access point and my Stephane user access it through this access point, then it's only gonna be allowed to access a specific sub directory.
- 153_[SOA] S3 Access Points - Hands On.txt:45: So effectively what we're saying is that, this S3 bucket can only be accessed if you are using an access points coming from this accounts.
- 153_[SOA] S3 Access Points - Hands On.txt:47: So this is good because now what we're doing, is that we're saying, hey, you can only access this buckets, okay, through the access points.
- 154_[SOA] S3 Multi-Region Access Points.txt:3: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- 154_[SOA] S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:10: But you only have one bucket per AWS region as far as it goes right now.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:31: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- 156_[SAA_DVA_SOA] S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:2: And for this we first must change the index.html files.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:20: And to do this, I must first create another extra extra bucket and enable it as a website.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:45: So this file should now be a public file on my buckets enabled as a website.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:50: And I get a "404 Not Found" because, well, we cannot find the extra-page.html.
- 158_[SAA_DVA_SOA] S3 Access Logs.txt:5: Now, the target logging buckets must also be in the same AWS region.
- 159_S3 Access Logs - Permissions.txt:3: The destination bucket must have a bucket policy.
- 159_S3 Access Logs - Permissions.txt:5: The important thing to note here is that the resource this bucket applies to should be the destination-bucket/*, saying that any path on this bucket should be allowed the operation s3:PutObject as long as the source arn, so that means the source bucket, the source origin of this request is the arn of the source bucket on the left-hand side.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:9: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:26: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:34: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:43: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:50: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 195_S3 Bucket Policies Examples.txt:7: Well, again, you would have a Deny statement and you're saying, "Hey, I want to make sure that this header right here is equal to aws:kms." And then if you want to have a specific KMS key ID, you can have the exact same thing, but this time, the x-amz-server-side-encryption-aws-kms-key-id condition should be equal to the ARN of your KMS key.
- 196_[DVA] S3 Bucket Key.txt:6: Well, this leverages data key and more importantly, this thing called an S3 bucket key.
- 196_[DVA] S3 Bucket Key.txt:14: And so this is an optimization of using SSE-KMS to decrease the number of KMS API calls in order, for example, not to have a high bill or not to go over the limits of encryption within your Amazon S3 Buckets but without compromising on security.
- 197_Large File Upload to S3 with KMS Key.txt:3: So when you upload a large file, of course you must use a multi-part upload.
- 198_S3 Batch Encryption.txt:4: To get the list of all the objects we must encrypt, we must first get the list of all the objects and their associated metadata.
- 198_S3 Batch Encryption.txt:6: Then we want to filter that list and only return on the encrypted objects.
- 198_S3 Batch Encryption.txt:10: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:4: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:12: So for enabling S3 Object Lock, you must first enable versioning.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:21: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:23: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:26: So in this case, most user cannot override or delete an object version or alter its lock settings.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:36: So once you place a legal hold on an object think of like, oh, this object is very important.
- 200_Glacier Vault Lock - Deep Dive.txt:11: We have a Vault Lock policy and so the users can or cannot do things based on the Vault Lock policy but we can also combine it with a vault access policy for more permissions.
- 200_Glacier Vault Lock - Deep Dive.txt:18: Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:22: The thing to know is that once you set a lock, you cannot change it.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:30: You cannot lose this, and it's saying we have 24 hours to validate this policy and complete the lock process.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:42: I cannot change this.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:43: And so this is why vault lock policies are so important, and you need to know them coming into the exam.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:14: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:18: So if you want to only do a rule for the department finance, you can.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:21: But these thumbnails, they can be easily recreated from the original photo and they only need to be kept for 60 days.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:22: But the source images, they should be able to be immediately retrieved for these 60 days and afterwards the user can wait up to six hours.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:27: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:28: After this time, for up to 365 days, deleted objects should be recoverable within 48 hours.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:4: So, to do so, we first must enable Versioning in the source and the destination buckets.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:5: And if we do CRR, so cross-region replication, the two regions must be different.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:9: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:6: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:40: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:64: And now if I go here and refresh, now let's look at one more setting that is important for your exam.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:83: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:2: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- 150_S3 Encryption.txt:9: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- 150_S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 150_S3 Encryption.txt:26: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- 150_S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 150_S3 Encryption.txt:34: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- 150_S3 Encryption.txt:43: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- 150_S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 150_S3 Encryption.txt:50: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- 150_S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 152_S3 Encryption - Hands On.txt:5: And then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- 152_S3 Encryption - Hands On.txt:29: So if we choose from the KMS keys right now, you should have only one key available the AWS/S3 key, and it's called the default KMS key for the S3 service.
- 152_S3 Encryption - Hands On.txt:54: Well, indeed it is missing because SSE-C you can only do from the CLI, not from the console.
- 152_S3 Encryption - Hands On.txt:55: So that means that you cannot enable SSE-C right here.
- 152_S3 Encryption - Hands On.txt:57: So therefore, the only options you can deal with in the console are SSE-S3, SSE-KMS and DSSE-KMS.
- 154_S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 155_S3 CORS Hands On.txt:2: And for this we first must change the index.html files.
- 155_S3 CORS Hands On.txt:20: And to do this, I must first create another extra extra bucket and enable it as a website.
- 155_S3 CORS Hands On.txt:45: So this file should now be a public file on my buckets enabled as a website.
- 155_S3 CORS Hands On.txt:50: And I get a "404 Not Found" because, well, we cannot find the extra-page.html.
- 156_S3 MFA Delete.txt:4: And this is going to give you a code, and that code must be inserted into Amazon S3 before doing important operations.
- 156_S3 MFA Delete.txt:5: So when is MFA going to be required?
- 156_S3 MFA Delete.txt:6: Well, it's going to be required when you want to permanently delete an object version.
- 156_S3 MFA Delete.txt:9: But if you want to enable Versioning or list deleted versions, then the MFA will not be required because these are not dangerous operations.
- 156_S3 MFA Delete.txt:10: So to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- 156_S3 MFA Delete.txt:11: So this is quite complicated because while using the root account is not something you should do a lot, but you will see how do this in the next lecture.
- 157_S3 MFA Delete Hands On.txt:6: As you can see, Multi-Factor authentication (MFA) delete is currently disabled, and you cannot change this through the UI of Amazon console, for some reason.
- 157_S3 MFA Delete Hands On.txt:18: I will remove them, so don't worry about seeing mine, but you should never share your root access key with anyone as well as your secret access key.
- 157_S3 MFA Delete Hands On.txt:55: It says, you cannot delete object because Multi-Factor authentication, MFA deletes is enabled for this bucket.
- 158_S3 Access Logs.txt:5: Now, the target logging buckets must also be in the same AWS region.
- 160_S3 Pre-signed URLs.txt:11: Then you will send this URL to the target user that you want to give access to the file for a limited amount of time.
- 160_S3 Pre-signed URLs.txt:15: So, the examples are to only allow logged-in users to download a premium video of your S3 bucket or to allow an ever-changing list of users to download files by generating URLs dynamically, or to allow, temporarily, a user to upload a file to a precise location in your S3 bucket, while maintaining your S3 bucket private.
- 162_Glacier Vault Lock & S3 Object Lock.txt:4: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- 162_Glacier Vault Lock & S3 Object Lock.txt:12: So for enabling S3 Object Lock, you must first enable versioning.
- 162_Glacier Vault Lock & S3 Object Lock.txt:21: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- 162_Glacier Vault Lock & S3 Object Lock.txt:23: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- 162_Glacier Vault Lock & S3 Object Lock.txt:26: So in this case, most user cannot override or delete an object version or alter its lock settings.
- 162_Glacier Vault Lock & S3 Object Lock.txt:36: So once you place a legal hold on an object think of like, oh, this object is very important.
- 163_S3 Access Points.txt:13: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- 163_S3 Access Points.txt:14: So we're going to create our own read only policy on the analytics access point.
- 163_S3 Access Points.txt:16: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- 163_S3 Access Points.txt:17: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- 163_S3 Access Points.txt:29: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- 163_S3 Access Points.txt:31: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- 164_S3 Object Lambda.txt:8: But then an analytics application may want to only have access to the redacted object.
- 164_S3 Object Lambda.txt:25: As you can see, we only need one S3 bucket but we can create access points and object Lambda to modify the data as we wish.

### 6. Patterns / Architectures
- 026_S3 Security.txt:22: For example, new objects are being created, objects are being removed, objects are being restored, or there is a replication event happening, and the destinations of these S3 events can be SNS, SQS queue and Lambda.
- 026_S3 Security.txt:30: And you have resource-based policy, which is bucket policies, so this is bucket-wide rules for the S3 console, and we've seen that it's very helpful when we have cross-account access, because it allows the accounts who wants to access the S3 buckets not to assume a role and give up its permissions.
- 026_S3 Security.txt:33: So you should use an S3 bucket policy in order to grant public access to the bucket, or force objects to be encrypted at upload, or grant access to another account, cross-account access, and you can get conditions on many different things, and this is very important to remember those.
- 028_S3 Multi-Region Access Points.txt:1: So you also have the possibility to define multi-region access points on Amazon S3.
- 028_S3 Multi-Region Access Points.txt:4: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- 028_S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 028_S3 Multi-Region Access Points.txt:12: Then we create this S3 multi-region access point.
- 028_S3 Multi-Region Access Points.txt:18: And we have a multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:5: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:6: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- 029_S3 Multi-Region Access Points - Hands On.txt:11: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- 029_S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:16: So my multi-region access point is now ready.
- 029_S3 Multi-Region Access Points - Hands On.txt:19: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- 029_S3 Multi-Region Access Points - Hands On.txt:20: And then for Replication and failover, this is where it gets interesting.
- 029_S3 Multi-Region Access Points - Hands On.txt:21: So we have a map of what's happening for your replication and your failover.
- 029_S3 Multi-Region Access Points - Hands On.txt:22: And as you can see right now, we don't have any replication rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:23: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:24: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- 029_S3 Multi-Region Access Points - Hands On.txt:25: So let's create a replication rule.
- 029_S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 029_S3 Multi-Region Access Points - Hands On.txt:33: And finally, let's go ahead and create these replication rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:34: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- 029_S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 029_S3 Multi-Region Access Points - Hands On.txt:36: And you can verify this by also going into your Management, and here you can find your replication rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:39: And just to finish, what you can do is just delete this multi-region access point.
- 147_S3 - Cross Account Access and Canned ACL.txt:48: So let's take an example of the cross-account IAM role.
- 149_S3 - VPC Endpoint Strategy.txt:20: So if we try to summarize what we have in a single VPC architecture, we may have EC2 instances accessing directly Amazon S3 for a gateway endpoint for free.
- 149_S3 - VPC Endpoint Strategy.txt:22: If you have a multi VPC centralized architecture where you want all your network traffic to go through one Central VPC, then an architecture you can have is EC2 instances that connect through Gateway Endpoint to Amazon S3 in their respective VPC because that's free and you can do it.
- 154_[SOA] S3 Multi-Region Access Points.txt:1: So you also have the possibility to define multi-region access points on Amazon S3.
- 154_[SOA] S3 Multi-Region Access Points.txt:4: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- 154_[SOA] S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 154_[SOA] S3 Multi-Region Access Points.txt:12: Then we create this S3 multi-region access point.
- 154_[SOA] S3 Multi-Region Access Points.txt:18: And we have a multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:5: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:6: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:11: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:16: So my multi-region access point is now ready.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:19: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:20: And then for Replication and failover, this is where it gets interesting.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:21: So we have a map of what's happening for your replication and your failover.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:22: And as you can see right now, we don't have any replication rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:23: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:24: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:25: So let's create a replication rule.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:33: And finally, let's go ahead and create these replication rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:34: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:36: And you can verify this by also going into your Management, and here you can find your replication rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:39: And just to finish, what you can do is just delete this multi-region access point.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:1: Now let's talk about Amazon S3 Replication, and there are two flavors of it.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:2: So CRR is for cross-region replication and SRR is for same-region replication.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:3: The idea is that we have an S3 Bucket in one region and a target S3 Bucket in another region, and we want to set up asynchronous replication between these two buckets.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:5: And if we do CRR, so cross-region replication, the two regions must be different.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:8: So the replication mechanism happens behind the scenes, in the background.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:9: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:10: So the use cases for replication are manyfold.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:11: The first one is that if you use cross-region replication, this can be helpful for compliance or for providing lower latency access to your data because it's in another region, or to replicate data across accounts.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:12: For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:13: Okay, so that's it about replication.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:1: So let's practice replication on Amazon S3.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:6: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:11: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:18: So now this has one file but, of course, this does not get replicated yet because we haven't set up replication yet.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:20: So on the origin bucket, what I need to do is to go under Management, scroll down and there are replication rules.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:22: So let's go ahead and create our first replication rule.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:23: So I'll call this one DemoReplicationRule.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:33: So therefore, this is a Cross-Region Replication.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:40: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:43: But this is separate from the replication feature itself.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:47: So we have this Management with a replication rule that is ready.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:58: And this took about 10 seconds on the first replication but we can see that my coffee.jpg has been added into my replica bucket.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:65: So if I go back into Management, and take this and edit this role, we can scroll down and have a look at one setting called the delete marker replication.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:67: So if you enable delete marker replication, then they will be replicated from one bucket to another.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:69: So my replication rules have been saved.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:1: Hey, so just a few notes about Amazon S3 Replications.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:2: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:3: And if you want to replicate existing objects, then you need to use the S3 Batch Replication feature.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:4: So this will replicate the existing objects and the objects that have failed Replication, and in case you have delete operations, you can replicate these delete markers from the source bucket to the target bucket.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:6: Finally, there's no chaining of replications.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:7: So that means that if bucket one has replication to bucket two, and then, bucket two has replication to bucket three, then the objects of bucket one are not replicated into the bucket three, so that's it.

## Step 3 â€” Deep Expansion (Core Data Security Concepts)

### AWS KMS
- What it is: Managed cryptographic key service for encryption operations and key governance.
- Why it exists: Centralizes key lifecycle, policy controls, auditability, and service-integrated encryption.
- Internal working: API-based encrypt/decrypt/key generation with strict policy evaluation and CloudTrail audit events.
- Architecture: Data producer -> KMS key operation -> encrypted artifact -> controlled decrypt path.
- Key components: CMKs/keys, aliases, key policies, grants, rotation, multi-region keys, asymmetric keys.

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

### Phase 1 â€” Foundations
- Cryptography and data-protection primitives for storage, secrets, and certificates.
- Access-control interplay with encryption and retrieval paths.

### Phase 2 â€” Core Services
- Implement key, secret, certificate, and object-level controls based on workload sensitivity.
- Enforce default encryption and least-privilege retrieval paths.

### Phase 3 â€” Advanced Patterns
- Multi-account, cross-region replication and key governance; immutable retention controls.
- Automated secret rotation and cert renewal with failure-safe rollback.

### Phase 4 â€” System Design
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
- AWS KMS
- Amazon EFS
- Amazon S3
- S3 Access Points
- S3 Multi-Region Access Points
- S3 Object Lambda
- S3 Object Lock

### Features (Deduped)
- access points
- certificate
- cors
- envelope encryption
- kms
- mfa delete
- object lock
- vault lock

### Use Cases (Deduped)
- 026_S3 Security.txt:3: And it's good to know, first of all, SSE-S3 which allows you to encrypt S3 objects using keys handled and managed by AWS.
- 026_S3 Security.txt:21: S3 Event Notifications now, which is to retrieve notifications whenever certain events happen in your buckets.
- 026_S3 Security.txt:22: For example, new objects are being created, objects are being removed, objects are being restored, or there is a replication event happening, and the destinations of these S3 events can be SNS, SQS queue and Lambda.
- 026_S3 Security.txt:26: So this will be helpful, for example, to know if your bucket is being public.
- 026_S3 Security.txt:30: And you have resource-based policy, which is bucket policies, so this is bucket-wide rules for the S3 console, and we've seen that it's very helpful when we have cross-account access, because it allows the accounts who wants to access the S3 buckets not to assume a role and give up its permissions.
- 026_S3 Security.txt:39: And this is when you define a VPC endpoint, we saw this in the next slide or the one after, and this is very helpful when you have a private access to your S3 buckets and you want to say, okay, only IP coming from this VPC endpoint or this VPC are allowed.
- 026_S3 Security.txt:50: And so whoever has this pre-signed URL has exact same right that you were given when you created that pre-signed URL.
- 026_S3 Security.txt:52: So when we do use pre-signed URLs?
- 026_S3 Security.txt:53: We will use them, for example, if we want to allow logged-in users to only download a premium video on your S3 buckets on demand, or allow an ever-changing list of users to download files by generating URLs dynamically.
- 026_S3 Security.txt:70: Number one is SourceIP, which is for public IP, and the second one is SourceVpc or SourceVpce, when you have a VPC endpoint to access your S3 buckets.
- 027_S3 Access Points.txt:8: So we can, for example, create a finance access point that is going to be connected to the finance data.
- 027_S3 Access Points.txt:28: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- 028_S3 Multi-Region Access Points.txt:7: So let's have a look at, for example, an example with three regions.
- 028_S3 Multi-Region Access Points.txt:13: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- 028_S3 Multi-Region Access Points.txt:20: Therefore whenever we request an object.
- 028_S3 Multi-Region Access Points.txt:23: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- 028_S3 Multi-Region Access Points.txt:25: This is when you can write to multiple regions at a time.
- 029_S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 030_S3 Object Lambda.txt:1: So there is another use case for EFS three access points and it's called S3 Object Lambda.
- 030_S3 Object Lambda.txt:3: And instead of, for example duplicating our buckets to have different versions of each object, we can use S3 Object Lambda instead.
- 030_S3 Object Lambda.txt:26: So the use cases for it is to redact, for example, PII data.
- 030_S3 Object Lambda.txt:27: So personally identifiable information, for analytics or non-production environments, or for example to convert data from XML to JSON or to perform any kind of transformation you want.
- 030_S3 Object Lambda.txt:28: For example resizing and watermarking images on the fly but the watermark is specific to the user who request the object.
- 146_S3 - Authorization Evaluation Process.txt:2: And that can be quite complicated, but this is just general rule and then we'll drill down into some use cases.
- 146_S3 - Authorization Evaluation Process.txt:5: Does it mean for example, that it has the correct IAM policy.
- 146_S3 - Authorization Evaluation Process.txt:18: If the bucket owner is also the object owner, then the access is granted using a bucket policy and that's the most common use case we've seen so far.
- 146_S3 - Authorization Evaluation Process.txt:39: So this is for example, if you have like public access.
- 146_S3 - Authorization Evaluation Process.txt:44: It's a edge use case, but you need to understand it to really understand how things work.
- 146_S3 - Authorization Evaluation Process.txt:45: And then we'll go into more simple use cases.
- 146_S3 - Authorization Evaluation Process.txt:52: So in this use case, as you can see, we have three different accounts, but in the case where the account two is also the account three, then ACLs are out of the picture.
- 147_S3 - Cross Account Access and Canned ACL.txt:31: It says, "Hey, when I upload an object, I want to grant full control to the accounts A." And that's quite complicated, this is why ACLs are very complicated.
- 147_S3 - Cross Account Access and Canned ACL.txt:37: So if we upload an object and we add the x-amz-acl header for bucket owner full control that means that when we upload an object we also give the object ownership to the bucket owner.
- 147_S3 - Cross Account Access and Canned ACL.txt:50: So when it assumes that role, thanks to the proper policies, then it can access the S3 bucket directly from within the account A.
- 148_S3 - Samples S3 Bucket Policies.txt:11: So here, we deny users that don't have the correct IP and users that do have the correct IP, for example, from a corporate office, are able to do API calls against my S3 buckets.
- 148_S3 - Samples S3 Bucket Policies.txt:17: So for example, this account cannot access it, but that account can access it.
- 149_S3 - VPC Endpoint Strategy.txt:8: So when we have all these things together, it's working.
- 149_S3 - VPC Endpoint Strategy.txt:21: Or if you choose to create an interface endpoint we have a private link into Amazon S3 and the use case would be to use either direct connect or site to site VPN to connect to Amazon S3 through this interface endpoint.
- 149_S3 - VPC Endpoint Strategy.txt:24: For example, if you wanted to centralize traffic through this central VPC, so instead of going through Gateway Endpoint, you could go through a transit gateway into the interface endpoint.
- 149_S3 - VPC Endpoint Strategy.txt:31: For example, in here I restrict access to my bucket if it doesn't come through a specified source VPC.
- 149_S3 - VPC Endpoint Strategy.txt:36: Just remember, the AWS SourceIP condition is for public IP addresses, whereas the VPC SourceIP is for private IP addresses and it is only valid when you start using VPC endpoints.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:9: But the only thing that doesn't get denied in your account when everything else is being denied, is your AWS accounts root user, because deny statement is to not apply to the root user, so therefore using the root user, you can go ahead, safely delete the bucket policy, and create a new one that doesn't lock you out.
- 151_S3 - Block Public Access Settings.txt:2: So when you create a bucket, you will see these on and off type of setting.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:8: So we can, for example, create a finance access point that is going to be connected to the finance data.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:28: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- 153_[SOA] S3 Access Points - Hands On.txt:20: And if you look at the statements, so we allow a specific user, for example, I can take my account ID in here, and say the user Stephane is only going to be able to do get object and put object on, and then I need to specify the proper region.
- 153_[SOA] S3 Access Points - Hands On.txt:39: And in this example we're saying, okay, allow any, when.
- 154_[SOA] S3 Multi-Region Access Points.txt:7: So let's have a look at, for example, an example with three regions.
- 154_[SOA] S3 Multi-Region Access Points.txt:13: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- 154_[SOA] S3 Multi-Region Access Points.txt:20: Therefore whenever we request an object.
- 154_[SOA] S3 Multi-Region Access Points.txt:23: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- 154_[SOA] S3 Multi-Region Access Points.txt:25: This is when you can write to multiple regions at a time.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 156_[SAA_DVA_SOA] S3 CORS.txt:6: For example, if you look at https://www.example.com the implied port is 443 for HTTPS, the protocol is HTTPS itself and the domain of course is www.example.com Now, CORS is a web browser based mechanism of security to allow or to deny request to other origins while visiting the main origin.
- 156_[SAA_DVA_SOA] S3 CORS.txt:9: For example, we have these two URLs, they're share the same origin.
- 156_[SAA_DVA_SOA] S3 CORS.txt:11: For example, www.example.com and other.example.com And so, if our web browser is visiting one website and supposed to make a request to another website as part of the request scheme then these requests will not be fulfilled unless the other origin allows for the request using the CORS header.
- 156_[SAA_DVA_SOA] S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:22: And I will choose it to be in another region, for example, to demonstrate that there are very different servers.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:23: For example, I will put this one in Canada.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:19: Prefix, this is if I wanted to select an optional prefix in my bucket to, for example, have /logs, but we will not do this.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:25: So let's just use the first option, okay, which will be enough for our use case.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:31: So I'll add a file and it'll be, for example, my beach.jpeg.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:37: But what we can do in the meantime is have a look at the Permissions, because when we enabled the server buckets, so when were right here, the Server access logging, when we enabled it, it was saying that the Bucket policy will be updated.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:45: So I can click on one of them and I can open it, for example.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:8: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:35: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:37: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:64: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- 193_S3 Encryption Summary.txt:3: So we've seen SSE-S3 is to encrypt S3 objects using keys handled and managed by AWS.
- 193_S3 Encryption Summary.txt:8: So also, when you do s3:PutObject, you need to make sure you have the kms:GenerateDataKey permission because well, you need to generate a data key to encrypt a large file in Amazon S3.
- 193_S3 Encryption Summary.txt:9: When you use SSE-C, this is when you want to manage your own encryption keys for server-side encryption.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:4: But you can change this to be a different default encryption, for example, SSE-KMS.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:6: So for example, SSC-KMS or SSE-C.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:7: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- 196_[DVA] S3 Bucket Key.txt:3: The number of API calls made to KMS from Amazon S3 when you use the SSE-KMS type of encryption by 99%.
- 196_[DVA] S3 Bucket Key.txt:10: And this key is what's going to be used to encrypt objects in your Amazon S3 Buckets with KMS encryption.
- 196_[DVA] S3 Bucket Key.txt:11: So this extra bucket key is going to generate a lot of data keys using envelope encryption which is going to go into encrypting your S3 Buckets.
- 196_[DVA] S3 Bucket Key.txt:14: And so this is an optimization of using SSE-KMS to decrease the number of KMS API calls in order, for example, not to have a high bill or not to go over the limits of encryption within your Amazon S3 Buckets but without compromising on security.
- 197_Large File Upload to S3 with KMS Key.txt:1: So here is a tricky use case for an exam question, and that is quite unintuitive but makes sense when I explain it.
- 197_Large File Upload to S3 with KMS Key.txt:3: So when you upload a large file, of course you must use a multi-part upload.
- 198_S3 Batch Encryption.txt:3: And for example, what we want to do is to encrypt unencrypted objects.
- 198_S3 Batch Encryption.txt:8: And then finally, while these fit together, we'll be able to encrypt everything.
- 198_S3 Batch Encryption.txt:10: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:24: So it's when you wanna be super compliance.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:31: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:41: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:42: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- 200_Glacier Vault Lock - Deep Dive.txt:5: This is used to restrict user and account permissions, whereas a Vault Lock policy is a policy you lock for regulatory and compliance requirements when you set up a lock.
- 200_Glacier Vault Lock - Deep Dive.txt:9: So for example, you can use this to forbid deleting an archive if less than one year old or to implement write once read many policy, WORM, policy.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:5: So, basically, when a retrieval job is completed, we can receive an SMS notification.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:19: For example, this one is to deny delete permissions for archives less that 365 days old.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:2: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:9: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:12: For example, your access log files, you want to delete them after 365 days.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:13: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:14: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:20: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:25: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:6: So five different use cases.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:9: So for example, we can transition to standard IA after 30 days.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:16: We can also, for example move non-current versions so faster.
- 203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt:20: And for example we want to expire current versions of objects after, and at the bottom you can set it up after 700 days.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:10: So the use cases for replication are manyfold.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:4: And I will set it in one region that I want, for example, eu-west-1.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:11: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:15: What I'm going to do is that in the origin bucket, I'm going to upload a file, so I will add a file of my beach, for example.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:40: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:50: So I'm going to do is now upload a new file, for example, upload the coffee.jpg file.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:70: And so that means that if I go in this bucket, and I choose to delete this file, for example, I delete my coffee.jpg file, let's delete it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:80: So the delete markers are deleted but if you decide to delete a specific version of a file, for example, I delete this one, which is I delete a specific version ID.
- 150_S3 Encryption.txt:8: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- 150_S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 150_S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 150_S3 Encryption.txt:35: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- 150_S3 Encryption.txt:37: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- 150_S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 150_S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 150_S3 Encryption.txt:64: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- 152_S3 Encryption - Hands On.txt:40: So we can do the same process by uploading a file and then we're going to add a file, for example, beach.jpg.
- 152_S3 Encryption - Hands On.txt:56: And finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- 153_S3 Default Encryption.txt:4: But you can change this to be a different default encryption, for example, SSE-KMS.
- 153_S3 Default Encryption.txt:6: So for example, SSC-KMS or SSE-C.
- 153_S3 Default Encryption.txt:7: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- 154_S3 CORS.txt:6: For example, if you look at https://www.example.com the implied port is 443 for HTTPS, the protocol is HTTPS itself and the domain of course is www.example.com Now, CORS is a web browser based mechanism of security to allow or to deny request to other origins while visiting the main origin.
- 154_S3 CORS.txt:9: For example, we have these two URLs, they're share the same origin.
- 154_S3 CORS.txt:11: For example, www.example.com and other.example.com And so, if our web browser is visiting one website and supposed to make a request to another website as part of the request scheme then these requests will not be fulfilled unless the other origin allows for the request using the CORS header.
- 154_S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 155_S3 CORS Hands On.txt:22: And I will choose it to be in another region, for example, to demonstrate that there are very different servers.
- 155_S3 CORS Hands On.txt:23: For example, I will put this one in Canada.
- 156_S3 MFA Delete.txt:3: It could be, for example, a mobile phone with a Google Authenticator application or whatever, or another one for example, or a hardware such as an MFA hardware device.
- 156_S3 MFA Delete.txt:5: So when is MFA going to be required?
- 156_S3 MFA Delete.txt:6: Well, it's going to be required when you want to permanently delete an object version.
- 157_S3 MFA Delete Hands On.txt:49: So let me upload, for example, a copy of the JPEG file, I will upload it, so this is working Now If I go back to my buckets, take that objects and delete it.
- 157_S3 MFA Delete Hands On.txt:53: And if I list my bucket versions now, okay I have two versions for my file, but now if I wanted to, for example, delete this specific version ID.
- 157_S3 MFA Delete Hands On.txt:65: So now if I try another time to delete, for example, delete, the delete marker.
- 159_S3 Access Logs - Hands On.txt:22: This is if I wanted to select an optional prefix in my bucket to for example have slash logs, but we will not do this.
- 159_S3 Access Logs - Hands On.txt:30: Which will be enough for our use case.
- 159_S3 Access Logs - Hands On.txt:35: So I'll add a file and it'll be, for example, my JPEG.
- 159_S3 Access Logs - Hands On.txt:42: Because when we enabled the server bucket.
- 159_S3 Access Logs - Hands On.txt:44: When we enabled it, it was saying that the bucket policy will be updated.
- 159_S3 Access Logs - Hands On.txt:52: So I can click on one of them and I can open it for example.
- 160_S3 Pre-signed URLs.txt:4: So, the idea is that when you generate a pre-signed URL, the user that will get that URL will inherit the permissions of the user that generated that URL for a GET or a PUT.
- 160_S3 Pre-signed URLs.txt:5: So what's the use case?
- 160_S3 Pre-signed URLs.txt:13: And then you will get a file back from the S3 buckets, and the user has being able to download it, for example.
- 160_S3 Pre-signed URLs.txt:14: So, pre-signed URL are a very, very common use case when it comes to temporary access to one specific file for download or even for upload.
- 161_S3 Pre-signed URLs - Hands On.txt:3: And so I click on my coffee.jpg for example, you can take whatever image you want.
- 162_Glacier Vault Lock & S3 Object Lock.txt:24: So it's when you wanna be super compliance.
- 162_Glacier Vault Lock & S3 Object Lock.txt:31: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- 162_Glacier Vault Lock & S3 Object Lock.txt:41: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- 162_Glacier Vault Lock & S3 Object Lock.txt:42: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- 163_S3 Access Points.txt:8: So we can, for example, create a finance access point that is going to be connected to the finance data.
- 163_S3 Access Points.txt:28: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- 164_S3 Object Lambda.txt:1: So there is another use case for EFS three access points and it's called S3 Object Lambda.
- 164_S3 Object Lambda.txt:3: And instead of, for example duplicating our buckets to have different versions of each object, we can use S3 Object Lambda instead.
- 164_S3 Object Lambda.txt:26: So the use cases for it is to redact, for example, PII data.
- 164_S3 Object Lambda.txt:27: So personally identifiable information, for analytics or non-production environments, or for example to convert data from XML to JSON or to perform any kind of transformation you want.
- 164_S3 Object Lambda.txt:28: For example resizing and watermarking images on the fly but the watermark is specific to the user who request the object.

### Constraints / Limitations (Deduped)
- 026_S3 Security.txt:7: The second thing is that it's a very good security in case your bucket is made public, because even if an bucket is made public, or an object is made public, and that object is encrypted with SSE-KMS, then it can never be read because a public anonymous user cannot have access to your KMS key.
- 026_S3 Security.txt:31: Then we have object ACL finer grain, and finally bucket access control list, which is less common, and the exam probably will not talk to you about the ACLs, only talk about the S3 bucket policies because this is the way forward for the exam.
- 026_S3 Security.txt:33: So you should use an S3 bucket policy in order to grant public access to the bucket, or force objects to be encrypted at upload, or grant access to another account, cross-account access, and you can get conditions on many different things, and this is very important to remember those.
- 026_S3 Security.txt:36: And we have a second one called VpcSourceIp, which allows you to get a condition on the private IP, but only if you are using a VPC endpoint.
- 026_S3 Security.txt:39: And this is when you define a VPC endpoint, we saw this in the next slide or the one after, and this is very helpful when you have a private access to your S3 buckets and you want to say, okay, only IP coming from this VPC endpoint or this VPC are allowed.
- 026_S3 Security.txt:43: So it's possible to have a condition on saying only a CloudFront distribution with an origin identity is able to access my S3 bucket policy.
- 026_S3 Security.txt:53: We will use them, for example, if we want to allow logged-in users to only download a premium video on your S3 buckets on demand, or allow an ever-changing list of users to download files by generating URLs dynamically.
- 026_S3 Security.txt:58: Now, the S3 bucket can have a bucket policy, and we can filter, have a condition for the bucket policy by using AWS:SourceIP, and this must be a public IP or an elastic IP, which are public by the way.
- 026_S3 Security.txt:69: And so these will be the two very important conditions to remember for your S3 buckets.
- 026_S3 Security.txt:80: So there should be a lot of things that you already knew, but probably one or two new things in there.
- 026_S3 Security.txt:81: And remember, going into the exam, the very important things is all about the details.
- 026_S3 Security.txt:82: So everything I'm saying about the details is what you should be paying attention on.
- 027_S3 Access Points.txt:13: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- 027_S3 Access Points.txt:14: So we're going to create our own read only policy on the analytics access point.
- 027_S3 Access Points.txt:16: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- 027_S3 Access Points.txt:17: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- 027_S3 Access Points.txt:29: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- 027_S3 Access Points.txt:31: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- 028_S3 Multi-Region Access Points.txt:3: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- 028_S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 029_S3 Multi-Region Access Points - Hands On.txt:10: But you only have one bucket per AWS region as far as it goes right now.
- 029_S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 029_S3 Multi-Region Access Points - Hands On.txt:31: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- 030_S3 Object Lambda.txt:8: But then an analytics application may want to only have access to the redacted object.
- 030_S3 Object Lambda.txt:25: As you can see, we only need one S3 bucket but we can create access points and object Lambda to modify the data as we wish.
- 146_S3 - Authorization Evaluation Process.txt:6: And if the parent owns the bucket or the object, because you should know that you have different level of ownerships within buckets and we'll talk about those in details as well.
- 146_S3 - Authorization Evaluation Process.txt:24: And just remember SCLs are somewhat out of the picture so they can be not considered, but as a security specialist you should still know about them.
- 146_S3 - Authorization Evaluation Process.txt:51: And so that means that account three should have authorized account one to access the object.
- 146_S3 - Authorization Evaluation Process.txt:53: And the only thing that can be considered is the bucket policy.
- 146_S3 - Authorization Evaluation Process.txt:54: Finally, to understand how authorization works in Amazon S3, we must talk about bucket operations versus object operations.
- 147_S3 - Cross Account Access and Canned ACL.txt:6: So, this only works if the bucket owner enforced setting is equals to disabled.
- 147_S3 - Cross Account Access and Canned ACL.txt:27: So even though the S3 bucket is owned by account B, the objects within may be owned only by the users, or the roles, or the accounts, that actually upload these objects.
- 147_S3 - Cross Account Access and Canned ACL.txt:41: Now, ACLs are not recommended, but I'm still teaching them to you because it's important for you to know about them.
- 147_S3 - Cross Account Access and Canned ACL.txt:43: So you cannot use ACL anymore from that point at least by default.
- 147_S3 - Cross Account Access and Canned ACL.txt:45: So that's only the Bucket policies the IAM policies, the SCP and the VPC Endpoint Policies, will control access to your S3 bucket objects.
- 148_S3 - Samples S3 Bucket Policies.txt:7: Now you should know about this condition.
- 148_S3 - Samples S3 Bucket Policies.txt:13: So we have an S3 bucket and we want to restrict access only for specific users.
- 148_S3 - Samples S3 Bucket Policies.txt:17: So for example, this account cannot access it, but that account can access it.
- 149_S3 - VPC Endpoint Strategy.txt:3: So this doesn't have any costs and it can only be accessed by resources within the VPC where it's created.
- 149_S3 - VPC Endpoint Strategy.txt:9: Just remember that Gateway Endpoints can only be accessed by resources within your VPC but not elsewhere, so Direct Connect does not work, side to side VPN does not work, and so on VPC peering does not work, only stuff within your VPC.
- 149_S3 - VPC Endpoint Strategy.txt:19: The only thing you can use is the public DNS name of Amazon s3, but the traffic will still resolve to the VPC interface endpoint within your VPC.
- 149_S3 - VPC Endpoint Strategy.txt:26: So at the exam, you will have indicators whether or not you should use Gateway or interface and it's up to you to choose the right one of course but you have enough information now to really understand the differences.
- 149_S3 - VPC Endpoint Strategy.txt:32: Now this condition can only work if you have a VPC endpoint.
- 149_S3 - VPC Endpoint Strategy.txt:36: Just remember, the AWS SourceIP condition is for public IP addresses, whereas the VPC SourceIP is for private IP addresses and it is only valid when you start using VPC endpoints.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:5: Literally, once you attach this bucket policy, you cannot do anything.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:6: Users cannot access your data, you cannot even change the bucket policy because while that is an API call on top of your S bracket.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:9: But the only thing that doesn't get denied in your account when everything else is being denied, is your AWS accounts root user, because deny statement is to not apply to the root user, so therefore using the root user, you can go ahead, safely delete the bucket policy, and create a new one that doesn't lock you out.
- 150_S3 - Regain Access to Locked S3 Bucket.txt:12: It should make sense but worth saying in that may get you one point at the exam.
- 151_S3 - Block Public Access Settings.txt:5: So this was created in order to prevent company data leaks, because while companies used to set their buckets as public and now we have restrictions that if you know that your bucket should never be public no matter what, we'll leave these on, and even if you set a bucket policy that allows your bucket to be public, it's going to be blocked.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:13: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:14: So we're going to create our own read only policy on the analytics access point.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:16: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:17: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:29: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- 152_[SAA_DVA_SOA] S3 Access Points.txt:31: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- 153_[SOA] S3 Access Points - Hands On.txt:14: So let's say we want to ensure that this bucket name right here is only accessed through a access powering policy and it will only give access to a subfolder.
- 153_[SOA] S3 Access Points - Hands On.txt:20: And if you look at the statements, so we allow a specific user, for example, I can take my account ID in here, and say the user Stephane is only going to be able to do get object and put object on, and then I need to specify the proper region.
- 153_[SOA] S3 Access Points - Hands On.txt:26: So this is going to only allow me to write to the directory Stephane star, which is I think pretty cool.
- 153_[SOA] S3 Access Points - Hands On.txt:33: Well, because we've created an access point in here, and that means that if we access our S3 buckets through this access point and my Stephane user access it through this access point, then it's only gonna be allowed to access a specific sub directory.
- 153_[SOA] S3 Access Points - Hands On.txt:45: So effectively what we're saying is that, this S3 bucket can only be accessed if you are using an access points coming from this accounts.
- 153_[SOA] S3 Access Points - Hands On.txt:47: So this is good because now what we're doing, is that we're saying, hey, you can only access this buckets, okay, through the access points.
- 154_[SOA] S3 Multi-Region Access Points.txt:3: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- 154_[SOA] S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:10: But you only have one bucket per AWS region as far as it goes right now.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:31: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- 156_[SAA_DVA_SOA] S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:2: And for this we first must change the index.html files.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:20: And to do this, I must first create another extra extra bucket and enable it as a website.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:45: So this file should now be a public file on my buckets enabled as a website.
- 157_[SAA_DVA_SOA] S3 CORS - Hands On.txt:50: And I get a "404 Not Found" because, well, we cannot find the extra-page.html.
- 158_[SAA_DVA_SOA] S3 Access Logs.txt:5: Now, the target logging buckets must also be in the same AWS region.
- 159_S3 Access Logs - Permissions.txt:3: The destination bucket must have a bucket policy.
- 159_S3 Access Logs - Permissions.txt:5: The important thing to note here is that the resource this bucket applies to should be the destination-bucket/*, saying that any path on this bucket should be allowed the operation s3:PutObject as long as the source arn, so that means the source bucket, the source origin of this request is the arn of the source bucket on the left-hand side.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:9: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:26: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:34: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:43: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:50: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 195_S3 Bucket Policies Examples.txt:7: Well, again, you would have a Deny statement and you're saying, "Hey, I want to make sure that this header right here is equal to aws:kms." And then if you want to have a specific KMS key ID, you can have the exact same thing, but this time, the x-amz-server-side-encryption-aws-kms-key-id condition should be equal to the ARN of your KMS key.
- 196_[DVA] S3 Bucket Key.txt:6: Well, this leverages data key and more importantly, this thing called an S3 bucket key.
- 196_[DVA] S3 Bucket Key.txt:14: And so this is an optimization of using SSE-KMS to decrease the number of KMS API calls in order, for example, not to have a high bill or not to go over the limits of encryption within your Amazon S3 Buckets but without compromising on security.
- 197_Large File Upload to S3 with KMS Key.txt:3: So when you upload a large file, of course you must use a multi-part upload.
- 198_S3 Batch Encryption.txt:4: To get the list of all the objects we must encrypt, we must first get the list of all the objects and their associated metadata.
- 198_S3 Batch Encryption.txt:6: Then we want to filter that list and only return on the encrypted objects.
- 198_S3 Batch Encryption.txt:10: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:4: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:12: So for enabling S3 Object Lock, you must first enable versioning.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:21: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:23: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:26: So in this case, most user cannot override or delete an object version or alter its lock settings.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:36: So once you place a legal hold on an object think of like, oh, this object is very important.
- 200_Glacier Vault Lock - Deep Dive.txt:11: We have a Vault Lock policy and so the users can or cannot do things based on the Vault Lock policy but we can also combine it with a vault access policy for more permissions.
- 200_Glacier Vault Lock - Deep Dive.txt:18: Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:22: The thing to know is that once you set a lock, you cannot change it.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:30: You cannot lose this, and it's saying we have 24 hours to validate this policy and complete the lock process.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:42: I cannot change this.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:43: And so this is why vault lock policies are so important, and you need to know them coming into the exam.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:14: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:18: So if you want to only do a rule for the department finance, you can.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:21: But these thumbnails, they can be easily recreated from the original photo and they only need to be kept for 60 days.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:22: But the source images, they should be able to be immediately retrieved for these 60 days and afterwards the user can wait up to six hours.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:27: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:28: After this time, for up to 365 days, deleted objects should be recoverable within 48 hours.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:4: So, to do so, we first must enable Versioning in the source and the destination buckets.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:5: And if we do CRR, so cross-region replication, the two regions must be different.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:9: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:6: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:40: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:64: And now if I go here and refresh, now let's look at one more setting that is important for your exam.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:83: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:2: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- 150_S3 Encryption.txt:9: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- 150_S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 150_S3 Encryption.txt:26: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- 150_S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 150_S3 Encryption.txt:34: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- 150_S3 Encryption.txt:43: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- 150_S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 150_S3 Encryption.txt:50: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- 150_S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 152_S3 Encryption - Hands On.txt:5: And then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- 152_S3 Encryption - Hands On.txt:29: So if we choose from the KMS keys right now, you should have only one key available the AWS/S3 key, and it's called the default KMS key for the S3 service.
- 152_S3 Encryption - Hands On.txt:54: Well, indeed it is missing because SSE-C you can only do from the CLI, not from the console.
- 152_S3 Encryption - Hands On.txt:55: So that means that you cannot enable SSE-C right here.
- 152_S3 Encryption - Hands On.txt:57: So therefore, the only options you can deal with in the console are SSE-S3, SSE-KMS and DSSE-KMS.
- 154_S3 CORS.txt:17: And as part of the result the index that HTML file retrieved is gonna say, Hey, you must also get some images, for example, from this other web server.
- 155_S3 CORS Hands On.txt:2: And for this we first must change the index.html files.
- 155_S3 CORS Hands On.txt:20: And to do this, I must first create another extra extra bucket and enable it as a website.
- 155_S3 CORS Hands On.txt:45: So this file should now be a public file on my buckets enabled as a website.
- 155_S3 CORS Hands On.txt:50: And I get a "404 Not Found" because, well, we cannot find the extra-page.html.
- 156_S3 MFA Delete.txt:4: And this is going to give you a code, and that code must be inserted into Amazon S3 before doing important operations.
- 156_S3 MFA Delete.txt:5: So when is MFA going to be required?
- 156_S3 MFA Delete.txt:6: Well, it's going to be required when you want to permanently delete an object version.
- 156_S3 MFA Delete.txt:9: But if you want to enable Versioning or list deleted versions, then the MFA will not be required because these are not dangerous operations.
- 156_S3 MFA Delete.txt:10: So to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- 156_S3 MFA Delete.txt:11: So this is quite complicated because while using the root account is not something you should do a lot, but you will see how do this in the next lecture.
- 157_S3 MFA Delete Hands On.txt:6: As you can see, Multi-Factor authentication (MFA) delete is currently disabled, and you cannot change this through the UI of Amazon console, for some reason.
- 157_S3 MFA Delete Hands On.txt:18: I will remove them, so don't worry about seeing mine, but you should never share your root access key with anyone as well as your secret access key.
- 157_S3 MFA Delete Hands On.txt:55: It says, you cannot delete object because Multi-Factor authentication, MFA deletes is enabled for this bucket.
- 158_S3 Access Logs.txt:5: Now, the target logging buckets must also be in the same AWS region.
- 160_S3 Pre-signed URLs.txt:11: Then you will send this URL to the target user that you want to give access to the file for a limited amount of time.
- 160_S3 Pre-signed URLs.txt:15: So, the examples are to only allow logged-in users to download a premium video of your S3 bucket or to allow an ever-changing list of users to download files by generating URLs dynamically, or to allow, temporarily, a user to upload a file to a precise location in your S3 bucket, while maintaining your S3 bucket private.
- 162_Glacier Vault Lock & S3 Object Lock.txt:4: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- 162_Glacier Vault Lock & S3 Object Lock.txt:12: So for enabling S3 Object Lock, you must first enable versioning.
- 162_Glacier Vault Lock & S3 Object Lock.txt:21: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- 162_Glacier Vault Lock & S3 Object Lock.txt:23: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- 162_Glacier Vault Lock & S3 Object Lock.txt:26: So in this case, most user cannot override or delete an object version or alter its lock settings.
- 162_Glacier Vault Lock & S3 Object Lock.txt:36: So once you place a legal hold on an object think of like, oh, this object is very important.
- 163_S3 Access Points.txt:13: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- 163_S3 Access Points.txt:14: So we're going to create our own read only policy on the analytics access point.
- 163_S3 Access Points.txt:16: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- 163_S3 Access Points.txt:17: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- 163_S3 Access Points.txt:29: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- 163_S3 Access Points.txt:31: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- 164_S3 Object Lambda.txt:8: But then an analytics application may want to only have access to the redacted object.
- 164_S3 Object Lambda.txt:25: As you can see, we only need one S3 bucket but we can create access points and object Lambda to modify the data as we wish.

### Patterns / Architectures (Deduped)
- 026_S3 Security.txt:22: For example, new objects are being created, objects are being removed, objects are being restored, or there is a replication event happening, and the destinations of these S3 events can be SNS, SQS queue and Lambda.
- 026_S3 Security.txt:30: And you have resource-based policy, which is bucket policies, so this is bucket-wide rules for the S3 console, and we've seen that it's very helpful when we have cross-account access, because it allows the accounts who wants to access the S3 buckets not to assume a role and give up its permissions.
- 026_S3 Security.txt:33: So you should use an S3 bucket policy in order to grant public access to the bucket, or force objects to be encrypted at upload, or grant access to another account, cross-account access, and you can get conditions on many different things, and this is very important to remember those.
- 028_S3 Multi-Region Access Points.txt:1: So you also have the possibility to define multi-region access points on Amazon S3.
- 028_S3 Multi-Region Access Points.txt:4: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- 028_S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 028_S3 Multi-Region Access Points.txt:12: Then we create this S3 multi-region access point.
- 028_S3 Multi-Region Access Points.txt:18: And we have a multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:5: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:6: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- 029_S3 Multi-Region Access Points - Hands On.txt:11: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- 029_S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 029_S3 Multi-Region Access Points - Hands On.txt:16: So my multi-region access point is now ready.
- 029_S3 Multi-Region Access Points - Hands On.txt:19: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- 029_S3 Multi-Region Access Points - Hands On.txt:20: And then for Replication and failover, this is where it gets interesting.
- 029_S3 Multi-Region Access Points - Hands On.txt:21: So we have a map of what's happening for your replication and your failover.
- 029_S3 Multi-Region Access Points - Hands On.txt:22: And as you can see right now, we don't have any replication rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:23: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:24: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- 029_S3 Multi-Region Access Points - Hands On.txt:25: So let's create a replication rule.
- 029_S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 029_S3 Multi-Region Access Points - Hands On.txt:33: And finally, let's go ahead and create these replication rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:34: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- 029_S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 029_S3 Multi-Region Access Points - Hands On.txt:36: And you can verify this by also going into your Management, and here you can find your replication rules.
- 029_S3 Multi-Region Access Points - Hands On.txt:39: And just to finish, what you can do is just delete this multi-region access point.
- 147_S3 - Cross Account Access and Canned ACL.txt:48: So let's take an example of the cross-account IAM role.
- 149_S3 - VPC Endpoint Strategy.txt:20: So if we try to summarize what we have in a single VPC architecture, we may have EC2 instances accessing directly Amazon S3 for a gateway endpoint for free.
- 149_S3 - VPC Endpoint Strategy.txt:22: If you have a multi VPC centralized architecture where you want all your network traffic to go through one Central VPC, then an architecture you can have is EC2 instances that connect through Gateway Endpoint to Amazon S3 in their respective VPC because that's free and you can do it.
- 154_[SOA] S3 Multi-Region Access Points.txt:1: So you also have the possibility to define multi-region access points on Amazon S3.
- 154_[SOA] S3 Multi-Region Access Points.txt:4: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- 154_[SOA] S3 Multi-Region Access Points.txt:11: And as you can see, we must have replication rules across all buckets to one another.
- 154_[SOA] S3 Multi-Region Access Points.txt:12: Then we create this S3 multi-region access point.
- 154_[SOA] S3 Multi-Region Access Points.txt:18: And we have a multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:5: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:6: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:11: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:12: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:16: So my multi-region access point is now ready.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:19: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:20: And then for Replication and failover, this is where it gets interesting.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:21: So we have a map of what's happening for your replication and your failover.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:22: And as you can see right now, we don't have any replication rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:23: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:24: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:25: So let's create a replication rule.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:28: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:33: And finally, let's go ahead and create these replication rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:34: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:35: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:36: And you can verify this by also going into your Management, and here you can find your replication rules.
- 155_[SOA] S3 Multi-Region Access Points - Hands On.txt:39: And just to finish, what you can do is just delete this multi-region access point.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:1: Now let's talk about Amazon S3 Replication, and there are two flavors of it.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:2: So CRR is for cross-region replication and SRR is for same-region replication.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:3: The idea is that we have an S3 Bucket in one region and a target S3 Bucket in another region, and we want to set up asynchronous replication between these two buckets.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:5: And if we do CRR, so cross-region replication, the two regions must be different.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:8: So the replication mechanism happens behind the scenes, in the background.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:9: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:10: So the use cases for replication are manyfold.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:11: The first one is that if you use cross-region replication, this can be helpful for compliance or for providing lower latency access to your data because it's in another region, or to replicate data across accounts.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:12: For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- 204_[CCP_SAA_DVA_SOA] S3 Replication.txt:13: Okay, so that's it about replication.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:1: So let's practice replication on Amazon S3.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:6: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:11: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:18: So now this has one file but, of course, this does not get replicated yet because we haven't set up replication yet.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:20: So on the origin bucket, what I need to do is to go under Management, scroll down and there are replication rules.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:22: So let's go ahead and create our first replication rule.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:23: So I'll call this one DemoReplicationRule.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:33: So therefore, this is a Cross-Region Replication.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:40: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:43: But this is separate from the replication feature itself.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:47: So we have this Management with a replication rule that is ready.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:58: And this took about 10 seconds on the first replication but we can see that my coffee.jpg has been added into my replica bucket.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:65: So if I go back into Management, and take this and edit this role, we can scroll down and have a look at one setting called the delete marker replication.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:67: So if you enable delete marker replication, then they will be replicated from one bucket to another.
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:69: So my replication rules have been saved.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:1: Hey, so just a few notes about Amazon S3 Replications.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:2: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:3: And if you want to replicate existing objects, then you need to use the S3 Batch Replication feature.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:4: So this will replicate the existing objects and the objects that have failed Replication, and in case you have delete operations, you can replicate these delete markers from the source bucket to the target bucket.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:6: Finally, there's no chaining of replications.
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:7: So that means that if bucket one has replication to bucket two, and then, bucket two has replication to bucket three, then the objects of bucket one are not replicated into the bucket three, so that's it.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: And what I need to do is click on it and click on my security credentials.
- Signal 2: So if you open it, you will find that this part has been commented out and this part is to demo CORS.
- Signal 3: For this, we're going to create a new bucket.
- Signal 4: CORS and pre-signed URL misuse can create accidental data leakage.
- Signal 5: Key Insights: And you have resource-based policy, which is bucket policies, so this is bucket-wide rules for the S3 console, and we've seen that it's very helpful when we have cross-account access, because it allows the accounts who wants to access the S3 buckets not to assume a role and give up its permissions.
- Signal 6: Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Signal 7: Key Insights: Well, we can create what's called S3 access points.
- Signal 8: Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Signal 9: Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Signal 10: Key Insights: So we're going to create our own read only policy on the analytics access point.

### Service-Specific Lab Paths
### Activity 1: Amazon S3 Lab for S3 encryption and access controls, access points, CORS, MFA Delete, access logs, object lock
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

### Activity 2: IAM Lab for S3 encryption and access controls, access points, CORS, MFA Delete, access logs, object lock
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

### Activity 3: Amazon VPC Lab for S3 encryption and access controls, access points, CORS, MFA Delete, access logs, object lock
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

### Activity 4: Amazon CloudWatch Lab for S3 encryption and access controls, access points, CORS, MFA Delete, access logs, object lock
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

Use this lens to study S3 encryption and access controls, access points, CORS, MFA Delete, access logs, object lock in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |
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

