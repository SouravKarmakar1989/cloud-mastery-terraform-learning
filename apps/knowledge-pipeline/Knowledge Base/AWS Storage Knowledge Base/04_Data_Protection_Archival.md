# 04_Data_Protection_Archival.md

## Scope
- Topic: Encryption, immutability, archival, retention, and recovery-oriented storage controls
- Files processed: 32
- Extracted non-empty transcript lines: 1348
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Storage Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Storage: Data Protection Archival)

This section is the study-first architecture guide for encryption, immutability, archival, retention, and recovery-oriented storage controls.

### Phase 1 - Foundations

#### Module: Data Protection Archival Mental Model
- Use data protection archival decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Data Protection Archival Mental Model
- Primary transcript files:
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/162_Glacier Vault Lock & S3 Object Lock.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/200_Glacier Vault Lock - Deep Dive.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/201_[SOA] Glacier Vault Lock - Hands On.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/083_Demo - In-Transit Encryption.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/141_S3 Encryption.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/150_S3 Encryption.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/074_Protecting Your Data with Amazon S3 Encryption.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/075_Introduction to Client-Side Encryption.txt
- Top concept clusters from transcript metadata:
- Data Protection and Immutability
- Object Storage Patterns
- Block and File Storage Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 32
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1348
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- So for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- The compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- So let's do a deep dive on Amazon S3 Glacier vault policies and Vault Lock.
- So, let's have a play with vault locks by going into the Glacier Console.
- So now let's talk about S3 Glacier Vault Lock.
- Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- So by changing that bucket policy, we are able to block anybody that's accessing our bucket coming in under an insecure protocol, meaning Http, and they're not using TLS to access our bucket and that ensures that we have in-transit encryption between all of our clients and our S3 bucket and objects.
- So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- So again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- So the first option that we have for our data before we ever even think about moving it to a cloud or any other device is, well, we can encrypt it using something like an AWS encryption SDK or other options that we have available to us on premises.
- If you want to manage the encryption process, but you still want to manage the encryption keys for you, maybe you don't have a solution on prem or you know what, we're just going all in on AWS, so we want to manage that for us.

##### Polished Architect Notes
- Transcript signals that so that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Transcript signals that so for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Transcript signals that the compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- Transcript signals that so let's do a deep dive on Amazon S3 Glacier vault policies and Vault Lock.
- Transcript signals that so, let's have a play with vault locks by going into the Glacier Console.
- Transcript signals that so now let's talk about S3 Glacier Vault Lock.
- Transcript signals that once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- Transcript signals that so by changing that bucket policy, we are able to block anybody that's accessing our bucket coming in under an insecure protocol, meaning Http, and they're not using TLS to access our bucket and that ensures that we have in-transit encryption between all of our clients and our S3 bucket and objects.
- Transcript signals that so SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Transcript signals that so again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- Transcript signals that so the first option that we have for our data before we ever even think about moving it to a cloud or any other device is, well, we can encrypt it using something like an AWS encryption SDK or other options that we have available to us on premises.
- Transcript signals that if you want to manage the encryption process, but you still want to manage the encryption keys for you, maybe you don't have a solution on prem or you know what, we're just going all in on AWS, so we want to manage that for us.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Design implication: so for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Design implication: the compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- Design implication: so let's do a deep dive on Amazon S3 Glacier vault policies and Vault Lock.
- Design implication: so, let's have a play with vault locks by going into the Glacier Console.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/200_Glacier Vault Lock - Deep Dive.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/083_Demo - In-Transit Encryption.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/141_S3 Encryption.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/150_S3 Encryption.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/074_Protecting Your Data with Amazon S3 Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/147_S3 MFA Delete.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/156_S3 MFA Delete.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/075_Introduction to Client-Side Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/143_S3 Encryption - Hands On.txt
- Top concept clusters from transcript metadata:
- Data Protection and Immutability
- Object Storage Patterns
- Block and File Storage Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 32
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1348
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- So by changing that bucket policy, we are able to block anybody that's accessing our bucket coming in under an insecure protocol, meaning Http, and they're not using TLS to access our bucket and that ensures that we have in-transit encryption between all of our clients and our S3 bucket and objects.
- So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- So again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- So the first option that we have for our data before we ever even think about moving it to a cloud or any other device is, well, we can encrypt it using something like an AWS encryption SDK or other options that we have available to us on premises.
- So to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- If you want to manage the encryption process, but you still want to manage the encryption keys for you, maybe you don't have a solution on prem or you know what, we're just going all in on AWS, so we want to manage that for us.
- And finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- So encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- So anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- And so the current version, if we scroll down and go under service side encryption, as we can see it is indeed encrypted with SSE-KMS with this encryption key, which corresponds to the default AWS/S3 KMS key.
- So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.

##### Polished Architect Notes
- Transcript signals that once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- Transcript signals that so by changing that bucket policy, we are able to block anybody that's accessing our bucket coming in under an insecure protocol, meaning Http, and they're not using TLS to access our bucket and that ensures that we have in-transit encryption between all of our clients and our S3 bucket and objects.
- Transcript signals that so SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Transcript signals that so again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- Transcript signals that so the first option that we have for our data before we ever even think about moving it to a cloud or any other device is, well, we can encrypt it using something like an AWS encryption SDK or other options that we have available to us on premises.
- Transcript signals that so to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- Transcript signals that if you want to manage the encryption process, but you still want to manage the encryption keys for you, maybe you don't have a solution on prem or you know what, we're just going all in on AWS, so we want to manage that for us.
- Transcript signals that and finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- Transcript signals that so encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- Transcript signals that so anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- Transcript signals that and so the current version, if we scroll down and go under service side encryption, as we can see it is indeed encrypted with SSE-KMS with this encryption key, which corresponds to the default AWS/S3 KMS key.
- Transcript signals that so that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- Design implication: so by changing that bucket policy, we are able to block anybody that's accessing our bucket coming in under an insecure protocol, meaning Http, and they're not using TLS to access our bucket and that ensures that we have in-transit encryption between all of our clients and our S3 bucket and objects.
- Design implication: so SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Design implication: so again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- Design implication: so the first option that we have for our data before we ever even think about moving it to a cloud or any other device is, well, we can encrypt it using something like an AWS encryption SDK or other options that we have available to us on premises.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/162_Glacier Vault Lock & S3 Object Lock.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/194_[SAA_DVA_SOA] S3 Default Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/144_S3 Default Encryption.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/153_S3 Default Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/143_S3 Encryption - Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/152_S3 Encryption - Hands On.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/095_Amazon S3 MFA Delete.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt
- outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/141_S3 Encryption.txt
- Top concept clusters from transcript metadata:
- Data Protection and Immutability
- Object Storage Patterns
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 32
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1348
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- So that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- And here we can specify an encryption key to either use the default encryption mechanism or to override it with SSE-S3, SSE-KMS or DSSE-KMS.
- Now MFA delete in Amazon S3 World helps us protect against accidental deletions by adding an additional layer of security to our S3 bucket.
- And then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- So for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- And by the way, bucket policies are always going to be evaluated before your default encryption settings.
- And for this, we're going to override the bucket settings for default encryption for this one object.
- But you can change this to be a different default encryption, for example, SSE-KMS.
- The compliance mode looks a lot like what we had for S3 Glacier Vault Lock.

##### Polished Architect Notes
- Transcript signals that so that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Transcript signals that so that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Transcript signals that and here we can specify an encryption key to either use the default encryption mechanism or to override it with SSE-S3, SSE-KMS or DSSE-KMS.
- Transcript signals that now MFA delete in Amazon S3 World helps us protect against accidental deletions by adding an additional layer of security to our S3 bucket.
- Transcript signals that and then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- Transcript signals that so for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Transcript signals that the object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Transcript signals that and by the way, bucket policies are always going to be evaluated before your default encryption settings.
- Transcript signals that and for this, we're going to override the bucket settings for default encryption for this one object.
- Transcript signals that but you can change this to be a different default encryption, for example, SSE-KMS.
- Transcript signals that the compliance mode looks a lot like what we had for S3 Glacier Vault Lock.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Design implication: so that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Design implication: and here we can specify an encryption key to either use the default encryption mechanism or to override it with SSE-S3, SSE-KMS or DSSE-KMS.
- Design implication: now MFA delete in Amazon S3 World helps us protect against accidental deletions by adding an additional layer of security to our S3 bucket.
- Design implication: and then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.

### Phase 2 - Core Services
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- Amazon Athena should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- AWS CloudTrail should be understood in terms of request path, control plane, and operational boundary.
- Amazon ECR should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Block and File Storage Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Protection and Immutability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Hybrid Transfer and Mobility becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lifecycle Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Object Storage Patterns becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design data protection archival with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when data protection archival decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

- No secondary referral sources were required for this topic.

## CloudOps / SysOps Exam Enrichments
> Source: aws-certified-cloudops-associate transcripts — 252_[SAA] AWS Backup.txt, 270_KMS For CloudOps.txt

### AWS Backup — Centralised Backup Service
- Fully managed service to centrally manage and automate backups across AWS services — no custom scripts or manual processes needed.
- **Supported services**: EC2, EBS, Amazon S3, RDS (all engines), Aurora, DynamoDB, DocumentDB, Neptune, EFS, FSx (for Lustre and for Windows File Server), AWS Storage Gateway (Volume Gateway).
- **Cross-region backups**: backup data can be pushed to a different AWS region for DR — managed in one central place.
- **Cross-account backups**: supported when using AWS Organizations multi-account strategy.
- **Point-in-time recovery (PITR)**: supported for services that offer it (e.g., Aurora).
- **On-demand and scheduled backups**: supported simultaneously.
- **Tag-based backup policies**: apply backup plans only to resources tagged with specific values (e.g., `Env=Production`).
- **Backup Plans**: define frequency (every 12h, daily, weekly, monthly, or cron expression), Backup Window, cold storage transition (after N days/weeks/months/years), and retention period.
- Backup data is stored in an **internal S3 bucket** that is fully managed by AWS Backup — not directly accessible by the user.
- **Backup Vault Lock (WORM)**: enforce a Write Once Read Many policy on a Backup Vault — all backups in the vault cannot be deleted; even the **root user cannot delete backups** when Vault Lock is enabled. Protects against accidental or malicious delete and against retention period shortening.

### KMS Key Deletion Lifecycle (Storage Impact)
- A CMK (Customer-Managed Key) can be **scheduled for deletion** with a waiting period of **7 to 30 days** (configurable).
- During the waiting period the key enters **Pending Deletion** state:
	- The key **cannot be used for any cryptographic operations** (encrypt, decrypt, generate data key).
	- Impact: any S3 object encrypted with that CMK will **fail to be downloaded** during this period.
	- Scheduled key rotation will not occur during pending deletion.
- **Cancel deletion** is available during the waiting period — use `disable` first if you are unsure whether the key is still needed.
- **Automation to detect key-still-in-use**:
	1. Schedule CMK deletion → key enters Pending Deletion
	2. Enable **CloudTrail** to log all API calls against the key
	3. Denied cryptographic API calls (e.g., `Decrypt`, `Encrypt`) are logged to **CloudWatch Logs**
	4. Create a **CloudWatch Logs Metric Filter** that matches the phrase `"pending deletion"`
	5. Set a **CloudWatch Alarm** on that metric → trigger an **SNS notification** (email/SMS)
	6. Receipt of the alert confirms the CMK is still being used → cancel deletion and investigate

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/158_[SAA_DVA_SOA] S3 Access Logs.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now, let's talk about S3 Access Logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for audit purposes, you may want to log all the access made into your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that means that any request made to your S3 bucket from any account, whether or not it's authorized or denied, is going to be logged as a file into another S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: Amazon Athena
- Key Insights: And that data then can be analyzed using data analysis tool such as Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Now, the target logging buckets must also be in the same AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, you're going to request against your S3 buckets, and then you're going to enable the access logs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's all the requests are being logged into the logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, there's a specific format to this logs, and you can find it at this URL to find the log formats.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, with access logs, there is a little bit of warning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Never ever set your logging bucket to be the same as the bucket you are monitoring, because otherwise, it will create a logging loop and it will be infinite and your bucket will grow in size exponentially.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: While you do put object, but the app bucket and the logging bucket is the same.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there will be a logging loop and you will log that again and log that again and log that again and you will pay a lot of money.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So do not try this at home.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's go ahead and practice S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And for this I'm going to create an S3 access log, stephane-v3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then I will go ahead and create that bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that bucket is going to be our logging bucket, and I'm going to keep this open here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in another tab I'm going to take one of my buckets that I've created, and then I'm going to enable the logging.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I just took one bucket, but whatever bucket you want for you really.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will go on Properties and then I will scroll down and look for Server access logging.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we edit it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's Enable it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see, the Bucket policy will be updated for the target bucket where we want to write data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So first we have to specify a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, oops.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'm going to go in my bucket and type access.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So stephane access log v3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This is the bucket I want and I will choose this as my destination.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have a destination region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have the destination bucket name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Prefix, this is if I wanted to select an optional prefix in my bucket to, for example, have /logs, but we will not do this.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the Log object key format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have this format right here, and there is an example here given to me as the log key example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Or if I use the second one, I can also specify a different S3 event time or a log file delivery time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, this would change my final key format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Right now we're going to keep it as default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's just use the first option, okay, which will be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then click on Save changes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And now my S3 Server access logging is enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now what I can do is I can go to my objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can click on this one, I can maybe open it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Back into my bucket, I can go in it and I can upload a file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll add a file and it'll be, for example, my beach.jpeg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can do a lot of things in your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all of this is going to generate activity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And this activity is going to be logged into your logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if I refresh, as you can see, nothing happens yet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: That's because it takes a little bit of time for your access logs to go into your logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But what we can do in the meantime is have a look at the Permissions, because when we enabled the server buckets, so when were right here, the Server access logging, when we enabled it, it was saying that the Bucket policy will be updated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's verify that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can scroll down and we have the Bucket policy right here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And indeed, yes, the bucket policy was updated to allow the logging service of Amazon S3 to put objects into this buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this, now what we have to do is go back into our bucket and wait for the first logs to be sent.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it took a couple of hours, but I just refreshed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in my bucket, I see a lot of files now, objects, and these have been created directly for my access logs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I can click on one of them and I can open it, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in here I'm able to see, well, what happened?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is quite hard to decipher, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But it gives you the API call, the success rate, who accessed it, what bucket it was, at what time, and a lot of information.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/192_[SAA_DVA_SOA] S3 Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about object encryption in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can encrypt objects in S3 buckets using one of the following four methods.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The first one is server-side encryption, SSE, and you have multiple flavors of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you have SSE-S3, which is server-side encryption with Amazon S3-managed keys, and that is enabled by default for your buckets and your objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Then we have SSE-KMS, where we encrypt this time with a KMS key to manage the encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Then we have SSE-C to use customer-provided key, so this time we provide the own encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't worry, we'll see all of these in great details in the next slide, so this is just an overview.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the first one is Amazon S3 for SSE-S3 encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So in this case, the encryption is using a key that's handled, managed and owned by AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You never have access to this key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now SSE-S3 is enabled by default for new buckets and new objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have Amazon S3, and we have our user.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The user, you, you're going to upload a file with the correct header, and then it will be an object under Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 will pair it with the S3-owned key, okay, because we're using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we'll perform encryption by mixing the key and the object, and that will be what will be stored on your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's for the simpler one, SSE-S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So this time, instead of relying on the key that is owned by AWS and the S3 service, you want to manage your own keys yourself using the KMS service, the Key Management Service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: So the advantages using KMS is that you have user control over this key, so you can create keys yourself within KMS, and you can edit the key usage using CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: So anytime someone uses a key in KMS, this is going to be logged in a service that logs everything that happens in AWS called CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So anything SSE, of course, is server side.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, again, we upload the object, this time with a different header, and in the header we actually specify the KMS key we want to use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then the object is appearing in Amazon S3, and this time the KMS key that's going to be used is coming out of the AWS KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So these two things together are going to be blended and then you're gonna get encryption, and that's the file is going to end up in the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is another level of security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: Each of these API calls is going to count towards the KMS quotas of API calls per second, so based on the region, you have between 5,000 and 30,000 requests per second, although they can be increased using the Service Quotas Console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Next we have the SSE-C type of encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So this time the keys are managed outside of AWS, but it still server-side encryption because we send the key to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: But Amazon S3 will never store the encryption key you provide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: After they're used, they're being discarded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The user is going to upload a file as well as the key, but the user manages the key outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then, Amazon S3 will use the client's provided key and the object to perform some encryption and then put the file as encrypted into an S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, we have the client-side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So this is easier to implement if we leverage some client library such as the Client-Side Encryption Library.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon ECR, Amazon S3
- Key Insights: And also, you can retrieve the data from Amazon S3, and then the decryption of the data happens on the client outside of Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Therefore the clients fully manages the keys and the encryption cycle.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have a file and we have a client's key that's outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The client itself is going to provide and perform the encryption, so now we have an encrypted file, and that file as is can be sent into Amazon S3 for upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we've seen all the levels of encryption of objects, but now let's talk about encryption in transit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: So anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this is not something to worry about in real life because while most clients would use the HTTPS endpoint by default.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 61:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now how would you go about forcing encryption in transits?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, we could use a bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 63:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you attach a bucket policy to your S3 bucket, and you attach this statement which is saying that you deny any GetObject operation if the condition is "aws:SecureTransport": "false".
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 64:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 65:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so that's it for encryption, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/194_[SAA_DVA_SOA] S3 Default Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So just a short lecture on default encryption versus bucket policies.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by default now all buckets are having a default encryption of SSE-S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it's applied automatically to new objects toward the new buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But you can change this to be a different default encryption, for example, SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Nonetheless, you can also force encryption by using a bucket policy to refuse any API call to put an S3 object without the correct encryption headers.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, SSC-KMS or SSE-C.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Or, hey, if you are uploading this but there is no customer side algorithm, so no SSE-C, then deny this object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is just an example, but at least you see that a bucket policy can also force a way to have encryption in your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And by the way, bucket policies are always going to be evaluated before your default encryption settings.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So now let's talk about S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So the idea is that you want to lock your Glacier Vault to adapt a WORM model.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means Write Once Read Many.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: Amazon Glacier
- Key Insights: So for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: That means that once you've set a Vault Lock Policy and you locked it, it can no longer be changed or deleted by anyone which is very helpful for compliance and data retention.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 8:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it's very helpful for anything legal such as compliance or data retention.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So that's for the Glacier option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's quite simple to understand.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: Now, there is the same option or something similar at least for the S3 buckets, but it's a bit more complicated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for enabling S3 Object Lock, you must first enable versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, it allows you to adapt a WORM model, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: But this time it's not a lock policy at the whole S3 bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It is a lock you can adapt for each and every object within your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can do an object lock on the single object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that thanks to an S3 object lock, you want to block a specific object version to be deleted for a specified amount of time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we have two retention modes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the first one is the compliance mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: The compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means that once you are in your compliance mode, no one can change anything.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's when you wanna be super compliance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Lifecycle Operations
- Services: Amazon Lex
- Key Insights: But if you want to be a bit more flexibility you have the Governance Retention mode.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this case, most user cannot override or delete an object version or alter its lock settings.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: But some users, the admin users, have special permissions and that's given through IAM and they can change the retention or delete an object directly.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 28:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So compliance is very strict as a retention mode.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Whereas government's is a bit more lenient and some users have had admin powers and can change a few things.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now, in both these modes you have to set a retention period.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 31:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that period of time can be extended, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, there is one more thing you can do with the S3 object log, it's to pull the legal hold on an object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is different from what we saw.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So legal hold protects any object on your S3 bucket indefinitely and that's independent from the retention period.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So once you place a legal hold on an object think of like, oh, this object is very important.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We need to use it in a trial.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's place a legal hold on it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Then the object is protected forever regardless of what retention mode and retention period you've set on it from before.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then someone who has the IAM permissions S3 PutObjectLegalHold has the option to take any objects and put legal holds on them or to remove them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon Lex
- Key Insights: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you need to know the differences of the S3 object lock going at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/200_Glacier Vault Lock - Deep Dive.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So let's do a deep dive on Amazon S3 Glacier vault policies and Vault Lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So each vault will have one vault access policy and one Vault Lock policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So they're difference and both these policies are written in JSON.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So a vault access policy is like a bucket policy, like an S3 bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: This is used to restrict user and account permissions, whereas a Vault Lock policy is a policy you lock for regulatory and compliance requirements when you set up a lock.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This policy is immutable.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means it can never be changed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's why it's called a lock policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can use this to forbid deleting an archive if less than one year old or to implement write once read many policy, WORM, policy.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is our vault.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: We have a Vault Lock policy and so the users can or cannot do things based on the Vault Lock policy but we can also combine it with a vault access policy for more permissions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this vault access policy can change over time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So now let's talk about the Vault Lock process.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in case you want to lock our vault.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So first, we attach a Vault Lock policy and then the vault goes into in-progress regarding its lock.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: During this time, we're going to get back a lock ID and this lock ID has 24 hours before it expired.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And so that's 24 hours for us to test the Vault Lock policy and make sure it is appropriate.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You need to remember this process going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/201_[SOA] Glacier Vault Lock - Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: Amazon Glacier
- Key Insights: So, let's have a play with vault locks by going into the Glacier Console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And, in there, I'm able to go ahead and create a vault.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So, as you can see, Glacier is used for creating vaults, setting data ritual policies, and sending event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So lets create a vault, and I'm going to create in my region close to me, I'll collect my demo vault, click on next step, and here, we can set up notifications in case some jobs complete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, basically, when a retrieval job is completed, we can receive an SMS notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will not enable it right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll set it later.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then, review, everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll submit it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: And here is my first Glacier vault.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: So, basically I have just an, it's like a bucket, but it's called a vault in Glacier.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so, if I click on this vault, I can get some information.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can get some information around the details of this vault, the notification that I set if I wanted to get information, the permissions, so we can set a vault access policy document, I just mentioned, to basically say who can do what on this vault.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Just like a S3 bucket policy, really.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And then a vault lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And the vault lock basically allows you to create, edit, and view details, and to create your lock policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, this lock policy gives you compliance.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you create a lock policy, and we can click here to see how to write a lock policy, we could set a specific kind of lock policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, this one is to deny delete permissions for archives less that 365 days old.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or the second one would be to deny permission based on the tag.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So, we have lots of different ways to do locks, but the idea is that using locks, you're able to get strong requirements on how your data is going to be in Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The thing to know is that once you set a lock, you cannot change it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So, I will initiate vault lock, which says that I need to match my ARN, obviously.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So, lets go to Glacier and find my ARN.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, here's my lock and here's my ARN.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'm going to copy this right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So once I set my vault policy lock, then it will not be able to be changed ever.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So, I will click on initiate vault lock, and here, I get a vault I.D.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, I need to absolutely copy this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You cannot lose this, and it's saying we have 24 hours to validate this policy and complete the lock process.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: After which, the lock I.D. will expire and your in progress policy will be deleted.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, now I have 24 hours, basically, to complete the lock process.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So, lets close this, and so here I have the option to either delete my vault lock, or I have 23 hours to complete it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So, I want to complete it, so I click on complete vault lock, and I paste the lock I.D.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I just got from before, and if you didn't copy it, then you have to redo everything.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Data Protection and Immutability
- Services: Amazon ECR
- Key Insights: So, delete the vault lock and recreate it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Data Protection and Immutability
- Services: AWS Config
- Key Insights: Then, I acknowledge the fact that my vault lock, once it's configured, I will not be able to change it ever.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's irreversible.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: That's why it's so strong from a regulatory perspective, and I click on complete vault lock, and here we go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: My vault lock policy is now locked.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so, we'll never ever ever be able to delete an archive that is less than 365 days, ever.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I cannot change this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And so this is why vault lock policies are so important, and you need to know them coming into the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: The last thing to know is that through this UI, you're not able to upload files that relate to Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You will have to use the SDK, or the CLI, or something like this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I won't show you, but the idea is that you don't get a full UI like you do for S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Here we have to use the API if wanting to upload file into this demo vault.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So that's it for Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just remember how we created a vault, how we locked it, using some kind of lock policy, and how you can set another lock policy here for access to this vault, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/07_Securing Access to Your Data/069_Amazon S3 Presigned URLs.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in this topic, we're going to cover Amazon S3 pre signed URLs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, pre signed URLs are a way that we can provide temporary access to some of our objects that live in our S3 bucket without having to make them publicly available or ensure that people don't have long live access to our objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's check it out here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So say, for example, we want to access our content and well, maybe we're a training company, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Providing Amazon S3 training.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, we've stored all of our videos inside of our bucket called training Videos.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as a training company, we have different subscribers and these subscribers obviously want to view our training videos.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So all of these users are going to use our Amazon S3 training company application and all these users want to view our videos that live in our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how do we share our content with only certain approved users?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And remember, these are users that aren't necessarily users within your AWS account, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're providing services to different folks around the world that are subscribing to your app or subscribing to your service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we want to make sure that those videos are accessible only by our paid subscribers and not just anybody on the Internet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at another example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Maybe we are a company and we work with a bunch of different partners and we are storing all of our partner data inside a bucket called partner data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we have an external user, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They are a partner rep, so they don't work for us, but they need access to our data right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We don't want to make the bucket public because, well, we don't want anybody else to gain access to that data and we don't want to break any of our security policies and start enabling certain people on the Internet to gain access to it, maybe by IP address or, you know, ensuring that this user has an AWS account or something like that.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So how do we actually share our content with only certain approved users without impacting our bucket security?
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We don't want to have to go and modify our bucket policy in order to allow our partner rep temporary access to some of our data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, in order to do that, we can use pre signed URLs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, pre signed URLs provide us a way to give users temporary access to a bucket or objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is done using a time limited URL that we can generate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now these URLs can use by traditional end users, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: A human being to access the data or they can be used by an application that can go get or put objects in the S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in our example of our training content, right, we can provide the application with a temporary URL and then their phone or their iPad or their laptop or whatever can use that pre signed URL to go stream those videos.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now when you provide a pre signed URL, the user or the app will inherit the permissions of the user role or token that actually generated the URL and the URL can actually be used multiple times until the expiration date and time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at those two examples.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But now we're using pre signed URLs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, So for our example for video training, maybe we have a new content creator and this new content creator is using our app and they want to upload a new video to our application.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe they are creating new content and they want to upload it for approval or for new users or students to be able to view it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe it's a new certification course.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: Well, our app currently runs on EC2 and what's going to happen here is our EC2 instance is going to use our attached instance profile to make an API or a CLI request to S3 in order to generate that pre signed URL using those temporary credentials from that role.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now after that, S3 is going to return that pre signed URL back to the app and then the app can return that pre signed URL back to the user's application and ultimately that user can use that pre signed URL to access the bucket and upload a new video.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So rather than changing our bucket policies or our ACLs or modifying the public permissions of our bucket, we can simply provide the application or the user a pre signed URL.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They can use that URL to do a get or a put.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In this case they're doing a put because they're uploading new videos.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's one way that we can use pre signed URLs to ensure the security of our bucket or our objects and only provide temporary access to do so.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at our other example of our partner user.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So again, we've got our external user, our partner rep, and this partner rep wants to download some data from our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe it's a customer report or a sales report.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, on the other end, on our side we have our bucket owner.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe this is the admin that owns the account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what's going to happen is the external user, our partner rep is going to make a request to get some data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now the bucket owner is going to log into AWS or use the CLI or API to generate a pre signed URL.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 53:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course the pre signed URL gets returned back to the bucket owner.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 54:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now the bucket owner is going to send that pre signed URL to the user, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe it's the email, maybe it's through Slack, maybe it's through some other kind of messenger.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course this partner rep will now use the pre signed URL to perform a get object to our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course now we send the object back to the user.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the user, our partner rep now has temporary access to our bucket and can retrieve the data that they need from our bucket without us having to modify any permissions on our bucket itself.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So who can create a pre signed URL?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, an Iam user can.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if you log into the AWS management console or you're using the CLI or the API, you can create a URL for your bucket that's valid up to seven days.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if you're using something like STS, you can create a URL that's valid for 36 hours.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And finally, if you're using an instance profile, write a role attached to one of your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can create a URL that's valid for up to six hours.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, let's talk about URL expiration now, a pre signed URL.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, I mentioned that it provides temporary access.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means at some point that URL is going to expire.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, when you create your pre signed URL, you're going to signify how long you want that pre-signed URL to be valid for.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: However, the pre signed URL will expire when the token or the temporary credentials expire, even if that URL has a later time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look to see what I mean on this timeline here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Say on day one we go create our new pre signed URL and we say, You know what?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We want this to be valid for seven days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, maybe in this case we used STS in order to assume a role and those credentials are only valid for, I don't know, three days.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, what's going to happen here is that when those credentials expire, maybe on day three, well, our URL is also going to expire here as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, the URL is valid from day one to day three, but is not valid from day three to day seven.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Even though we made the pre signed URL valid for seven days, if the credentials that created the URL are expired, then the URL also expires with it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's just something to keep in mind.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if you're using like a long term user, maybe I don't know an Iam user that you don't rotate the credentials very often then that you may not have a problem with that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you're using something like STS or an instance role that provides very short credentials in order to access different APIs throughout AWS, then that may be something that you keep in mind here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that explains URL expiration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 83:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In terms of the credentials, remember, when you create the URL, you signify how long you want it to last.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But again, if the token or credential that created the URL expires before that, well, the URL also expires with it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's pre signed URLs for you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 86:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, an easy way to provide different users access to objects in your bucket or provide users or applications.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 87:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Ways to put data inside of your bucket without modifying your permissions like your bucket policies and ACLs on your bucket itself.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 88:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we're going to jump into the console, take a look at this and make sure we better understand how and why we would use a pre signed URL with Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/07_Securing Access to Your Data/070_Demo - Amazon S3 Presigned URLs.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Welcome back to the AWS management console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We're going to showcase pre signed URLs here and see how we can create them to access our objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, of course, we've got our list of buckets here and we already know based upon our previous labs, that our Amazon S3 Deepdive public bucket is well, public.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course it shows us right here that we have objects that are publicly accessible.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: However, our Amazon S3 Deepdive bucket is not public.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If we go into the bucket, we click on permissions and we scroll down.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: A we already know that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Block All public access is turned on, which means that none of the objects inside of our bucket are going to be public.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Additionally, if we look down at our bucket policy, well, there's no policy to display.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: There's no policy attached to our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we know that none of the objects should be publicly accessible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course, to prove it, I can click on objects, I can click on our avatar and click on our object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, we get access denied as expected.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: However, what happens if we want to provide access to one of these objects?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But we don't want to modify our block public access settings and we don't want to add a bucket policy to our bucket to make them publicly available.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, what we can do is use our pre signed URLs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So what we can do is we can go into one of our objects here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's just look at our course cover.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we're going to click into our object here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course we have things like our Uri and all that good stuff.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, if we click on the URL, we get an access denied as expected.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: However, if we want somebody to be able to access it, we can go ahead and create a pre signed URL.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now to do that underneath object actions up here on the top right, we can simply click that and say share with a pre signed URL right here and it's going to pop up and say, hey, anyone can access the object with this URL until it expires.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's cool with us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's exactly what we want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, the only thing that we have to specify about our pre signed URL is the expiration time, so we can specify that in minutes or hours.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, maybe we want to have our URL expire in five minutes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to add five there and then we're going to create the pre signed URL.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now it's automatically copied to your clipboard, but you can also see it up here in the top, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if we were to open up a new tab and add our URL and with our pre signed URL, we can access our objects inside of our bucket because we can use that pre signed URL.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now if you look at the URL at the top, we have Amazon S3 Deepdyve and then we have course Cover.jpg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But after that we have all the additional things around security token and all that good stuff that are part of our query that are basically created by us hitting that pre signed URL.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Okay, so if we exit out of here and we hit the object URL without the pre signed URL, of course we get an access denied.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we would need to use that pre signed URL in order to access this object that is not publicly facing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is an easy way that you can do it straight in the AWS management console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, if you're going to use a pre signed URL in your environment, I'd be willing to bet that 99% of the creations of pre signed URLs and the distribution of those URLs is going to happen inside of some application.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We talked about our training company and giving users access to our content that lives on S3 and we probably want to put a time limit on that access, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe their subscription renews every day, every week, every month or whatever, and we don't want to give them long term access to our content because if they are no longer a subscriber, maybe they don't have access to our content any longer.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: Now it's the same thing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: If you are a mobile app developer, maybe you have assets in your S3 bucket that you want to give your subscribers or your paid subscribers access to.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: In this case, your app would internally generate a pre signed URL against S3 and of course the application can use that URL in order to access certain assets that live inside of your S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's how you're probably going to find pre signed URLs use the majority of the time is within an application.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: However, if you're working with a partner rep or something like that and they need temporary access to something inside of your bucket, well this is a super easy way to do it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Of course you can log right into the AWS management console, click on the object, click on object actions like we did before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Grab that URL, send it to your user, and of course they can access your data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/074_Protecting Your Data with Amazon S3 Encryption.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Before we start, I want to start with this awesome quote by Werner Vogels.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this was a quote that he made on stage at AWS, and it really sets the stage of what we're going to be talking about here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you think about our data and you think about just today's world in terms of like the digital landscape, we really find ourselves in a world where our data has become the most valuable currency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Our data flows through every aspect of our lives and businesses.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It shapes decisions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It shapes outcomes of how businesses are going to transform.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because of that, data tends to be a frequent target of concern when we think about securing our cloud and our data centers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, it brings to mind this famous saying dance like nobody is watching encrypt like everyone is.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: So as we dive into this topic, let's keep in mind Voegele's words and adopt the mindset of encrypting like everyone is watching high level here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Let's talk about the different encryption options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, these encryption options aren't necessarily specific to Amazon S3 but of course, since this is an Amazon S3 deep dive course, that's the example I'm going to use here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have our clients or our user or it could be an application over here on the left with our person.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And of course we have our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the first option that we have for our data before we ever even think about moving it to a cloud or any other device is, well, we can encrypt it using something like an AWS encryption SDK or other options that we have available to us on premises.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: If your data currently lives on premises, we can use what's called client side encryption in order to encrypt it in our data center.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Before we ever move it to the cloud, we may have something like an HSM or other solutions on prem that we can use to encrypt our data and then we can move that data into our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Data Protection and Immutability
- Services: Amazon RDS
- Key Insights: So in that case we control everything in regards to encryption, we manage the keys, we manage all aspects about encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The only thing we do for Amazon is we simply just put that in our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's just a simple place to store our encrypted data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now when we do move that data from our data center, our home or whatever up into Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 Well, we're going to go across some connectivity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That connectivity could be across the public Internet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It could be across something like a direct connect or a VPN or some other connectivity through a partner that allows our data to be moved from our data center into Amazon's cloud.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, when we do that, what we need to do is make sure that our data is encrypted in transit and we would do this using TLS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And when I say we would use TLS, well, by default, that's going to happen because Amazon S3, the API is going to be secured by an Amazon certificate and naturally our client is going to negotiate a secure tunnel between the data center or whatever client is going to transfer that data to Amazon S3 API or ultimately the S3 service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by default, we're going to be able to use TLS to secure our data in transit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: That, of course, means when that data is moving across the wire, when it's moving from your data center to Amazon, S3, whatever wire it goes across, whether it's fiber, whether it's copper, whether it's satellite, whatever, we want to make sure that data, when it's moving, is encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And this is called in-transit encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And the final one here is, well, what happens when our data lands in our bucket?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What happens when it's written to a device inside of Amazon's data center?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, in order to encrypt our data in a bucket, we have multiple options here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have what's called server side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: That means when our data lands on the server, when it lands on the device, on the target platform, which in this case it's Amazon S3, it's going to be encrypted by that service using some key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to write that data in an encrypted format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We're relying on the target platform again, in this case Amazon S3 in order to encrypt our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: That's called server side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And a lot of times we refer to that as encryption at rest when we write the data to disk, when the data is sitting on the disk, that's generally called encryption at rest.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And you better understand the different options that you as a customer have before you write any data to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/075_Introduction to Client-Side Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the first one that I want to talk about here is client side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So client side encryption means that you are going to encrypt that data before you ever upload that to Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 So you have some level of a key that's been created by some platform in your data center or at home or by some application.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: You as a client, you manage that entire encryption process.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have your data somewhere, maybe in some storage platform on prem, and then you are going to use some kind of key and some process in order to encrypt that data on prem, probably going to make a copy of it and it's going to be stored somewhere in an encrypted fashion.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: In this case, you manage the encryption keys and all the tools itself in order to manage this process.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So basically you own everything about this encryption process.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So when you upload that data to S3, it's encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon ECR, Amazon S3
- Key Insights: When you download it from S3, it gets decrypted by your own process.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now you have what's called client side Master Key, which you own the key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You also have the ability to use an AWS KMS key in order to encrypt the data on prem as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: If you want to manage the encryption process, but you still want to manage the encryption keys for you, maybe you don't have a solution on prem or you know what, we're just going all in on AWS, so we want to manage that for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, you can actually create a KMS key and you can actually use that to encrypt all your data on prem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Again, you still manage the encryption process, but the keys are now managed in Amazon, S3 or KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: A few of the use cases that where it makes sense to use client side encryption include.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: When you have sensitive data storage, you want to ensure that nobody can read that except for yourself, not even Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: You can use client side encryption for that if you have regulatory compliance, meaning I can never write my data in an unencrypted fashion.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It must be encrypted before we move it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's another use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Risk mitigation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: If you just want to be sure that no one ever has access to that data, if you want full control over your encryption process, that's client side encryption is going to meet those needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, data sovereignty requirements.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Data Protection and Immutability
- Services: Amazon ECR
- Key Insights: If you have that, then you may want to use client side encryption to ensure that no one can decrypt your data regardless of where you move it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So again, this is client side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Again, the focus is really you managing the encryption process using some key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now again, whether that key lives somewhere on prem or you consume a key that's been created in AWS kms.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/076_Using Server-Side Encryption with Amazon S3.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The next one I want to talk about is server side encryption, and that's generally going to be abbreviated as SSA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, you know, the world of it, everything relies on abbreviations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So if you see SSA, make sure you know that that is server side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: In this scenario, here we have our objects that are not yet encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Maybe these are objects that live in our data center.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It could be customer data, it may be data that includes some sensitive data like Social Security numbers, credit card numbers, something like that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe there's simply logs that are being outputted from your application that may contain some sensitive data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It really doesn't matter in this case, but in this scenario, we have objects in your data center at home, at wherever that are not yet encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And what we want to do is we want to ensure that when we upload these objects into Amazon S3, they are encrypted at rest using keys that reside in AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If we take our object and we go ahead and upload these so for example, this object, it's going to be encrypted with a key and it's going to look different from the object that we uploaded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So that's why the circle turned into a diamond here, because now that's our same data, but now it's encrypted with the key that was used to encrypt our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And so as we continue to upload our data, we can either choose to use the same key for all of our data, or we can choose to use multiple keys for our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: That's the reason I'm changing colors here for each individual object is because maybe we want to use different keys.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe we have a key for prod, maybe we have a key for dev.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: ET cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we want to ensure that our data is encrypted using the desired key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So as we continue to upload data, of course it continues to be encrypted at rest and then stored in our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Keep in mind that when you do use SSC, the key that is used to encrypt your data follows what's called envelope encryption in order to protect the key itself.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have our encryption key that's used to encrypt our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And then we also have another key, a master key or a management key in order to encrypt our encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now that encrypted encryption key is stored alongside of our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's why I'm showing the key alongside of our data inside of our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, keep in mind, though, even if we are uploading our data from our data center into our bucket and our data is encrypted at rest using keys that live in AWS, keep in mind that our objects are still encrypted in transit.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're still using TLS in this process to move data from our data center into Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 So even on the wire, when we are transferring our data from our data center into AWS, even if we're moving unencrypted objects, well, it's still encrypted in transit using TLS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Don't think that you're sending unencrypted objects across the wire.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's still encrypted using TLS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: Then when it lands on AWS, it's decrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then finally, the key encrypts that object and then it writes it to the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: At no place in time during the transfer of this data, was your data ever written anywhere or accessible anywhere in clear text?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: From an AWS perspective, let's take a look at the server side encryption types that are offered by AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So on the left we have SSC, Dash, S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now this is going to provide managed keys for you from S3 and it's going to enable automatic encryption on upload of any of your objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is really suitable for general use cases where you really don't need to manage the key or the policies that are associated with the key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You just need to know that your data is encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So SSC, S3 really offers a good balance between security and convenience, automatically encrypting data on upload with keys managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, it's well suited for a broad range of applications here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: SSL C, on the other hand, allows clients to supply and manage their own encryption keys from their own solution.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe on prem, this offers a higher level of control and it's particularly useful when compliance requirements demand client manage keys.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you haven't gathered it yet, the C for Dash C really stands for customer provided keys.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: It gives you high level of control because now you manage the key that is used for encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can rotate that key whenever you need.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can manage that key, you can manage who has access to that key from your own solutions on prem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The final one on the right here is C dash kms.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: Now the name should give it away a little bit because we talked about KMS a little bit, but this is essentially the same thing except for the keys are now managed using AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: James, you would go into KMS and you can create your own CMC's in there by doing so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have full control over all of the keys that you create.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can manage the policies, you can manage who can use these keys, you can rotate these keys, etcetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have fine grained access control when you're using SSC, Dash kms.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This really provides the highest level of control and transparency because now everything is auditable since we are now using another service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: AWS CloudTrail, Amazon S3
- Key Insights: Well, everything that happens on S3 and ultimately going to consume keys in KMS, well, all of that is going to be logged in logs in Cloudtrail and all the other solutions that you use in native AWS solutions in order to log activity that's going on within your accounts, fully auditable, fine grained access control using KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This really makes it the ideal solution for protecting your sensitive data and meeting very stringent compliance needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: I present to you the three types of encryption types that are available on S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to go into each one of these in detail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/082_In-Transit Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, let's talk about in-transit encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by default, S3 will use Https that is secured by a TLS certificate that is minted by Amazon itself.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, that, of course, is going to encrypt the data when it is transferred from a client to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: However, keep in mind that Http is permitted by default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can have a client that says, Hey, go upload my data and the URL that they use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: If it's Http, well by default, S3 is going to accept that request.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now you can prevent that with a policy as part of your Iam policy or bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can actually say, Hey, I don't want you to accept any data that is not secure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is an option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in fact, I have that policy here for you so you can use the condition secure transport to deny any Http requests.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's called secure transport.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You want to put that in your condition when you are providing access to your bucket here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this case, this denies all actions on the bucket when the request is Http.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there are different ways that you can add this to your policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But again, this is a way that you can use this condition to ensure or force people to use Https or TLS when they're uploading data into your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: By the way, if you're taking any AWS certification exams, this tends to pop up on a lot of them a way that we can ensure secure transport of our data when we're uploading data into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: That wraps up all the encryption topics that I had here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that's useful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: You understand the three different types of encryption and of course the three different types of server side encryption that you have available to you in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/083_Demo - In-Transit Encryption.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Let's quickly touch on in transit encryption when we were working with Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have multiple buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Again, we have our Amazon S3 Deepdive and our Deepdive public.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to work with our public one in this example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'm going to go into the bucket and we already know that these objects are public, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This big red notification on the top.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If we click on Avatar and click on our item, we can actually see our object come up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's cool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now what we can do is validate the object URL.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The object URL here is https, colon slash, slash, and then our name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So when we click on it at the top, we have a lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We are secure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, if we go up and modify our URL and take off the S and hit enter and then maybe even hit refresh, we can see we can also get our object and we are not using Https.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're actually going over Http in this case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have no in-transit encryption when we are interacting with our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: If we take off the Https in front of our URL now by default again, Amazon S3 permits Http requests to your bucket, but maybe that's not something we want for our organization, so we want to go ahead and modify that.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's go back to the console here and we're going to fix that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we're going to go into our bucket and we're going to look at our permissions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And our permissions are simply, hey, allow anybody access to the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's cool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's what we want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But we also want to block access to our bucket and our objects if you are coming in on an insecure protocol.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's go to edit here and we're going to edit our bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now let's go over to VS Code and take a look at what we have here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have in addition to our policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll paste it in here and then we'll walk through it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go into our statement.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'm going to hit enter, I'm going to paste in our change and then let's take a look at it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So our new permission inside of our bucket policy says enforce TLS.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The effect is deny the principle is anti body again makes sense because this is a public facing bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The action is any S3 action right put object get object list tags like whatever anything that deals with S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's what we're applying this to.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, the resource we're applying this to is Amazon S3 Deepdive Public because that's the bucket we're working with, but we want to make sure we apply that to all objects inside the bucket and the bucket itself.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And finally, we have this condition down here and this condition says if you are not accessing Amazon S3 on a secure transport, a secure protocol, right, false, then I am going to apply this rule which will deny any of your actions that you're trying to perform against this bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, if you are coming in right, this doesn't match.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This entire rule is not applied and then this rule is applied.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Meaning I can go get any object inside of this bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's what our new bucket policy looks like.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is the key right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This condition secure transport is false.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The other way you can do that, by the way, is you can add this condition just to this rule right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can say secure transport is true.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it may simplify the rule a little bit, but I wanted to break it out separately so you fully understand what's going on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have our new bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 55:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We're going to save the changes here, and then we're going to go back to our object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to click on our avatar again, and we expect we should be able to access it, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: No problem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, if we go up here and we change our URL again to remove the S and hit enter, it comes up, but I think it's just cached.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If I actually refresh this then we get access denied.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can see we are accessing Amazon S3 under an insecure protocol, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Http and we get access denied.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if we go back up to our URL and type in https colon slash, slash and hit enter, there we go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We get access to our object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by changing that bucket policy, we are able to block anybody that's accessing our bucket coming in under an insecure protocol, meaning Http, and they're not using TLS to access our bucket and that ensures that we have in-transit encryption between all of our clients and our S3 bucket and objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/095_Amazon S3 MFA Delete.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The next topic here is MFA Delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: First, I want to introduce MFA, just in case you don't know what MFA is.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: MFA is multi-factor authentication and MFA really relies on three different keys.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Something you know, something you have or something that you are.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now something you know is, you know, a password or a pin that you've memorized something you have maybe a token or a device with a code like your mobile phone, maybe a Google authenticator or something like that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Something that you are a fingerprint, a facial scan.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Multifactor authentication usually requires at least two of these in order for you to authenticate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Using MFA will prevent somebody from learning your password and then gaining access to the system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They must also have a token.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They must also have a device.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They must also have a fingerprint in order to authenticate as you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by using multi-factor authentication, even if your password is compromised, they would still need a token to access your account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now MFA delete in Amazon S3 World helps us protect against accidental deletions by adding an additional layer of security to our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: MFA will require your credentials like your AWS credentials and an MFA code in order to delete an object version or change the status of versioning on the bucket, like suspending versioning that we talked about.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So how does MFA delete work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, it requires two forms of authentication in order to allow you to delete or change an object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now it requires your security creds and that six digit code from an MFA device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in the example here, I have a user on the left performed a delete object on a bucket that does not have MFA delete and well, the object can be deleted, no problem.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: In the event that we enable MFA delete and the user tries to delete an object but does not provide the MFA code.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well that delete is denied.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: They must provide that six digit code from the MFA device in order to delete the bucket.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So of course if you have this enabled and you have access to the MFA code, whether that's a device or a token or something like that, and then you submit a delete object request and you provide the required credentials and the MFA, well, the objects can be deleted if you have access to the MFA token.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So pretty easy there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Data Protection and Immutability
- Services: AWS Config, AWS SAM
- Key Insights: Now to enable or disable MFA delete, you would use the same API to configure versioning because it's kind of locked with versioning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: You must have versioning enabled in order to use MFA delete.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Config
- Key Insights: Only the bucket owner or the root account can actually enable MFA delete on a bucket and MFA delete can only be configured on the AWS CLI or the API.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: You cannot configure this inside of the console.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: You cannot delete objects that have MFA delete enabled using the console.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Config
- Key Insights: You can only delete objects using the CLI or the API if you have MFA delete enabled and keep in mind that you need the proper credentials in order to delete an object that has MFA delete configured.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you need those credentials and you need access to that token.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you are in an organization, you may have a security token that's locked in a safe or somebody has access to it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: You need to get access to that token in order to get the code, in order to properly delete objects that have MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: On that one, just want to showcase what MFA delete is.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, another way that we can protect our data by ensuring that no one can delete our objects unless they have proper security credentials and they have access to an MFA device like a security token that gives us access to that six digit code.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/103_Amazon S3 Server Access Logs.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's talk about server access logging.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So server access Logging is a feature in S3 that allows us to keep an eye on what's happening in our storage buckets by recording any requests that are made to them.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's kind of like having a security on our data logging.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Who comes in and what do they do once they're there?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this is especially useful for making sure everything is safe and in order, and that's why it's often used for security checks and audits.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But it's not necessarily just about security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: These logs can also help you know more about the people using your services, which is great for understanding your customers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Additionally, if you've ever been confused about the charges on your Amazon S3 bill, these logs can be like a magnifying glass that really helps you see exactly what you're being billed for.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: By showing how your storage is being used, let's take a look at this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have our data bucket here, a data analysis bucket in the middle with objects, and we have our reporting admin and maybe we have an application like a data lake.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Both of these different types of applications and users may be using and consuming data that lives inside of our data bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, as those objects are being consumed, maybe they're reading, maybe they're writing within minutes or hours, the server access logs are generated and then we can actually consume those server access logs to determine who is using our data and what they're doing with our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: Now, when it comes to the delivery time frame of our server access logs, most of these log records are going to be delivered within a few hours of the time that they were actually recorded, but sometimes they can be delivered more frequently than that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, expect a few hours at the max, but sometimes they may show up before that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So where do we actually store our logs?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, just like our inventory report, we're going to store our logs inside of some kind of bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if we have a bunch of buckets in our organization, say, here on the left, what we're going to do is probably go ahead and store those logs inside of a different logging bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: We don't want to store inside of those same buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Many times in a large organization, we have a specific bucket that's used for logging, and oftentimes that logging bucket lives in a different account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, we talked about this earlier in the course from a security perspective, but when we are logging things across our AWS accounts, we probably want to send those logs to a bucket that lives in another account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: That way, if someone were to gain access to our buckets in this case, they wouldn't also be able to delete our server access logs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then if we had an issue, well, we'd have the issue and we wouldn't have any logs in that case because they would be able to delete the logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's why it's important to go ahead and send those logs to a different logging bucket and more importantly, send them to a different account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what do server access logs actually contain?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, a lot of stuff right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can't necessarily choose what you want to see in the logs themselves.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So when you set up server access logs, you don't get to choose what data is included inside of the server access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You just get a bunch of data as part of the logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you get things like the bucket owner, what bucket it was, what time, what was the remote IP of the requester?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Who was the requester if they were a local Amazon account or they were unauthenticated, what was the total time they were using?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What was the byte sent?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The object size host header.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have a lot of different good information that you can use to determine what's going on inside of your account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Each request that is made to your data inside of an S3 bucket, you're going to get a single log for each request.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Each log record is going to represent one request, and it's going to consist of all those fields that we just talked about, and they're all going to be space delimited fields inside of your file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So I went ahead and configured this on one of my buckets and I copied and pasted it in here just so you can kind of see what it is.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I have a bucket called Amazon Deep Dive.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can see I accessed it sometime in June.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I have an IP address that is actually not my IP address.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I changed it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can also see that I was logged in as administrator access under Brian under this account, which I changed my account number.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But you can see there's a lot of good information in here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I performed a get against a specific object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can see that it was using a specific SDK.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can see I was using Linux on that side.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You can also see that it was from S3 Amazon Aws.com.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I was using TLS version 1.2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there's a lot of good information that you can see directly inside of these logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, generally you're not going to be reading these from a human perspective.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to go ahead and take these logs and you're going to ingest them into some other app that's going to be able to perform and gather metrics for your.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Your organization.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you may ingest these types of logs into some kind of SIM tool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe Splunk, Sumo Logic, Datadog, any of those kind of third party tools that you're going to use to analyze any of your server access logs and understand what's going on across your accounts for the fun of it?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: I also went ahead and configure this and I pointed this to a another bucket so you can see an example of all the different server access logs that are contained inside of my bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I have all these different server access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Object Storage Patterns
- Services: Amazon RDS, Amazon S3
- Key Insights: Each one of those records represents one request that I performed inside of my S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I went into my bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I tried to access objects, I downloaded an object, I uploaded an object, and you can see that I got all these different server access logs just based upon the actions that I was performing inside of one of my buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 59:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So you can kind of understand what to expect when you configure this and point this to a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what you'll see is a bunch of different logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Each one represents a single request, depending on how busy your S3 buckets are.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You may actually see a lot of logs in there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to be important for you to analyze those logs in just those logs and of course, and create a life cycle rule to expire these logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: After so long, your organization may dictate that you keep these logs for 30 days or 60 days or even a year.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But after that, it's going to be important that you want to expire these logs so you don't have a ton and ton of data in your buckets that you're paying for just for logs that have already been ingested in a tool.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that concludes server access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: And what we're going to do is go ahead and showcase how we can configure that in AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/141_S3 Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about object encryption in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can encrypt objects in S3 buckets using one of the following four methods.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The first one is server-side encryption, SSE, and you have multiple flavors of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you have SSE-S3, which is server-side encryption with Amazon S3-managed keys, and that is enabled by default for your buckets and your objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Then we have SSE-KMS, where we encrypt this time with a KMS key to manage the encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Then we have SSE-C to use customer-provided key, so this time we provide the own encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't worry, we'll see all of these in great details in the next slide, so this is just an overview.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the first one is Amazon S3 for SSE-S3 encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So in this case, the encryption is using a key that's handled, managed and owned by AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You never have access to this key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now SSE-S3 is enabled by default for new buckets and new objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have Amazon S3, and we have our user.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The user, you, you're going to upload a file with the correct header, and then it will be an object under Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 will pair it with the S3-owned key, okay, because we're using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we'll perform encryption by mixing the key and the object, and that will be what will be stored on your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's for the simpler one, SSE-S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So this time, instead of relying on the key that is owned by AWS and the S3 service, you want to manage your own keys yourself using the KMS service, the Key Management Service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: So the advantages using KMS is that you have user control over this key, so you can create keys yourself within KMS, and you can edit the key usage using CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: So anytime someone uses a key in KMS, this is going to be logged in a service that logs everything that happens in AWS called CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So anything SSE, of course, is server side.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, again, we upload the object, this time with a different header, and in the header we actually specify the KMS key we want to use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then the object is appearing in Amazon S3, and this time the KMS key that's going to be used is coming out of the AWS KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So these two things together are going to be blended and then you're gonna get encryption, and that's the file is going to end up in the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is another level of security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: Each of these API calls is going to count towards the KMS quotas of API calls per second, so based on the region, you have between 5,000 and 30,000 requests per second, although they can be increased using the Service Quotas Console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Next we have the SSE-C type of encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So this time the keys are managed outside of AWS, but it still server-side encryption because we send the key to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: But Amazon S3 will never store the encryption key you provide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: After they're used, they're being discarded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The user is going to upload a file as well as the key, but the user manages the key outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then, Amazon S3 will use the client's provided key and the object to perform some encryption and then put the file as encrypted into an S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, we have the client-side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So this is easier to implement if we leverage some client library such as the Client-Side Encryption Library.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon ECR, Amazon S3
- Key Insights: And also, you can retrieve the data from Amazon S3, and then the decryption of the data happens on the client outside of Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Therefore the clients fully manages the keys and the encryption cycle.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have a file and we have a client's key that's outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The client itself is going to provide and perform the encryption, so now we have an encrypted file, and that file as is can be sent into Amazon S3 for upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we've seen all the levels of encryption of objects, but now let's talk about encryption in transit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: So anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this is not something to worry about in real life because while most clients would use the HTTPS endpoint by default.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 61:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now how would you go about forcing encryption in transits?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, we could use a bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 63:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you attach a bucket policy to your S3 bucket, and you attach this statement which is saying that you deny any GetObject operation if the condition is "aws:SecureTransport": "false".
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 64:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 65:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so that's it for encryption, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/143_S3 Encryption - Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's practice encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for this I'm going to create a bucket called demo-encryption-stephane-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we scroll down, we're going to leave this on, leave this on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We're going to enable bucket versioning.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I will go over SSE-S3 right now and we'll have a look at SSE-KMS and DSSE-KMS later on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's click on Create a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now we have created a bucket that has default encryption turn on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's verify this by actually uploading an object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to add a file and we'll add our coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to just click on Upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And as you can see now I can click on this file and scroll down, look for the server side encryption settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And indeed the file was encrypted with server side encryption with Amazon S3 managed keys, so SSE-S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: We can also edit the encryption mechanism for a file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I could just click on Edit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see, if we do edit the server side encryption, then this will create a new version of the object with updated setting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And so therefore, this is why I have enabled versioning for my bucket, is to show you that a new version of the file will be created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's change the encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for this, we're going to override the bucket settings for default encryption for this one object.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so we have a choice to use either SSE-KMS or DSSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So DSSE-KMS, I won't spend a lot of time on this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: It's just two level of encryptions on KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just a stronger KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're just going to use KMS right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is simpler and it is not going to cost us any money.
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to use SSE-KMS as we learned.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we have to specify a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can either enter a KMS key ARN, or we can choose from your own KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if we choose from the KMS keys right now, you should have only one key available the AWS/S3 key, and it's called the default KMS key for the S3 service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you click on it, we can use this key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's not going to cost us any money because this is the default key for the service.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you created your own KMS key, then it would be available in this list.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But creating your own KMS key will cost you some money every month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for this purpose, we're just going to use the default AWS/S3 KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's save the changes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We close this, and now if we go under Versions, as we can see, we have two versions of our file right now available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so the current version, if we scroll down and go under service side encryption, as we can see it is indeed encrypted with SSE-KMS with this encryption key, which corresponds to the default AWS/S3 KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is really good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next we go under this part.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So we can do the same process by uploading a file and then we're going to add a file, for example, beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And under Properties, we're going to find server side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And here we can specify an encryption key to either use the default encryption mechanism or to override it with SSE-S3, SSE-KMS or DSSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And finally, let's have a look at the default encryption properties.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's scroll down and we're going to find default encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's edit this, and here we have the option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we can enable SSE-S3, SSE-KMS as the default encryption, or DSSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in case we do SSE-KMS, we have the bucket key option available to us.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is to reduce the cost by doing less API calls to AWS KMS.
- Hidden/Implicit Meaning: Storage economics signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so this is enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: If we just use SSE-S3, then this setting doesn't count.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we've seen that we can change the default encryption here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you may ask me, well, SSE-C is missing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, indeed it is missing because SSE-C you can only do from the CLI, not from the console.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means that you cannot enable SSE-C right here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Data Protection and Immutability
- Services: Amazon ECR
- Key Insights: And finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So therefore, the only options you can deal with in the console are SSE-S3, SSE-KMS and DSSE-KMS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So that's it, we've seen all the encryption options in AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/144_S3 Default Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So just a short lecture on default encryption versus bucket policies.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by default now all buckets are having a default encryption of SSE-S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it's applied automatically to new objects toward the new buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But you can change this to be a different default encryption, for example, SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Nonetheless, you can also force encryption by using a bucket policy to refuse any API call to put an S3 object without the correct encryption headers.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, SSC-KMS or SSE-C.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Or, hey, if you are uploading this but there is no customer side algorithm, so no SSE-C, then deny this object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is just an example, but at least you see that a bucket policy can also force a way to have encryption in your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And by the way, bucket policies are always going to be evaluated before your default encryption settings.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/147_S3 MFA Delete.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So now let's talk about a security feature called MFA Delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: MFA stands for multi-factor authentication, and this is a way to force users to generate a code on a device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It could be, for example, a mobile phone with a Google Authenticator application or whatever, or another one for example, or a hardware such as an MFA hardware device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And this is going to give you a code, and that code must be inserted into Amazon S3 before doing important operations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So when is MFA going to be required?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, it's going to be required when you want to permanently delete an object version.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, this is definitely a protection against permanent deletions or if you want to suspend Versioning on the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, both these options are quite destructive, and so MFA will be recovered for this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you want to enable Versioning or list deleted versions, then the MFA will not be required because these are not dangerous operations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is quite complicated because while using the root account is not something you should do a lot, but you will see how do this in the next lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And just remember that MFA Delete is an extra protection to prevent against the permanent deletion of specific object versions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/148_S3 MFA Delete Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so let's demonstrate MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'm going to create a bucket, and I'll call it demo stephane MFA delete 2020 in eu-west-1.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I'm going to enable bucket versioning, and click on create buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, if we go to this bucket, the MFA bucket, and go to properties and bucket versioning and click on edit.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, Multi-Factor authentication (MFA) delete is currently disabled, and you cannot change this through the UI of Amazon console, for some reason.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So maybe someday they will allow us to enable it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But for now, what you have to do is to enable it directly using the AWS CLI.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So a prerequisite of this hands-on is to make sure that, under IAM, you have already set up an MFA device for your root accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm using my root account right now, as you can see, it's, I'm logged in as roots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I need to do is click on it and click on my security credentials.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is taking me to the security credentials I have in IAM.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And under a Multi-Factor authentication MFS, you can see I've set up already a virtual device for my MFA, and the ARN is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: Next, we have to go ahead and actually configure the ADA CLA to use this root account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, this is something I don't recommend on doing, except for enabling MFA delete on your S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is to create new access keys, and I will download the key file and then show the access keys as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: I will remove them, so don't worry about seeing mine, but you should never share your root access key with anyone as well as your secret access key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so what I need you to do now is to set up the CLA with these two little settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: So I'm going to configure my command line.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: So AWS configure and then I'm going to create a profile and I've called this profile, roots-MFA-delete-demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And this file, you can find under, s3advanced.mfadelete.sh.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're using the comments from there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to set up this profile and then after you enter my access key Id, which is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: So let's go ahead and paste this, my secret access key, which is all the way here, paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Default region name, eu-west-1, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, if I do AWS S3 LS, does it work? and do it with my profile that I've just created, which is called by the way, root-MFA-delete-demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Yes this gives me my three buckets that I have.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So my profile is correctly set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Next, what I have to do is to enable the MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for this, there is this full setting right here that I'm going to copy and then edit, with you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I paste it and I need to first change the bucket names.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the bucket for now is called, MFA-demo-stephane but I'm going to change it by demo-stephane-MFA-delete-2020, which is good.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: Versioning configuration status enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: MFA delete equals enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we are good to go here and then we need to specify the ARN of the MFA device and this I can find.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's find it's right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is the ARN of the MFA device, So I'm going to paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, the MFA code.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is something that I'm going to get directly from my application, that gives me my MFA code.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So seven one zero three four three, press enter.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And apparently this is not correct.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's wait another one. (typing) And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this was set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now, how do we know if it worked?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, if I go into my bucket versioning and refresh, as we can see now, bucket versioning, it says bucket versioning is enabled as well as Multi-Factor authentication, MFA delete is enabled.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so, how do we know if it worked?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, let's say I'm going to my objects and I'm going to upload objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let me upload, for example, a copy of the JPEG file, I will upload it, so this is working Now If I go back to my buckets, take that objects and delete it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to delete it, but we have enabled versioning, so this is just going to add a delete marker.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is working as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all in all so far, so good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I list my bucket versions now, okay I have two versions for my file, but now if I wanted to, for example, delete this specific version ID.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this one is called a permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: It says, you cannot delete object because Multi-Factor authentication, MFA deletes is enabled for this bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 56:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And so to do so we need to use the CLI command to delete this file or disabled MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we can just go ahead and disable MFA delete, so for this, the command is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: So it's the same command that this time will do MFA delete equals disabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to take the command from before and I'm going to edit it out, so here we go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: MFA delete equals disabled and obviously the MFA code I need to change.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me wait for the next MFA code to appear on my screen.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully it will work.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Press enter.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And here we go, this works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now if I try another time to delete, for example, delete, the delete marker.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Yes, it is working because I have disabled MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's confirm it by typing in this texts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then finally going back to my buckets, go into my properties and under bucket versioning, yes, we can see that MFA delete is disabled.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And obviously at the end of the lecture, I almost forgot, but no, I didn't forget.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Please delete your route access key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is really bad to you have them so, I will deactivate them and we're good to go, and then finally I can probably delete them at some point.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Thank you so much, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/149_S3 Access Logs.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now, let's talk about S3 Access Logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for audit purposes, you may want to log all the access made into your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that means that any request made to your S3 bucket from any account, whether or not it's authorized or denied, is going to be logged as a file into another S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: Amazon Athena
- Key Insights: And that data then can be analyzed using data analysis tool such as Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Now, the target logging buckets must also be in the same AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, you're going to request against your S3 buckets, and then you're going to enable the access logs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's all the requests are being logged into the logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, there's a specific format to this logs, and you can find it at this URL to find the log formats.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, with access logs, there is a little bit of warning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Never ever set your logging bucket to be the same as the bucket you are monitoring, because otherwise, it will create a logging loop and it will be infinite and your bucket will grow in size exponentially.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: While you do put object, but the app bucket and the logging bucket is the same.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there will be a logging loop and you will log that again and log that again and log that again and you will pay a lot of money.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So do not try this at home.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/14_Amazon S3 Security/150_S3 Access Logs - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's go ahead and practice S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And for this I'm going to create an S3 access log, stephane-v3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then I will go ahead and create that bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that bucket is going to be our logging bucket, and I'm going to keep this open here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in another tab I'm going to take one of my buckets that I've created, and then I'm going to enable the logging.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I just took one bucket, but whatever bucket you want for you really.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will go on Properties and then I will scroll down and look for Server access logging.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we edit it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's Enable it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see, the Bucket policy will be updated for the target bucket where we want to write data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So first we have to specify a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, oops.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'm going to go in my bucket and type access.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So stephane access log v3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This is the bucket I want and I will choose this as my destination.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have a destination region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have the destination bucket name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Prefix, this is if I wanted to select an optional prefix in my bucket to, for example, have /logs, but we will not do this.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the Log object key format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have this format right here, and there is an example here given to me as the log key example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Or if I use the second one, I can also specify a different S3 event time or a log file delivery time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, this would change my final key format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Right now we're going to keep it as default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's just use the first option, okay, which will be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then click on Save changes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And now my S3 Server access logging is enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now what I can do is I can go to my objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can click on this one, I can maybe open it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Back into my bucket, I can go in it and I can upload a file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll add a file and it'll be, for example, my beach.jpeg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can do a lot of things in your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all of this is going to generate activity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And this activity is going to be logged into your logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if I refresh, as you can see, nothing happens yet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: That's because it takes a little bit of time for your access logs to go into your logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But what we can do in the meantime is have a look at the Permissions, because when we enabled the server buckets, so when were right here, the Server access logging, when we enabled it, it was saying that the Bucket policy will be updated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's verify that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can scroll down and we have the Bucket policy right here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And indeed, yes, the bucket policy was updated to allow the logging service of Amazon S3 to put objects into this buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this, now what we have to do is go back into our bucket and wait for the first logs to be sent.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it took a couple of hours, but I just refreshed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in my bucket, I see a lot of files now, objects, and these have been created directly for my access logs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I can click on one of them and I can open it, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in here I'm able to see, well, what happened?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is quite hard to decipher, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But it gives you the API call, the success rate, who accessed it, what bucket it was, at what time, and a lot of information.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/150_S3 Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about object encryption in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can encrypt objects in S3 buckets using one of the following four methods.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The first one is server-side encryption, SSE, and you have multiple flavors of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you have SSE-S3, which is server-side encryption with Amazon S3-managed keys, and that is enabled by default for your buckets and your objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Then we have SSE-KMS, where we encrypt this time with a KMS key to manage the encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Then we have SSE-C to use customer-provided key, so this time we provide the own encryption key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't worry, we'll see all of these in great details in the next slide, so this is just an overview.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So at the exam it's important to understand which ones are for which situation, so let's do a deep dive into all of those and understand the specificities of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the first one is Amazon S3 for SSE-S3 encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So in this case, the encryption is using a key that's handled, managed and owned by AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You never have access to this key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: The object is going to be encrypted server side by AWS and the security type of the encryption is a AES-256.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now SSE-S3 is enabled by default for new buckets and new objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have Amazon S3, and we have our user.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The user, you, you're going to upload a file with the correct header, and then it will be an object under Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 will pair it with the S3-owned key, okay, because we're using the SSE-S3 mechanism.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we'll perform encryption by mixing the key and the object, and that will be what will be stored on your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's for the simpler one, SSE-S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So this time, instead of relying on the key that is owned by AWS and the S3 service, you want to manage your own keys yourself using the KMS service, the Key Management Service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: So the advantages using KMS is that you have user control over this key, so you can create keys yourself within KMS, and you can edit the key usage using CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: So anytime someone uses a key in KMS, this is going to be logged in a service that logs everything that happens in AWS called CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So anything SSE, of course, is server side.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, again, we upload the object, this time with a different header, and in the header we actually specify the KMS key we want to use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then the object is appearing in Amazon S3, and this time the KMS key that's going to be used is coming out of the AWS KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So these two things together are going to be blended and then you're gonna get encryption, and that's the file is going to end up in the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is another level of security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: Each of these API calls is going to count towards the KMS quotas of API calls per second, so based on the region, you have between 5,000 and 30,000 requests per second, although they can be increased using the Service Quotas Console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is something the exam may test you on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Next we have the SSE-C type of encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So this time the keys are managed outside of AWS, but it still server-side encryption because we send the key to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: But Amazon S3 will never store the encryption key you provide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: After they're used, they're being discarded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The user is going to upload a file as well as the key, but the user manages the key outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then, Amazon S3 will use the client's provided key and the object to perform some encryption and then put the file as encrypted into an S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, we have the client-side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So this is easier to implement if we leverage some client library such as the Client-Side Encryption Library.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon ECR, Amazon S3
- Key Insights: And also, you can retrieve the data from Amazon S3, and then the decryption of the data happens on the client outside of Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Therefore the clients fully manages the keys and the encryption cycle.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have a file and we have a client's key that's outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The client itself is going to provide and perform the encryption, so now we have an encrypted file, and that file as is can be sent into Amazon S3 for upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we've seen all the levels of encryption of objects, but now let's talk about encryption in transit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So encryption in transit, or in flight, is also called SSL or TLS, and basically your Amazon S3 bucket has two endpoints, the HTTP endpoint that is not encrypted and the HTTPS endpoint that has encryption in flights.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: So anytime you visit a website and you see that green lock or lock, usually that means it's using encryption in flights, meaning the connection between you and the target server is secure and fully encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this is not something to worry about in real life because while most clients would use the HTTPS endpoint by default.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 61:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now how would you go about forcing encryption in transits?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, we could use a bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 63:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you attach a bucket policy to your S3 bucket, and you attach this statement which is saying that you deny any GetObject operation if the condition is "aws:SecureTransport": "false".
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 64:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 65:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so that's it for encryption, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/152_S3 Encryption - Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's practice encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for this I'm going to create a bucket called demo-encryption-stephane-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we scroll down, we're going to leave this on, leave this on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We're going to enable bucket versioning.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then under default encryption, as we can see, we have three different options but we must choose a default encryption for our buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I will go over SSE-S3 right now and we'll have a look at SSE-KMS and DSSE-KMS later on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's click on Create a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now we have created a bucket that has default encryption turn on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's verify this by actually uploading an object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to add a file and we'll add our coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to just click on Upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And as you can see now I can click on this file and scroll down, look for the server side encryption settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And indeed the file was encrypted with server side encryption with Amazon S3 managed keys, so SSE-S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: We can also edit the encryption mechanism for a file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I could just click on Edit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see, if we do edit the server side encryption, then this will create a new version of the object with updated setting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And so therefore, this is why I have enabled versioning for my bucket, is to show you that a new version of the file will be created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's change the encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for this, we're going to override the bucket settings for default encryption for this one object.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so we have a choice to use either SSE-KMS or DSSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So DSSE-KMS, I won't spend a lot of time on this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: It's just two level of encryptions on KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just a stronger KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're just going to use KMS right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is simpler and it is not going to cost us any money.
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to use SSE-KMS as we learned.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we have to specify a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can either enter a KMS key ARN, or we can choose from your own KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if we choose from the KMS keys right now, you should have only one key available the AWS/S3 key, and it's called the default KMS key for the S3 service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you click on it, we can use this key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's not going to cost us any money because this is the default key for the service.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you created your own KMS key, then it would be available in this list.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But creating your own KMS key will cost you some money every month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for this purpose, we're just going to use the default AWS/S3 KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's save the changes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We close this, and now if we go under Versions, as we can see, we have two versions of our file right now available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so the current version, if we scroll down and go under service side encryption, as we can see it is indeed encrypted with SSE-KMS with this encryption key, which corresponds to the default AWS/S3 KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is really good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next we go under this part.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So we can do the same process by uploading a file and then we're going to add a file, for example, beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And under Properties, we're going to find server side encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And here we can specify an encryption key to either use the default encryption mechanism or to override it with SSE-S3, SSE-KMS or DSSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And finally, let's have a look at the default encryption properties.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's scroll down and we're going to find default encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's edit this, and here we have the option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we can enable SSE-S3, SSE-KMS as the default encryption, or DSSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in case we do SSE-KMS, we have the bucket key option available to us.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is to reduce the cost by doing less API calls to AWS KMS.
- Hidden/Implicit Meaning: Storage economics signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so this is enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: If we just use SSE-S3, then this setting doesn't count.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we've seen that we can change the default encryption here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you may ask me, well, SSE-C is missing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, indeed it is missing because SSE-C you can only do from the CLI, not from the console.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means that you cannot enable SSE-C right here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Data Protection and Immutability
- Services: Amazon ECR
- Key Insights: And finally, for client side encryption, while you have to encrypt everything client side, then upload it to AWS and then decrypted client side, and so you don't need to tell AWS that the data is client side encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So therefore, the only options you can deal with in the console are SSE-S3, SSE-KMS and DSSE-KMS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So that's it, we've seen all the encryption options in AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/153_S3 Default Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So just a short lecture on default encryption versus bucket policies.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by default now all buckets are having a default encryption of SSE-S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it's applied automatically to new objects toward the new buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But you can change this to be a different default encryption, for example, SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Nonetheless, you can also force encryption by using a bucket policy to refuse any API call to put an S3 object without the correct encryption headers.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, SSC-KMS or SSE-C.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Or, hey, if you are uploading this but there is no customer side algorithm, so no SSE-C, then deny this object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is just an example, but at least you see that a bucket policy can also force a way to have encryption in your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And by the way, bucket policies are always going to be evaluated before your default encryption settings.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's it, just remember, default encryption is on by default with SSC-S3 but you can change it and you can apply a bucket policy preemptively to force encryption to the one you want.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/156_S3 MFA Delete.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So now let's talk about a security feature called MFA Delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: MFA stands for multi-factor authentication, and this is a way to force users to generate a code on a device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It could be, for example, a mobile phone with a Google Authenticator application or whatever, or another one for example, or a hardware such as an MFA hardware device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And this is going to give you a code, and that code must be inserted into Amazon S3 before doing important operations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So when is MFA going to be required?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, it's going to be required when you want to permanently delete an object version.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, this is definitely a protection against permanent deletions or if you want to suspend Versioning on the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, both these options are quite destructive, and so MFA will be recovered for this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you want to enable Versioning or list deleted versions, then the MFA will not be required because these are not dangerous operations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to use MFA Delete, you must first enable Versioning on the bucket because this is relating, of course, to Versioning, and only the bucket owner, the root account, can enable or disable the MFA Delete, as you'll see in the next hands on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is quite complicated because while using the root account is not something you should do a lot, but you will see how do this in the next lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And just remember that MFA Delete is an extra protection to prevent against the permanent deletion of specific object versions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/157_S3 MFA Delete Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so let's demonstrate MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'm going to create a bucket, and I'll call it demo stephane MFA delete 2020 in eu-west-1.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I'm going to enable bucket versioning, and click on create buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, if we go to this bucket, the MFA bucket, and go to properties and bucket versioning and click on edit.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, Multi-Factor authentication (MFA) delete is currently disabled, and you cannot change this through the UI of Amazon console, for some reason.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So maybe someday they will allow us to enable it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But for now, what you have to do is to enable it directly using the AWS CLI.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So a prerequisite of this hands-on is to make sure that, under IAM, you have already set up an MFA device for your root accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm using my root account right now, as you can see, it's, I'm logged in as roots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I need to do is click on it and click on my security credentials.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is taking me to the security credentials I have in IAM.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And under a Multi-Factor authentication MFS, you can see I've set up already a virtual device for my MFA, and the ARN is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: Next, we have to go ahead and actually configure the ADA CLA to use this root account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, this is something I don't recommend on doing, except for enabling MFA delete on your S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is to create new access keys, and I will download the key file and then show the access keys as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: I will remove them, so don't worry about seeing mine, but you should never share your root access key with anyone as well as your secret access key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so what I need you to do now is to set up the CLA with these two little settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: So I'm going to configure my command line.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: So AWS configure and then I'm going to create a profile and I've called this profile, roots-MFA-delete-demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And this file, you can find under, s3advanced.mfadelete.sh.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're using the comments from there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to set up this profile and then after you enter my access key Id, which is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: So let's go ahead and paste this, my secret access key, which is all the way here, paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Default region name, eu-west-1, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, if I do AWS S3 LS, does it work? and do it with my profile that I've just created, which is called by the way, root-MFA-delete-demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Yes this gives me my three buckets that I have.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So my profile is correctly set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Next, what I have to do is to enable the MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for this, there is this full setting right here that I'm going to copy and then edit, with you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I paste it and I need to first change the bucket names.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the bucket for now is called, MFA-demo-stephane but I'm going to change it by demo-stephane-MFA-delete-2020, which is good.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: Versioning configuration status enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: MFA delete equals enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we are good to go here and then we need to specify the ARN of the MFA device and this I can find.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's find it's right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is the ARN of the MFA device, So I'm going to paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, the MFA code.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is something that I'm going to get directly from my application, that gives me my MFA code.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So seven one zero three four three, press enter.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And apparently this is not correct.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's wait another one. (typing) And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this was set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now, how do we know if it worked?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, if I go into my bucket versioning and refresh, as we can see now, bucket versioning, it says bucket versioning is enabled as well as Multi-Factor authentication, MFA delete is enabled.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so, how do we know if it worked?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, let's say I'm going to my objects and I'm going to upload objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let me upload, for example, a copy of the JPEG file, I will upload it, so this is working Now If I go back to my buckets, take that objects and delete it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to delete it, but we have enabled versioning, so this is just going to add a delete marker.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is working as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all in all so far, so good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I list my bucket versions now, okay I have two versions for my file, but now if I wanted to, for example, delete this specific version ID.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this one is called a permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: It says, you cannot delete object because Multi-Factor authentication, MFA deletes is enabled for this bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 56:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And so to do so we need to use the CLI command to delete this file or disabled MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we can just go ahead and disable MFA delete, so for this, the command is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: So it's the same command that this time will do MFA delete equals disabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to take the command from before and I'm going to edit it out, so here we go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: MFA delete equals disabled and obviously the MFA code I need to change.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me wait for the next MFA code to appear on my screen.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully it will work.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Press enter.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And here we go, this works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now if I try another time to delete, for example, delete, the delete marker.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Yes, it is working because I have disabled MFA delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's confirm it by typing in this texts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then finally going back to my buckets, go into my properties and under bucket versioning, yes, we can see that MFA delete is disabled.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And obviously at the end of the lecture, I almost forgot, but no, I didn't forget.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Please delete your route access key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is really bad to you have them so, I will deactivate them and we're good to go, and then finally I can probably delete them at some point.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Thank you so much, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/158_S3 Access Logs.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now, let's talk about S3 Access Logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for audit purposes, you may want to log all the access made into your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that means that any request made to your S3 bucket from any account, whether or not it's authorized or denied, is going to be logged as a file into another S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: Amazon Athena
- Key Insights: And that data then can be analyzed using data analysis tool such as Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Now, the target logging buckets must also be in the same AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, you're going to request against your S3 buckets, and then you're going to enable the access logs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that's all the requests are being logged into the logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, there's a specific format to this logs, and you can find it at this URL to find the log formats.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, with access logs, there is a little bit of warning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Never ever set your logging bucket to be the same as the bucket you are monitoring, because otherwise, it will create a logging loop and it will be infinite and your bucket will grow in size exponentially.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: While you do put object, but the app bucket and the logging bucket is the same.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there will be a logging loop and you will log that again and log that again and log that again and you will pay a lot of money.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So do not try this at home.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/159_S3 Access Logs - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's go ahead and practice S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And for this I'm going to create an S3 access logs, define V3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then I will go ahead and create that bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that bucket is going to be our logging bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to keep this open here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in another tab I'm going to take one of my buckets that I've created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to enable the um logging.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I just took one bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But whatever bucket you want for your really I will go on properties and then I will scroll down and look for server access logging.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we edit it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's enable it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see the bucket policy will be updated for the target buckets where we want to write data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So first we have to specify a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So oops.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'm going to go in my bucket and type access.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So Stefan access log v3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This is the bucket I want.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will choose this as my destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have a destination region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is EU West one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have the destination bucket name prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This is if I wanted to select an optional prefix in my bucket to for example have slash logs, but we will not do this.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the log object key format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have this format right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And there is an example here given to me as the log key example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Or if I use the second one, I can also specify a different S3 event time or a log file delivery time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again this would change my final uh key format.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Right now we're going to keep it as default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's just use the first option okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Which will be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then click on Save changes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And now my S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Uh, server access logging is enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now what I can do is I can go to my objects, I can click on this one, I can maybe open it, um, back into my bucket, I can go in it and I can upload a file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll add a file and it'll be, for example, my JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can do a lot of things in your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all of this is going to generate activity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And this activity is going to be logged into your logging bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if I refresh, as you can see nothing happens yet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: That's because it takes a little bit of time for your access logs to go into your logging buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But what we can do in the meantime is have a look at the permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Because when we enabled the server bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we were right here the server access logging.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: When we enabled it, it was saying that the bucket policy will be updated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's verify that we can scroll down.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And we have the bucket policy right here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And indeed yes, the bucket policy was updated to allow the logging service of Amazon S3 to put objects into this buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this, um, not what we have to do is go back into our buckets and wait for the first logs to be sent.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it took a couple of hours, but I just refreshed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in my bucket I see a lot of files now objects and these have been created directly for my access log.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I can click on one of them and I can open it for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in here I'm able to see, well what happened.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is quite hard to decipher okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But it gives you the API call, the success rate, who accessed it, what bucket it was, at what time, and a lot of information.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 56:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So okay, that's it for S3 access logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/14_Amazon S3 Security/162_Glacier Vault Lock & S3 Object Lock.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So now let's talk about S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So the idea is that you want to lock your Glacier Vault to adapt a WORM model.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means Write Once Read Many.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: Amazon Glacier
- Key Insights: So for this, you need to create a Vault Lock Policy on top of your Glacier and then you lock the policy itself for future edits.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: That means that once you've set a Vault Lock Policy and you locked it, it can no longer be changed or deleted by anyone which is very helpful for compliance and data retention.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: So that means that once an object is inserted into your Glacier vault and the vault itself has a Vault Lock Policy then the object can never be deleted and even by administrator or AWS or whatever you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 8:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it's very helpful for anything legal such as compliance or data retention.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So that's for the Glacier option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's quite simple to understand.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: Now, there is the same option or something similar at least for the S3 buckets, but it's a bit more complicated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for enabling S3 Object Lock, you must first enable versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, it allows you to adapt a WORM model, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: But this time it's not a lock policy at the whole S3 bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It is a lock you can adapt for each and every object within your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can do an object lock on the single object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that thanks to an S3 object lock, you want to block a specific object version to be deleted for a specified amount of time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we have two retention modes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the first one is the compliance mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: The compliance mode looks a lot like what we had for S3 Glacier Vault Lock.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means that once you are in your compliance mode, no one can change anything.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's when you wanna be super compliance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Lifecycle Operations
- Services: Amazon Lex
- Key Insights: But if you want to be a bit more flexibility you have the Governance Retention mode.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this case, most user cannot override or delete an object version or alter its lock settings.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: But some users, the admin users, have special permissions and that's given through IAM and they can change the retention or delete an object directly.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 28:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So compliance is very strict as a retention mode.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Whereas government's is a bit more lenient and some users have had admin powers and can change a few things.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now, in both these modes you have to set a retention period.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 31:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: That means that you can either apply the compliance or the governance mode with a retention period to say that you want to protect the object for a fixed period of time.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that period of time can be extended, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, there is one more thing you can do with the S3 object log, it's to pull the legal hold on an object.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is different from what we saw.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So legal hold protects any object on your S3 bucket indefinitely and that's independent from the retention period.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So once you place a legal hold on an object think of like, oh, this object is very important.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We need to use it in a trial.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's place a legal hold on it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Then the object is protected forever regardless of what retention mode and retention period you've set on it from before.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then someone who has the IAM permissions S3 PutObjectLegalHold has the option to take any objects and put legal holds on them or to remove them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon Lex
- Key Insights: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you need to know the differences of the S3 object lock going at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/16_AWS Storage Extras/174_Architecture_ Snowball into Glacier.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just a very short lecture around a scenario that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family, Amazon Glacier
- Key Insights: And the idea is that you want to have Snowball import data directly into Glacier, but Snowball cannot import data directly into Glacier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: The solution for you is to use Amazon S3 first, and then you would create a lifecycle policy to transition these objects into Amazon Glacier.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So once you know, it is very simple.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Hybrid Transfer and Mobility, Lifecycle Operations, Object Storage Patterns
- Services: AWS Snow Family, Amazon Glacier, Amazon S3
- Key Insights: Snowball imports the data into Amazon S3 and thanks to an S3 lifecycle policy, the data is transitioned into Amazon Glacier.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is something to remember for the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Block and File Storage Design
- Data Protection and Immutability
- Hybrid Transfer and Mobility
- Lifecycle Operations
- Object Storage Patterns
- Storage Operational Context

### 2. Services List
- AWS CloudTrail
- AWS Config
- AWS SAM
- AWS Snow Family
- Amazon Athena
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon Glacier
- Amazon Lex
- Amazon RDS
- Amazon S3

### 3. Features List
- ebs
- glacier
- lifecycle
- s3

### 4. Use Cases
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:19: Prefix, this is if I wanted to select an optional prefix in my bucket to, for example, have /logs, but we will not do this.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:25: So let's just use the first option, okay, which will be enough for our use case.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:31: So I'll add a file and it'll be, for example, my beach.jpeg.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:37: But what we can do in the meantime is have a look at the Permissions, because when we enabled the server buckets, so when were right here, the Server access logging, when we enabled it, it was saying that the Bucket policy will be updated.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:40: And indeed, yes, the bucket policy was updated to allow the logging service of Amazon S3 to put objects into this buckets.
- 160_[SAA_DVA_SOA] S3 Access Logs - Hands On.txt:45: So I can click on one of them and I can open it, for example.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:8: And then we have client-side encryption when we want to encrypt everything client side and then upload it to Amazon S3.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:35: The KMS key has its own APIs, for example, GenerateDataKey, and when you decrypt, you're going to use the Decrypt API, and so therefore, you're going to do API calls into the KMS service.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:37: And so if you have a very, very high throughput S3 bucket, and everything is encrypted using KMS keys, you may go into a thread link kind of use case.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:64: So SecureTransport is going to be true whenever using HTTPS and false whenever you're not using an encryption, an encrypted connection, and so, therefore, any user trying to use HTTP on your bucket is going to be blocked, but users using HTTPS may be allowed.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:4: But you can change this to be a different default encryption, for example, SSE-KMS.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:6: So for example, SSC-KMS or SSE-C.
- 194_[SAA_DVA_SOA] S3 Default Encryption.txt:7: So this is the kind of bucket policies you could have in, for example, this one is saying, hey, if you do a PUT object but you don't have the encryption header that says AWS KMS, then deny this request.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:24: So it's when you wanna be super compliance.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:41: So this is a flexible mode where you can say, hey, when someone wants to protect an object in admin, they use the PutObjectLegalHold permission.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:42: And then once, for example, a legal investigation is over then it gets removed again using this PutObjectLegalHold IAM permissions.
- 200_Glacier Vault Lock - Deep Dive.txt:5: This is used to restrict user and account permissions, whereas a Vault Lock policy is a policy you lock for regulatory and compliance requirements when you set up a lock.
- 200_Glacier Vault Lock - Deep Dive.txt:9: So for example, you can use this to forbid deleting an archive if less than one year old or to implement write once read many policy, WORM, policy.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:5: So, basically, when a retrieval job is completed, we can receive an SMS notification.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:19: For example, this one is to deny delete permissions for archives less that 365 days old.
- 069_Amazon S3 Presigned URLs.txt:7: So say, for example, we want to access our content and well, maybe we're a training company, right?
- 069_Amazon S3 Presigned URLs.txt:23: We don't want to have to go and modify our bucket policy in order to allow our partner rep temporary access to some of our data.
- 069_Amazon S3 Presigned URLs.txt:30: Now when you provide a pre signed URL, the user or the app will inherit the permissions of the user role or token that actually generated the URL and the URL can actually be used multiple times until the expiration date and time.
- 069_Amazon S3 Presigned URLs.txt:69: Now, when you create your pre signed URL, you're going to signify how long you want that pre-signed URL to be valid for.
- 069_Amazon S3 Presigned URLs.txt:70: However, the pre signed URL will expire when the token or the temporary credentials expire, even if that URL has a later time.
- 069_Amazon S3 Presigned URLs.txt:75: Now, what's going to happen here is that when those credentials expire, maybe on day three, well, our URL is also going to expire here as well.
- 069_Amazon S3 Presigned URLs.txt:83: In terms of the credentials, remember, when you create the URL, you signify how long you want it to last.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:7: And because of that, data tends to be a frequent target of concern when we think about securing our cloud and our data centers.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:20: Now when we do move that data from our data center, our home or whatever up into Amazon.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:24: Now, when we do that, what we need to do is make sure that our data is encrypted in transit and we would do this using TLS.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:25: And when I say we would use TLS, well, by default, that's going to happen because Amazon S3, the API is going to be secured by an Amazon certificate and naturally our client is going to negotiate a secure tunnel between the data center or whatever client is going to transfer that data to Amazon S3 API or ultimately the S3 service.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:26: So by default, we're going to be able to use TLS to secure our data in transit.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:27: That, of course, means when that data is moving across the wire, when it's moving from your data center to Amazon, S3, whatever wire it goes across, whether it's fiber, whether it's copper, whether it's satellite, whatever, we want to make sure that data, when it's moving, is encrypted.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:29: And the final one here is, well, what happens when our data lands in our bucket?
- 074_Protecting Your Data with Amazon S3 Encryption.txt:30: What happens when it's written to a device inside of Amazon's data center?
- 074_Protecting Your Data with Amazon S3 Encryption.txt:33: That means when our data lands on the server, when it lands on the device, on the target platform, which in this case it's Amazon S3, it's going to be encrypted by that service using some key.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:37: And a lot of times we refer to that as encryption at rest when we write the data to disk, when the data is sitting on the disk, that's generally called encryption at rest.
- 074_Protecting Your Data with Amazon S3 Encryption.txt:38: So again, Amazon provides us with multiple ways in order to perform encryption at rest when we write our data to Amazon S3 So hopefully this brief introduction into the different options for encryption really helps set the stage for this encryption topic.
- 075_Introduction to Client-Side Encryption.txt:8: So when you upload that data to S3, it's encrypted.

### 5. Constraints / Limitations
- 158_[SAA_DVA_SOA] S3 Access Logs.txt:5: Now, the target logging buckets must also be in the same AWS region.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:14: Therefore, you must set the header to "x-amz-server-side-encryption": "AES256" to request Amazon S3 to encrypt the object for you using the SSE-S3 mechanism.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:26: So for this, we must have a header called the "x-amz-server-side-encryption": "aws:kms" and then the object will be encrypted server side.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:32: So now to read that file from the S3 bucket, not only do you need access to the object itself but also to the underlying KMS key that was used to encrypt this object.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:34: So SSE-KMS has some limitations because while now that you upload and download files from Amazon S3, you need to leverage a KMS key.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:36: Each of these API calls is going to count towards the KMS quotas of API calls per second, so based on the region, you have between 5,000 and 30,000 requests per second, although they can be increased using the Service Quotas Console.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:43: So in that case, because we transmit a key into Amazon S3, we must use HTTPS and we must pass the key as part of HTTP headers for every request being made.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:47: And of course, to read that file, the user must again provide the key that was used to encrypt that file.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:50: And the idea with client-side encryption is that the clients must encrypt data themselves before sending data to Amazon S3.
- 192_[SAA_DVA_SOA] S3 Encryption.txt:59: Therefore, when you're using Amazon S3, it's fully recommended to use HTTPS to have secure transmission of data, of course, and if you use the SSE-C type of mechanism, you must use the HTTPS protocol.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:4: So the idea is that you take an object, you put it into your S3 Glacier Vault, and then you lock it so it cannot be ever modified or deleted.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:12: So for enabling S3 Object Lock, you must first enable versioning.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:21: So the idea is that the object versions cannot be overwritten or deleted by any user, including the root user.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:23: And also the retention modes themselves cannot be changed and the retention period cannot be shortened.
- 199_[SAA_SOA] S3 Object Lock & Glacier Vault Lock.txt:26: So in this case, most user cannot override or delete an object version or alter its lock settings.
- 200_Glacier Vault Lock - Deep Dive.txt:11: We have a Vault Lock policy and so the users can or cannot do things based on the Vault Lock policy but we can also combine it with a vault access policy for more permissions.
- 200_Glacier Vault Lock - Deep Dive.txt:18: Once we know that everything is working as it should be working, then we can complete the lock process and transition the Vault Lock policy from in-progress into the completed state from which the Vault Lock policy can never ever be changed and you have successfully made sure that your vault is going to be locked.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:22: The thing to know is that once you set a lock, you cannot change it.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:30: You cannot lose this, and it's saying we have 24 hours to validate this policy and complete the lock process.
- 201_[SOA] Glacier Vault Lock - Hands On.txt:42: I cannot change this.
- 069_Amazon S3 Presigned URLs.txt:12: So how do we share our content with only certain approved users?
- 069_Amazon S3 Presigned URLs.txt:15: And we want to make sure that those videos are accessible only by our paid subscribers and not just anybody on the Internet.
- 069_Amazon S3 Presigned URLs.txt:21: So how do we actually share our content with only certain approved users without impacting our bucket security?
- 069_Amazon S3 Presigned URLs.txt:26: And this is done using a time limited URL that we can generate.
- 069_Amazon S3 Presigned URLs.txt:44: So that's one way that we can use pre signed URLs to ensure the security of our bucket or our objects and only provide temporary access to do so.
- 069_Amazon S3 Presigned URLs.txt:74: Now, maybe in this case we used STS in order to assume a role and those credentials are only valid for, I don't know, three days.
- 070_Demo - Amazon S3 Presigned URLs.txt:13: So we know that none of the objects should be publicly accessible.
- 070_Demo - Amazon S3 Presigned URLs.txt:29: Now, the only thing that we have to specify about our pre signed URL is the expiration time, so we can specify that in minutes or hours.
- 070_Demo - Amazon S3 Presigned URLs.txt:41: We talked about our training company and giving users access to our content that lives on S3 and we probably want to put a time limit on that access, right?
- 074_Protecting Your Data with Amazon S3 Encryption.txt:18: The only thing we do for Amazon is we simply just put that in our bucket.
- 075_Introduction to Client-Side Encryption.txt:18: It must be encrypted before we move it.
- 076_Using Server-Side Encryption with Amazon S3.txt:45: Now the name should give it away a little bit because we talked about KMS a little bit, but this is essentially the same thing except for the keys are now managed using AWS.
- 083_Demo - In-Transit Encryption.txt:56: We're going to click on our avatar again, and we expect we should be able to access it, right?
- 095_Amazon S3 MFA Delete.txt:10: They must also have a token.
- 095_Amazon S3 MFA Delete.txt:11: They must also have a device.
- 095_Amazon S3 MFA Delete.txt:12: They must also have a fingerprint in order to authenticate as you.
- 095_Amazon S3 MFA Delete.txt:22: They must provide that six digit code from the MFA device in order to delete the bucket.
- 095_Amazon S3 MFA Delete.txt:23: So of course if you have this enabled and you have access to the MFA code, whether that's a device or a token or something like that, and then you submit a delete object request and you provide the required credentials and the MFA, well, the objects can be deleted if you have access to the MFA token.
- 095_Amazon S3 MFA Delete.txt:26: You must have versioning enabled in order to use MFA delete.
- 095_Amazon S3 MFA Delete.txt:27: Only the bucket owner or the root account can actually enable MFA delete on a bucket and MFA delete can only be configured on the AWS CLI or the API.

### 6. Patterns / Architectures
- (No explicit pattern markers detected)

## Step 3 - Deep Expansion (Storage Concepts)

### Core Services in This Topic
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Snow Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon ECR: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Glacier: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Lex: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Block and File Storage Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Data Protection and Immutability: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Hybrid Transfer and Mobility: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Lifecycle Operations: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Object Storage Patterns: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Storage Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Object storage | S3 | Blob Storage | Cloud Storage |
| Managed block storage | EBS | Managed Disks | Persistent Disk |
| Managed elastic file storage | EFS / FSx | Azure Files / NetApp Files | Filestore / NetApp Volumes |
| Archival and immutability | Glacier / Object Lock | Archive tier / Immutable Blob | Archive storage / retention policy |
| Hybrid transfer | DataSync / Storage Gateway / Transfer Family | Data Box / File Sync / SFTP patterns | Transfer Appliance / Storage Transfer Service |
| Storage analytics and optimization | Storage Lens / lifecycle analytics | Azure Monitor / lifecycle management | Storage Insights / lifecycle management |

### Trade-offs and Decision Notes
- Storage Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Choose storage by access pattern, consistency needs, latency expectations, and retention horizon.
- Durability, immutability, and restore paths define storage architecture quality.

### Phase 2 - Core Services
- Implement object, block, and file controls with explicit cost and lifecycle intent.
- Separate workload-facing storage design from archival, mobility, and governance workflows.

### Phase 3 - Advanced Patterns
- Use hybrid mobility and access abstraction carefully so transfer paths do not become hidden failure domains.
- Optimize for storage economics only after restore, integrity, and policy requirements are safe.

### Phase 4 - System Design
- Reference architecture: hot path storage, protection layer, archival tier, and mobility pipeline.
- Scaling considerations: object cardinality, metadata pressure, throughput ceilings, and transfer windows.
- Cost considerations: retrieval fees, replication sprawl, idle snapshots, and class-selection mistakes.
