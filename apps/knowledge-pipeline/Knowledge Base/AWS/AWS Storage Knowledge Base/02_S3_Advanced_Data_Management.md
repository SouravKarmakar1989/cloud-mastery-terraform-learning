# 02_S3_Advanced_Data_Management.md

## Scope
- Topic: Lifecycle, replication, eventing, access points, metadata, and advanced S3 operations
- Files processed: 43
- Extracted non-empty transcript lines: 1699
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Storage Knowledge Base
- Cross-domain referrals: 6

## Real Material - Architect Learning Build (Storage: S3 Advanced Data Management)

This section is the study-first architecture guide for lifecycle, replication, eventing, access points, metadata, and advanced s3 operations.

### Phase 1 - Foundations

#### Module: S3 Advanced Data Management Mental Model
- Use s3 advanced data management decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: S3 Advanced Data Management Mental Model
- Primary transcript files:
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/105_Amazon S3 Event Notifications.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/300_S3 Replication with Encryption.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/092_Bi-Directional Replication.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/13_Advanced Amazon S3/135_S3 Lifecycle Rules (with S3 Analytics).txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/142_S3 Lifecycle Rules (with S3 Analytics).txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/14_S3 Access Points/123_Understanding Access Points.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/11_Amazon S3 Introduction/124_S3 Replication - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/12_Amazon S3 Introduction/138_S3 Replication - Hands On.txt
- Top concept clusters from transcript metadata:
- Data Protection and Immutability
- Lifecycle Operations
- Object Storage Patterns
- Storage Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 43
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1699
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- We have replication events and we also have things like S3 lifecycle events.
- And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- And the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?
- The next one is keeping data synchronized across regions during a failover so you can synchronize your data between multiple AWS regions by configuring two way replication rules using cross region replication directly from a multiple region access point.
- So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- Two ways that we can use Cross-account access points in order to provide access to data that lives in one account from other accounts and whether they're our accounts or whether they are external accounts like business partners or something like that.
- And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- Now, by leveraging these access points, we can enforce granular access policies, and that's going to ensure that each partner only has those necessary permissions to work with a specific data set that they are permitted to work with.
- Now, the cool thing about access points is they act as a unique entry point for our S3 bucket, and that really allows us to control access permissions and start applying specific policies for different applications or users.
- For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- So we're going to jump into the AWS management console and I'll showcase how we're going to create our access points and of course add our policies to ensure that our users can consume our data through our access point.
- So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.

##### Polished Architect Notes
- Transcript signals that we have replication events and we also have things like S3 lifecycle events.
- Transcript signals that and so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- Transcript signals that and the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?
- Transcript signals that the next one is keeping data synchronized across regions during a failover so you can synchronize your data between multiple AWS regions by configuring two way replication rules using cross region replication directly from a multiple region access point.
- Transcript signals that so the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- Transcript signals that two ways that we can use Cross-account access points in order to provide access to data that lives in one account from other accounts and whether they're our accounts or whether they are external accounts like business partners or something like that.
- Transcript signals that and this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- Transcript signals that now, by leveraging these access points, we can enforce granular access policies, and that's going to ensure that each partner only has those necessary permissions to work with a specific data set that they are permitted to work with.
- Transcript signals that now, the cool thing about access points is they act as a unique entry point for our S3 bucket, and that really allows us to control access permissions and start applying specific policies for different applications or users.
- Transcript signals that for SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- Transcript signals that so we're going to jump into the AWS management console and I'll showcase how we're going to create our access points and of course add our policies to ensure that our users can consume our data through our access point.
- Transcript signals that so it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: we have replication events and we also have things like S3 lifecycle events.
- Design implication: and so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- Design implication: and the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?
- Design implication: the next one is keeping data synchronized across regions during a failover so you can synchronize your data between multiple AWS regions by configuring two way replication rules using cross region replication directly from a multiple region access point.
- Design implication: so the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/14_S3 Access Points/123_Understanding Access Points.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/105_Amazon S3 Event Notifications.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/091_Same-Region Replication.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/092_Bi-Directional Replication.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/153_[SOA] S3 Access Points - Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/152_[SAA_DVA_SOA] S3 Access Points.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/14_Amazon S3 Security/153_S3 Access Points.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/163_S3 Access Points.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/027_S3 Access Points.txt
- Top concept clusters from transcript metadata:
- Storage Operational Context
- Object Storage Patterns
- Data Protection and Immutability
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 43
- Module-selected transcript files: 9
- Key insight candidates scanned (topic): 1699
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- Two ways that we can use Cross-account access points in order to provide access to data that lives in one account from other accounts and whether they're our accounts or whether they are external accounts like business partners or something like that.
- Now, by leveraging these access points, we can enforce granular access policies, and that's going to ensure that each partner only has those necessary permissions to work with a specific data set that they are permitted to work with.
- Now, the cool thing about access points is they act as a unique entry point for our S3 bucket, and that really allows us to control access permissions and start applying specific policies for different applications or users.
- So we're going to jump into the AWS management console and I'll showcase how we're going to create our access points and of course add our policies to ensure that our users can consume our data through our access point.
- Now you can create specific access points for each one of your partners and that's going to allow them to directly access the shared data set without really exposing the entire bucket to the Internet.
- So when you go to a bucket and you look at the properties, you'll actually have your event notifications and then below that you'll have another box that allows you to configure Eventbridge as well.
- Now, when you have an extensive data sets that need to be shared with external collaborators, access points are going to provide you with a secure and really controlled way to grant them access.
- So if you have customers that have production and test accounts that use the same data, well, we can simply replicate those objects between multiple accounts while maintaining object metadata.
- Now, when you use the Amazon S3 console to configure event notifications to a bucket, the console is going to set up the necessary permissions for that lambda function for you to grant.
- Now, with these access points, you can grant granular permissions, set up fine grained access controls and really start simplifying the authorization process for accessing your bucket.
- So even in the event of a regional traffic disruption, you can use two way replication rules to keep all metadata and objects in sync across your buckets during data replication.
- So you want it to remain private, in which case, while the S3 console doesn't support accessing the S3 bucket resource using the VPC access points, and you need to use the API.

##### Polished Architect Notes
- Transcript signals that two ways that we can use Cross-account access points in order to provide access to data that lives in one account from other accounts and whether they're our accounts or whether they are external accounts like business partners or something like that.
- Transcript signals that now, by leveraging these access points, we can enforce granular access policies, and that's going to ensure that each partner only has those necessary permissions to work with a specific data set that they are permitted to work with.
- Transcript signals that now, the cool thing about access points is they act as a unique entry point for our S3 bucket, and that really allows us to control access permissions and start applying specific policies for different applications or users.
- Transcript signals that so we're going to jump into the AWS management console and I'll showcase how we're going to create our access points and of course add our policies to ensure that our users can consume our data through our access point.
- Transcript signals that now you can create specific access points for each one of your partners and that's going to allow them to directly access the shared data set without really exposing the entire bucket to the Internet.
- Transcript signals that so when you go to a bucket and you look at the properties, you'll actually have your event notifications and then below that you'll have another box that allows you to configure Eventbridge as well.
- Transcript signals that now, when you have an extensive data sets that need to be shared with external collaborators, access points are going to provide you with a secure and really controlled way to grant them access.
- Transcript signals that so if you have customers that have production and test accounts that use the same data, well, we can simply replicate those objects between multiple accounts while maintaining object metadata.
- Transcript signals that now, when you use the Amazon S3 console to configure event notifications to a bucket, the console is going to set up the necessary permissions for that lambda function for you to grant.
- Transcript signals that now, with these access points, you can grant granular permissions, set up fine grained access controls and really start simplifying the authorization process for accessing your bucket.
- Transcript signals that so even in the event of a regional traffic disruption, you can use two way replication rules to keep all metadata and objects in sync across your buckets during data replication.
- Transcript signals that so you want it to remain private, in which case, while the S3 console doesn't support accessing the S3 bucket resource using the VPC access points, and you need to use the API.

##### Architect Synthesis (Transcript-Derived)
- Treat Storage Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: two ways that we can use Cross-account access points in order to provide access to data that lives in one account from other accounts and whether they're our accounts or whether they are external accounts like business partners or something like that.
- Design implication: now, by leveraging these access points, we can enforce granular access policies, and that's going to ensure that each partner only has those necessary permissions to work with a specific data set that they are permitted to work with.
- Design implication: now, the cool thing about access points is they act as a unique entry point for our S3 bucket, and that really allows us to control access permissions and start applying specific policies for different applications or users.
- Design implication: so we're going to jump into the AWS management console and I'll showcase how we're going to create our access points and of course add our policies to ensure that our users can consume our data through our access point.
- Design implication: now you can create specific access points for each one of your partners and that's going to allow them to directly access the shared data set without really exposing the entire bucket to the Internet.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/092_Bi-Directional Replication.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/14_S3 Access Points/123_Understanding Access Points.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/152_[SAA_DVA_SOA] S3 Access Points.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/14_Amazon S3 Security/153_S3 Access Points.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/163_S3 Access Points.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/027_S3 Access Points.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/093_Amazon S3 Batch Replication.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/101_Storage Lens.txt
- outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/105_Amazon S3 Event Notifications.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/149_S3 Storage Lens.txt
- Top concept clusters from transcript metadata:
- Data Protection and Immutability
- Object Storage Patterns
- Cost and Performance Optimization
- Lifecycle Operations
- Storage Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 43
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1699
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So even in the event of a regional traffic disruption, you can use two way replication rules to keep all metadata and objects in sync across your buckets during data replication.
- Now, with access points, you can control and limit access to your buckets, allowing access only from the designated VPC that's designated inside of the policy.
- So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Remember, replication does not replicate existing objects, so we need existing objects migrated well, S3 batch operations is going to do the job for us now.
- Now with replication, you can easily replicate the metadata changes such as ACLs, object tags, object locks or replication objects across multiple regions.
- So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- So this two way replication is really important If you want to keep all objects and all metadata changes in sync.
- It also lets you find ways to cut costs in your storage really fast and easily through this storage lens tool.
- We have replication events and we also have things like S3 lifecycle events.
- But just as a summary, while the three metrics are automatically available to all customers, and it contains around 28 usage metrics, and the data is available for queries for 14 days, whereas for advanced metrics and recommendations, you get additional paid metrics and features such as the activity, the advanced cost optimization, the advanced data protection and status codes.
- And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- And the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?

##### Polished Architect Notes
- Transcript signals that so even in the event of a regional traffic disruption, you can use two way replication rules to keep all metadata and objects in sync across your buckets during data replication.
- Transcript signals that now, with access points, you can control and limit access to your buckets, allowing access only from the designated VPC that's designated inside of the policy.
- Transcript signals that so you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Transcript signals that remember, replication does not replicate existing objects, so we need existing objects migrated well, S3 batch operations is going to do the job for us now.
- Transcript signals that now with replication, you can easily replicate the metadata changes such as ACLs, object tags, object locks or replication objects across multiple regions.
- Transcript signals that so to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Transcript signals that so this two way replication is really important If you want to keep all objects and all metadata changes in sync.
- Transcript signals that it also lets you find ways to cut costs in your storage really fast and easily through this storage lens tool.
- Transcript signals that we have replication events and we also have things like S3 lifecycle events.
- Transcript signals that but just as a summary, while the three metrics are automatically available to all customers, and it contains around 28 usage metrics, and the data is available for queries for 14 days, whereas for advanced metrics and recommendations, you get additional paid metrics and features such as the activity, the advanced cost optimization, the advanced data protection and status codes.
- Transcript signals that and so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- Transcript signals that and the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?

##### Architect Synthesis (Transcript-Derived)
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so even in the event of a regional traffic disruption, you can use two way replication rules to keep all metadata and objects in sync across your buckets during data replication.
- Design implication: now, with access points, you can control and limit access to your buckets, allowing access only from the designated VPC that's designated inside of the policy.
- Design implication: so you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Design implication: remember, replication does not replicate existing objects, so we need existing objects migrated well, S3 batch operations is going to do the job for us now.
- Design implication: now with replication, you can easily replicate the metadata changes such as ACLs, object tags, object locks or replication objects across multiple regions.

### Phase 2 - Core Services
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- AWS Lambda should be understood in terms of request path, control plane, and operational boundary.
- Amazon Data Firehose should be understood in terms of request path, control plane, and operational boundary.
- Amazon Kinesis should be understood in terms of request path, control plane, and operational boundary.
- Amazon EventBridge should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Block and File Storage Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cost and Performance Optimization becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Protection and Immutability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lifecycle Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Object Storage Patterns becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design s3 advanced data management with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when s3 advanced data management decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/019_Amazon S3 - Replication.txt (owned by AWS AI Knowledge Base)
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/020_Amazon S3 - Replication - Notes.txt (owned by AWS AI Knowledge Base)
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/021_Amazon S3 - Replication - Hands On.txt (owned by AWS AI Knowledge Base)
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/024_Amazon S3 - Lifecycle Rules.txt (owned by AWS AI Knowledge Base)
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/025_Amazon S3 - Lifecycle Rules - Hands On.txt (owned by AWS AI Knowledge Base)
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/033_Amazon S3 - Access Points.txt (owned by AWS AI Knowledge Base)

## CloudOps / SysOps Exam Enrichments
> Source: aws-certified-cloudops-associate transcripts â€” 160_S3 VPC Endpoints.txt, 161_IAM Access Analyzer for S3.txt, 142_S3 Replication Time Control (RTC).txt, 119_Lambda & S3 Event Notifications.txt

### IAM Access Analyzer for S3
- Monitoring feature that surfaces unintended access to S3 buckets.
- Analyzes: Bucket Policies, S3 ACLs, and S3 Access Point Policies.
- Identifies buckets that are publicly accessible or shared with other AWS accounts.
- Powered by IAM Access Analyzer â€” an AWS service for finding resources shared with external entities.
- Use: Review findings and mark expected ones as resolved; act on any unintended sharing.

### S3 VPC Endpoints: Gateway vs Interface
- **Gateway Endpoint**: Free. Works only within the VPC where it is created. Updates the route table. Requires DNS support enabled in VPC. EC2 instances use S3 public DNS but traffic stays private. Covers ~99% of use cases.
- **Interface Endpoint (PrivateLink)**: Deploys ENIs with their own security group. Cost: ~$0.01/hr per AZ (need one per AZ for HA). Requires DNS support AND DNS hostnames enabled in VPC. Key differentiator: enables on-premises access to S3 via VPN or Direct Connect.
- Exam rule: always prefer Gateway Endpoint unless on-premises (VPN/Direct Connect) access to S3 is required â€” use Interface Endpoint for that scenario.

### S3 Replication Time Control (RTC) â€” CloudWatch Monitoring
- Guarantees 99.99% of new objects replicated within 15 minutes with a predictable, auditable SLA.
- Publishes CloudWatch metrics to monitor replication latency; generates alerts if replication falls behind.
- Extra cost: per-GB charge on top of standard replication pricing.
- Choose RTC when compliance or business requirements mandate auditable, predictable replication speed.
### S3 Replication Time Control (RTC) â€” CloudWatch Monitoring
- Guarantees 99.99% of new objects replicated within 15 minutes with a predictable, auditable SLA.
- Publishes CloudWatch metrics to monitor replication latency; generates alerts if replication falls behind.
- Extra cost: per-GB charge on top of standard replication pricing.
- Choose RTC when compliance or business requirements mandate auditable, predictable replication speed.

### S3 Event Notifications â†’ Lambda: Operational Details (CloudOps/SysOps level)
- S3 event notifications invoke Lambda **asynchronously** â€” Lambda receives the event without S3 waiting for a response.
- Lambda is granted permission via a **resource-based policy** (not an IAM role on Lambda); the console sets this automatically when you configure the notification via the S3 UI.
- In case of Lambda failures, configure a **Dead Letter Queue (DLQ)** â€” typically an SQS queue â€” on the Lambda function to capture unprocessed event payloads.
- **Timing**: events are typically delivered within seconds, but can take up to a minute or longer â€” do not rely on strict sub-second delivery.
- **Versioning guard for concurrent writes**: if two writes happen to the same object key at the same time AND versioning is disabled, only one S3 event notification may fire. Enable versioning on the bucket to ensure each write produces a distinct version and corresponding event.
- Fan-out pattern: S3 â†’ SNS â†’ multiple SQS queues (each consumed by a different Lambda) â€” use this when multiple consumers need the same S3 event.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/040_[SAA_DVA_SOA] S3 Event Notifications.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that your events are going to happen in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What are events?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability, Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, events are things such as an object is created, or an object is removed, or an object is restored, or there is replication happening.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can filter these events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can say I only want to consider the objects that end with JPEG.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the use case for Event Notification will be, for example, to automatically react to certain events happening in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, you want to generate thumbnails of all the images upload to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, you're going to create your Event Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you can send it to a couple of destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: It could be an SNS topic, it could be an SQS queue, and a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't worry if you don't know this by now, we will learn about these features in the next lectures.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can create as many S3 events as desired, and you can send them to whatever target you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that these events are typically delivered within seconds to these destinations, but sometimes it can take a minute or longer.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, for the Event Notifications to work, we need to have IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the S3 service is sending data into an SNS topic, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to make this possible, we need to attach what's called an SNS resource access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: This is a IAM policy you attach to the SNS topic, and this will allow the S3 bucket to send messages directly into the SNS topic.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Similarly, if we use SQS, we create an SQS resource access policy, which authorizes the S3 service to send data into our SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: And finally, for Lambda function, you will have guessed, we need a Lambda resource policy attached to our Lambda function to make sure that Amazon S3 has the right to invoke our function.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So here we don't use IAM roles for Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: Instead, we define resource access policies on the SNS topic, on the SQS queue, or on the Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And they function similarly to what we had when we were using an S3 bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: So you have to remember SNS, SQS, and lambda function as Event Notifications targets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But now, there's a fourth integration you need to also learn about.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So your events are going into your Amazon S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all the events end up in Amazon Event Bridge no matter what.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all of them, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then from Event Bridge that you don't know yet, but you can set up rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And from Event Bridge, you can, thanks to these rules, send these events to over 18 different AWS services as destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So it really enhances the capability of S3 Event Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, we'll see Event Bridge later on this course, but with Event Bridge, you get advanced filtering options a lot more than what we had from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can filter by metadata, object, size, and name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can send to multiple destinations at the time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: You can say, for example, to Step Functions, Kinesis Data Streams, or Firehose, or you even get the features coming straight from Amazon Event Bridge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can archive events, replay events, and you get more reliable delivery.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, there's a lot you don't know in this lecture around the news services, but let's just focus on Amazon S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: The idea is that you can react to events happening in Amazon S3, thanks to sending it to SQS, SNS, Lambda, or Amazon Event Bridge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/041_[SAA_DVA_SOA] S3 Event Notifications - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, so let's go ahead and demonstrate S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, I'm going to create a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I call it "stephane-v3-events-notifications" and then when Ireland's... and I will just go ahead and create my bucket altogether.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now bucket is created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'm going to go into it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is make sure that event notifications are set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I go to properties, scroll down and then, here we have event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have two options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: Number one is to create an event notification, and I will show you this in a second, or number two is to enable the Amazon EventBridge integration to send all the events from this S3 bucket into EventBridge.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for this, you just you set it on and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: So it is something that now if I wanted to, I could use Amazon EventBridge to catch the events happening in my S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But I will show you the simpler way because it's a bit more complicated, is to just create an event notification and send it for example to SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'll call this one "DemoEventNotification" and then we can set up a prefix, a suffix, but I won't do it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And next, we to choose event types.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we want to react to all object create events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that means that any time an object is created, then an event is going to be created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to, you could get more granular and select which type of events you wanted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But to keep it simple, I'll take it here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And you can also include for example, object removals, object restores, and it shows you all the events you can catch on the right hand side.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll keep it simple.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I'm just going to scroll down, but as you can see, there are a lot of different events you can react to in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then, you want to publish to a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so we have three options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: We have Lambda functions, SNS topic, and SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And I'm going to choose SQS queue but we first need to create a queue, and then authorize Amazon S3 to publish messages into that destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is just go into Amazon SQS and then create a queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And I call this one "DemoS3Notification." I will go ahead and create this queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now wanting to do is to enhance the access policy to allow my S3 bucket to write into my SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, let me first demonstrate the problem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if I go back here and I am going to refresh this page to see my queue appear.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I refresh it and I say DemoS3Events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: All object created, and then scroll down and then choose the SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can choose the queue ARN.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I could choose queue here in the dropdown, DemoS3Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: And if I try to save my changes, I get an unknown error, which is saying that, "Hey, you are not able to validate the destination configuration because this SQS queue does not accept yet messages from my S3 buckets." And so I need to change the access policy by clicking on edits, scroll down, here's my access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I need to go ahead and generate a new policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I go to Policy Generator.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to be an SQS queue policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the effect is allow anyone, just to be very permissive, to do a send message.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And my Amazon resource name is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I need to copy it and paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I add a statement, and then generate this policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now, this is the policy I wanna use which allows anyone to write to my SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very permissive, but it will work.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now my access policy has been updated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now, if I go back here and try to save my changes, as you can see, the operation was successfully completed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And what happened is that if I go into my SQS queue and click on send and receive messages, and then click on poll for messages, as you can see, a message was being sent by Amazon S3 which is to test event, to test the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I can do is I can take this message and delete it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now we want to test whether or not the S3 Event Notification is working with SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So therefore we're going to upload an object, click on add files and choose our coffee, the JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will upload this file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now the file has been uploaded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I go into my bucket, I can indeed see that my coffee, the JPEG, has been created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And imagine we wanted to automate this and create a thumbnail from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then, we will need to have a message into our SQS queue to then process it and create a thumbnail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, I'm going to pull for messages.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, a message was created here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if you look at the message itself, and I'm going to try to increase this window size, we can see the fact that the "eventName" was "ObjectCreatedPut" So an object was indeed created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if we look deeper, we're going to see that the key of that message is coffee, the JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the coffee, the JPEG, was created and it generated a whole event into my SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And therefore, that shows the power of S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What I can do here is I can delete the message and we're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We've seen S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: What you need to remember again is that you can send to SQS, SNS and Lambda, as well as send all events to Amazon EventBridge for further processing and sending it to more destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/152_[SAA_DVA_SOA] S3 Access Points.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 14:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: AWS SAM
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/153_[SOA] S3 Access Points - Hands On.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create an access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for this, on the left hand side, I have the access point direct menu.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in here I can create an access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I call this one "demo access point." and then you have to specify a bucket name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I can specify the demo-S3-event-Stephane in my bucket, the region is determined by my bucket location, so EU-West-1, and then the network origin for this access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So is this a VPC access or is this an internet access?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if you specify the VPC access, that means that you want all the traffic to be coming from within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you want it to remain private, in which case, while the S3 console doesn't support accessing the S3 bucket resource using the VPC access points, and you need to use the API.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If to specify VPC, you need to obviously specify a VPC ID but I wanna demo stuff to use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I will use the internet, and in the internet I will be able to access my access point publicly.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next, do we want to block public access settings for this access point?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: So we have the same setting as your S3 buckets and then the access point policy, which is written in JSON., and will provide access to the object store.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's look at some examples for policies for access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's say we want to ensure that this bucket name right here is only accessed through a access powering policy and it will only give access to a subfolder.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for this, I can go into the policies example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will scroll down.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I will click on access point policies examples, and then I will show you the first step.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the first step is to create an access point policy grant.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so I'm going to copy this and paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if you look at the statements, so we allow a specific user, for example, I can take my account ID in here, and say the user Stephane is only going to be able to do get object and put object on, and then I need to specify the proper region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The account ID again is here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Access point, okay.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And here is the name of the access point I have.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's just copy this name right here and call it my access point, access point name. and then object, Stephane, star.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is going to only allow me to write to the directory Stephane star, which is I think pretty cool.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so this is the access point policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now it's been applied and I can access this access point right here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And as you can see, it took me directly into the demo-S3-Stephane bucket and it created an excess point as well in here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So my access point is now linked to my buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And what I can do is that I can go now to my bucket's permissions and change the bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, because we've created an access point in here, and that means that if we access our S3 buckets through this access point and my Stephane user access it through this access point, then it's only gonna be allowed to access a specific sub directory.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But my user's Stephane could still access my bucket through the buckets directly.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So what I need to do, is go into permissions and create a bucket policy that will be blocking any access other than access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And to do so, you click on delegating access control to access points, and then you need to paste that bucket policy in.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's do it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we'll edit this bucket policy and paste it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in this example we're saying, okay, allow any, when.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Okay, any action on the bucket ARN, so which you get the bucket ARN right here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the resources, this one and then this one, slash star.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: As long as the access point accounts is using the buckets accounts ID.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here it is, I'm going to paste this in.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So effectively what we're saying is that, this S3 bucket can only be accessed if you are using an access points coming from this accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is the current accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is good because now what we're doing, is that we're saying, hey, you can only access this buckets, okay, through the access points.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now you can define as many access points as you want directly in here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I've created one, but I could create another one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then through the access points, as you can see, we can view the buckets and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And there's going to be a specific ARN for this access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We've seen access points in details.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/154_[SOA] S3 Multi-Region Access Points.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you also have the possibility to define multi-region access points on Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The idea is that with this access point, you have a global endpoint that will span multiple S3 buckets in multiple regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the data is replicated from one bucket to the next and vice versa.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This way, all your regions are synchronized and we'll see as well, we have failover controls, so it's possible for us to define all buckets are active, or to have some buckets as a backup, so as a passive, so that if we failover if there's a region problem, then we can failover to the passive buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at, for example, an example with three regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: We have US-EAST-1, EU-WEST-1, and AP-SOUTHEAST-1, with the same S3 bucket that's going to be replicated across all regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So automatically, these roles are created by Amazon S3 for you, so you just have to say it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But then all the data within these buckets is going to be replicated no matter what.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see, we must have replication rules across all buckets to one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then we create this S3 multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in case this region is down then we may be redirected into the other regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So then we have the fellow rear controls I told you about for your S3 access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's take an example of a bucket that's across that's replicated across two regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we have a multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now in the case of an active passive fellow rear control where you're going to designate one bucket as active and the other one as passive.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore whenever we request an object.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're not going to go this time to the lowest latency we're just going to go to the one that's active.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, if you have multiple active ones you will have the lowest latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And these kind of failover controls are valid for active/passive type of setups, but also active/active.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is when you can write to multiple regions at a time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/155_[SOA] S3 Multi-Region Access Points - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's go ahead and create two buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna call this one my-global-app-stephane and then eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I'm just going to go all the way down and create these buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then I'm going to create another bucket, I'll call this one my-global-app-stephane-us-east-1 and I will choose another region being us-east-1.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'll call this one MyGlobalApp, and then we need to add buckets into this access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So here I will have app in this and we have these two buckets that I wanted to add.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's add these buckets and you can see I can add more buckets, okay?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But you only have one bucket per AWS region as far as it goes right now.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for this, I need to make sure that the name is lowercase, my-global-app.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, now let's create this access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, it can take less than 30 minutes usually, but up to 24 hours to create, so we'll wait for it to be ready and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So my multi-region access point is now ready.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I can click on it, and we have, its ARN, we have its alias, and we have the buckets, that's underneath.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if I click on these buckets, I can open them in new tabs, and before I do so, let's go into Permissions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And then for Replication and failover, this is where it gets interesting.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have a map of what's happening for your replication and your failover.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And as you can see right now, we don't have any replication rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 23:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 24:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 25:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's create a replication rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And here we have to choose we want to replicate among all specified buckets, or from one, two different destinations.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The simplest is obviously the first one, which was going to give us high availability and failover capabilities.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is done directly from this console as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we enable the rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We'll say all objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And finally, let's go ahead and create these replication rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 34:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 35:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 36:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And you can verify this by also going into your Management, and here you can find your replication rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I'm not gonna show you how to actually use it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is more of an application specific type of API calls, but at least we saw what these are made of.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And just to finish, what you can do is just delete this multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're not paying anything for having it, but in case you are using it, you will pay extra charges, based on how many gigabytes go through it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now let's talk about how we can move objects between different storage classes so you can transition them, and this is a diagram of how it's possible.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so all the types of permutations are shown in this graph.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So as a matter of fact, if you know that your objects are going to be infrequently accessed, then move them to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: And if you know that you're going to archive objects, move them into the Glacier of tiers or the Deep Archive tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 6:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, moving these objects can be done manually, of course, but we can automate this using lifecycle rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So these lifecycle rules are made of multiple things.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: The first thing is a transition action to configure the object to transition to another storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can also set up expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So configure objects to be deleted, to be expired after some time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, your access log files, you want to delete them after 365 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: Amazon EKS
- Key Insights: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The rules can also be specified for a certain prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So they can apply to entire buckets or to a specific path within your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And you can also specify it for specific object tags.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you want to only do a rule for the department finance, you can.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here's some scenarios.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: But these thumbnails, they can be easily recreated from the original photo and they only need to be kept for 60 days.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: But the source images, they should be able to be immediately retrieved for these 60 days and afterwards the user can wait up to six hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how would you design this?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is what an exam question will ask you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: AWS Config, Amazon Glacier, Amazon S3
- Key Insights: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 26:
- Concepts: Lifecycle Operations
- Services: AWS Config, Amazon ECR
- Key Insights: So the thumbnails can be on One-Zone IA because well, they're infrequently accessed, and they can be recreated easily, and you can have a lifecycle configuration to expire them or delete them after 60 days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: After this time, for up to 365 days, deleted objects should be recoverable within 48 hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For this, we can enable S3 versioning in order to keep and have object versions so that the deleted objects are in fact hidden by a delete marker and then can be recovered.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you will create a rule to transition the non-current versions of the objects to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Lifecycle Operations
- Services: Amazon Glacier, Amazon RDS
- Key Insights: So that means the versions that are not the top level versions, and then transition afterwards these non-current versions to Glacier Deep Archive for archival purposes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Lastly, how do we determine what's the optimal number of days to transition an object from one class to another?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, you can do this thanks to Amazon S3 Analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's going to give you recommendations for Standard and for Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: It does not work with One-Zone IA or Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so the S3 buckets will have S3 Analytics run on top of it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this will create a CSV report that will give you some recommendations and some statistics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The report is going to be updated daily and then it can take between 24 to 48 hours to start seeing data analysis coming out of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this is a good first step, this CSV report to put together lifecycle rules that makes sense or to improve them.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/203_[SAA_DVA_SOA] S3 Lifecycle Rules - Hands On.txt

Line 1:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's go ahead and create a lifecycle rule for our buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 2:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So let's go under management and create a lifecycle rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This one is going to be called demo rule, and we apply it to all the objects in the buckets and I acknowledge it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we can see we have five different rule actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can move current versions of objects between storage classes, non-current versions of objects between classes, expired current versions of objects, permanently delete non-current versions of objects, and finally delete expired objects, delete markers or incomplete multi-part upload.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So five different use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's have a look at them one by one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to move current version objects between storage classes that means that you have a version bucket, and the current version is the version that is the most recent the one displayed to the user.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, we can transition to standard IA after 30 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can go into intelligent tier after 60 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: Then we can go into say glacier after 90 days for instant retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: Then after 180 days flexible retrieval and then maybe deep archive after 365 days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can have a transition as much as you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we need to take this back to acknowledge what we do.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can also, for example move non-current versions so faster.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this one, we want to move an object that is non-current therefore an object that has been overridden quote unquote by near one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: So we can say, okay, this one we wanna move it into glacier flexible because we know that after 90 days we won't need it for retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect and we're good to go but we could add more transitions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for example we want to expire current versions of objects after, and at the bottom you can set it up after 700 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And same for the non-current options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We want to permanently delete them after 700 days as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is something we can do and now we can have a look at all these transitions and expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is nice because it shows you a timeline of what is going to happen to your current version and your non-current versions of your objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we're happy with all of this, we can just go ahead and create this role, and this role will act in the background to do what it's supposed to be doing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now you know how to automate moving objects in AWS free between different source classes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/204_[CCP_SAA_DVA_SOA] S3 Replication.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now let's talk about Amazon S3 Replication, and there are two flavors of it.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: So CRR is for cross-region replication and SRR is for same-region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The idea is that we have an S3 Bucket in one region and a target S3 Bucket in another region, and we want to set up asynchronous replication between these two buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, to do so, we first must enable Versioning in the source and the destination buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And if we do CRR, so cross-region replication, the two regions must be different.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 6:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: If we do SRR, the two regions are the same.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, it's possible for you to have these buckets in different AWS accounts and copying happens asynchronously.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the replication mechanism happens behind the scenes, in the background.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 10:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the use cases for replication are manyfold.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The first one is that if you use cross-region replication, this can be helpful for compliance or for providing lower latency access to your data because it's in another region, or to replicate data across accounts.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 13:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so that's it about replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's practice replication on Amazon S3.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, we're going to create a new bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I'll call it s3-stephane-bucket-origin-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will set it in one region that I want, for example, eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This will be my origin bucket and then data will be replicated from this bucket to another bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I will create this bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then open this bucket in a new tab.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I will create a second bucket and this will be my target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I will do s3-stephane-bucket-replica-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down and let's again enable bucket versioning on the target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now we have our primary bucket and our secondary bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: What I'm going to do is that in the origin bucket, I'm going to upload a file, so I will add a file of my beach, for example.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is done and we can close this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So now this has one file but, of course, this does not get replicated yet because we haven't set up replication yet.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So on the origin bucket, what I need to do is to go under Management, scroll down and there are replication rules.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Currently zero.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's go ahead and create our first replication rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 23:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So I'll call this one DemoReplicationRule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll set it as enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For the source bucket, we'll leave it as is and in terms of rule scope, we'll apply it to all objects in the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, for the destination, we can specify a bucket in this account or another account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we'll choose one in this account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And the bucket name is my target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I need to actually enter the name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we'll take this bucket right here, copy and paste it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, and as you can see, the destination region was identified as being us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So therefore, this is a Cross-Region Replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now for IAM role, we need to actually go and create a new role for this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here's the option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at some settings but for now it doesn't really matter for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's just save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we get a prompt right here, which says do you want to replicate existing objects?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for newer uploads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So if you wanted to replicate the previous objects from the source to the destination bucket, you could use something called a Batch Operation, an S3 Batch Operation to do so and you would need to say yes, replicate existing objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But this is separate from the replication feature itself.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, I'm going to say no, do not replicate existing objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have this Management with a replication rule that is ready.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now what I'm going to do is check in my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Of course, if I refresh now, we see that the objects haven't been replicated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do is now upload a new file, for example, upload the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Upload it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's show the versions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is coffee.jpg and the version is GBk.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now if we go in my target bucket, and refresh this, it's gonna take maybe five seconds.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And this took about 10 seconds on the first replication but we can see that my coffee.jpg has been added into my replica bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 59:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: And if I show the versions, we can see that the version ID of my coffee.jpg is the exact same of the origin bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the version's IDs are replicated, which is great.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I wanted to import the beach.jpg, I would need to upload a new version of that file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's upload beach.jpg again.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this has been uploaded, we can look at the versions, so there is a new version right here of DK2 of my beach.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now if I go here and refresh, now let's look at one more setting that is important for your exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So if I go back into Management, and take this and edit this role, we can scroll down and have a look at one setting called the delete marker replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by default, delete markers are not replicated but there's a feature to do so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if you enable delete marker replication, then they will be replicated from one bucket to another.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So my replication rules have been saved.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 70:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And so that means that if I go in this bucket, and I choose to delete this file, for example, I delete my coffee.jpg file, let's delete it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 71:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This will actually create a delete marker because my bucket is versioned.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now my coffee.jpg is deleted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And let's have a look in here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh and we need to wait little bit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now you can see that the delete marker has been replicated to my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if I don't show version, I don't see my coffee.jpg file but of course, if I show versions, I will see it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is true here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, this is true here as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the delete markers are deleted but if you decide to delete a specific version of a file, for example, I delete this one, which is I delete a specific version ID.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is called the permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I permanently delete one object in my origin bucket, it will not be replicated to my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 83:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/206_[SAA_DVA_SOA] S3 Replication - Notes.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Hey, so just a few notes about Amazon S3 Replications.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: And if you want to replicate existing objects, then you need to use the S3 Batch Replication feature.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this will replicate the existing objects and the objects that have failed Replication, and in case you have delete operations, you can replicate these delete markers from the source bucket to the target bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It's an optional setting, but if you have a deletion with the version ID, they are not replicated, so if it's a permanent deletion, because you want to avoid malicious deletes happening from one bucket to another.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, there's no chaining of replications.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that means that if bucket one has replication to bucket two, and then, bucket two has replication to bucket three, then the objects of bucket one are not replicated into the bucket three, so that's it.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/220_Amazon Data Lifecycle Manager.txt

Line 1:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Next, there is a service with an EBS called Amazon Data Lifecycle Manager, which is used to automate the creation, retention and deletion of EBS snapshots and EBS-backed AMIs.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it's a way for you to schedule backups, do cross-account snapshot copies automatically or to delete outdated backups using policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Use resource tags to identify the resources you want to back up, for example, EC2 instances or EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so here's an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: We can tag an EBS volume with environment prod to make sure that it automatically gets backed up by Amazon Data Lifecycle Manager.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 6:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Or we can tag directly an EC2 instance with this environment prod.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And then the instance itself will be and its EBS volumes will be backed up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it goes into Data Lifecycle Manager and we can create snapshots and AMIs out of it.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 9:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: It cannot be used to manage snapshots or AMIs created outside of DLM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So everything has to be contained within Data Lifecycle Manager and it cannot be used to manage instance-store backed AMIs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/089_S3 Replication Limitations.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Beyond replicating existing data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's talk about additional limitations that keep in mind.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, if you have multiple buckets and you have multiple rules out there, replication will not replicate data that was created by another replication rule.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that actually mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, say, for example, I've got these three buckets on the bottom.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I've got bucket, A bucket B and bucket C and A create a rule in there that says I want all my data in bucket A to be replicated to bucket B, And finally, I want all my data in bucket B to be replicated to bucket C, So let's take a look at that data to bucket A and it gets replicated to bucket B.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now what's not going to happen is that data in bucket B will not be replicated to bucket C because the data in bucket B was created by another replication rule.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: However, if I do put an object into bucket B, replication will indeed replicate that data over to bucket C because that data was put directly into bucket B, it was not put there by another replication rule.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So keep that in mind.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: If you have multiple rules out there, you will not actually replicate data that was created by another replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Rule Replication will also not replicate data that was already replicated.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: If for some reason you changed the destination of an existing replication configuration, S3 will not replicate those objects again for you.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If we have Bucket A here and I have a rule that says, okay, I want all my data to be replicated from bucket A to bucket B, Cool.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We write some data in there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We replicate all that data to bucket B, and then for some reason we're like, You know what?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe we want to change that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Maybe we want bucket A to now replicate to bucket C instead.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Bucket A will not replicate that data again.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So you would have to use something like an S3 batch operation in order to migrate that data from bucket A over to bucket C.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now any new data at this point that's written to Bucket A would now be replicated to bucket C, but it's not going to replicate that data that was already previously replicated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So one more to keep in mind here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Data Protection and Immutability
- Services: Amazon Glacier, Amazon Lex
- Key Insights: Replication will not replicate data stored in glacier flexible retrieval or deep archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 24:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon Lex
- Key Insights: Now this is probably a good thing considering, well, the retrieval costs of all your objects if they're living in flexible retrieval or deep archive and the time it might take to retrieve that data from those storage classes and then replicate those objects to the secondary bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal; Storage economics signal.

Line 25:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Something to keep in mind here when you're setting up replication, if you have objects in standard, they'll easily be replicated over.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: But if you have objects in Glacier, it will not be replicated to bucket B So again, limitations to keep in mind here.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/090_Cross-Region Replication.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Let's quickly talk about different concepts of when we are setting up replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: We talked about these earlier, but we have cross region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we've got our cloud accounts, got Usds one and EU West one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have a bucket in US East one and we have a bucket in EU West one as well.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now if we want our data to be replicated across these regions, this is what's called cross region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So it's just another rule that you would configure and point to the bucket that happens to live in another region.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now keep in mind you can set up one or many replications to different buckets that live in different regions.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So really quickly about cross region replication, why would you store your data in multiple bucket regions?
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, maybe compliance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So although Amazon S3 does store your data in multiple Azs within a region, well, maybe you have compliance requirements that dictate that you store data in even greater distances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: I have worked with clients before that have very specific terms in regards to how far data centers and data needs to live.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Some have been like 50 miles, some have been 500 or 1000 miles apart.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Disasters wouldn't impact each one of those.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So in order to satisfy those requirements, you can use cross region replication to replicate data between distant AWS regions.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 15:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now the next one is performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if you have customers into geographic locations or your applications live in multiple locations, well you can minimize the latency in accessing those objects by maintaining object copies in those different AWS regions that are geographically closer to your users.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, resiliency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe you just want to maintain a secondary copy of your data in a different AWS region for operational resiliency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just in the event that an AWS region becomes unavailable, you have your data living somewhere else.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: That's what cross region replication is and the benefits that you get from using cross region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/091_Same-Region Replication.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: The next concept is same region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Say, for example, we have multiple accounts in our organization and for security purposes, maybe one of those accounts is generating all of our logs based upon our workloads and we want to send all of our logs to another account for security purposes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe if somebody happens to breach one of our accounts, well, all the data is stored in another account that's separate and we would have access to all of our logs for troubleshooting and fingerprinting and all that good stuff for security purposes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: So in this case, even if we're not using multiple regions, there are benefits to using same region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this example we have account one, two, three, four, five on the left and we've got account nine, eight, seven, six, five on the right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: We've got two buckets, one in each, maybe 98765 is for Dr. and we set up replication and of course we can automatically replicate data that is written to our bucket on the left into a separate account on the right.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, that way if something happens to the account on the left, we've got all of our data on the right that's still protected in the event the account on the left gets breached or something like that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And from a disaster recovery standpoint, this could be even beneficial within the same account as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe the data on the left gets compromised, something like that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you have access to the data on the right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: Now why would I need a same region replication?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, maybe log consolidation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We want to aggregate logs into a single bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And by the way, this is very popular in most organizations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Most organizations are going to store logs in multiple buckets or across accounts, and then we can easily replicate those logs into a single bucket within that same region.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: By doing so, that allows for simpler processing of logs in a single location.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So if you're using something like Splunk or Sumo Logic or Datadog or any of those, you can simply point those tools to your single bucket instead of having to configure for those tools to point to 20 or 30 different buckets that logs are being written to.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: AWS Config
- Key Insights: You can also configure live replication between production and test accounts.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: So if you have customers that have production and test accounts that use the same data, well, we can simply replicate those objects between multiple accounts while maintaining object metadata.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can test on that production data if we need to.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, maybe we need to abide by data sovereignty laws.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe you are required to store multiple copies of your data in separate AWS accounts, but you may not have multiple region requirements.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe you don't want multiple region requirements, things like GDPR that stipulate that you cannot send that data outside of that region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: Again, this is a perfect example of using same region replication so you don't actually violate these data sovereignty laws and pay big fines for that.
- Hidden/Implicit Meaning: Durability and retention signal.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/092_Bi-Directional Replication.txt

Line 1:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The last concept I want to talk about really quick is bi directional replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we've got a bucket in US East one and we have a bucket in EU West one as well.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now maybe we want to set up replication to say any data that's written to us.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 4:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: East one, We want to also store that in EU West one, maybe we've got another data center or applications or customers or other teams out there that are performing analytics on this data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can easily set that up to replicate that data over there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But we also want to say, okay, maybe our team in us one, maybe they're writing results or they're maybe they're writing other things to our bucket that we want to replicate that data back to us.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: East one Well, we can set up bi directional replication, which is just really creating another rule to say anything that's written to EU West one.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS SAM
- Key Insights: We also want that to replicate to us East one, we can set up this bidirectional replication so we have the same data regardless of which bucket that that data was written to.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 9:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So why would I need bi directional replication?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, maybe we have shared data sets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe we want to build these shared data sets across multiple AWS regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now with replication, you can easily replicate the metadata changes such as ACLs, object tags, object locks or replication objects across multiple regions.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this two way replication is really important If you want to keep all objects and all metadata changes in sync.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 14:
- Concepts: Data Protection and Immutability
- Services: AWS Config
- Key Insights: The next one is keeping data synchronized across regions during a failover so you can synchronize your data between multiple AWS regions by configuring two way replication rules using cross region replication directly from a multiple region access point.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: So this would allow you to ensure that your data is the same in both of those buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That way you can properly fail over if you're failing over to another region and finally making your applications highly available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So even in the event of a regional traffic disruption, you can use two way replication rules to keep all metadata and objects in sync across your buckets during data replication.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So these are all great examples of why you would need bidirectional replication.
- Hidden/Implicit Meaning: Durability and retention signal.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/08_Protecting Your Data in Amazon S3/093_Amazon S3 Batch Replication.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: Let's touch on S3 batch operations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: We talked about that we would need S3 batch operations to perform large scale batch operations on Amazon S3 objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: Remember, replication does not replicate existing objects, so we need existing objects migrated well, S3 batch operations is going to do the job for us now.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: S3 batch operations can perform a single operation on lists of Amazon S3 objects that you specify.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So when you're setting up S3 batch operations, a single job can perform specified operation on billions of objects containing exabytes of data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can use one job to move tons and tons and tons of data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: In this example here again, I've got two different buckets and two different regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I've got existing data that lives in one bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Maybe at this point I've set up replication so anything new would be replicated, but the existing data would not be.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: AWS Batch
- Key Insights: So if we want to copy that data from one bucket to another, well we can simply use a batch operation, copy all that data to our second bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: AWS Batch
- Key Insights: Remember, batch operations is a one time operation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: It's not continuous replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: It gives us the ability to really seed a secondary bucket for continuous replication if we use our traditional rules.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But again, it's a one time operation that moves objects from one bucket to another.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: In the event that we do write new data to our bucket, well, that data is not replicated using S3 batch operations because it's a one time operation.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: In the event that you created a replication rule between these buckets, then it would be replicated.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: AWS Batch
- Key Insights: But if you're only using batch operations, that new object that was written would not be replicated.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So quick breakdown of S3 operations on where I would use it again, replicate existing objects is probably one of the primary use cases of using batch replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: In fact, for a long time S3 didn't even have a way to replicate existing objects natively.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: They didn't have their own tool, and so they finally introduced a tool that allowed us to do that and seed buckets here.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: AWS Batch
- Key Insights: Another reason we would use batch operations is to maybe replicate objects that previously failed to replicate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch
- Key Insights: So in this case, we could filter a batch replication job to attempt to replicate objects with a replication status of failed.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And finally, maybe we want to replicate objects that were already replicated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: We talked about some of the limitations of replication.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, maybe we do want those objects to be replicated to a new bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We might be required to store these multiple copies of your data in separate AWS accounts or regions or something like that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch
- Key Insights: Batch replication can replicate existing objects to any newly added destinations.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 28:
- Concepts: Storage Operational Context
- Services: AWS Batch
- Key Insights: So that's batch operations for you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/101_Storage Lens.txt

Line 1:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So the first tool that we're going to talk about here is storage lens.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So Amazon S3 storage lens is really a useful tool that allows you to see and manage all the storage that you have on Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 In one main area, one main tool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: Now it makes it really easy to watch and check storage information for a lot of different accounts at the same time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This tool helps you understand how your storage is used and it gives you advice on how to spend less money and keep your data safe.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: It also lets you find ways to cut costs in your storage really fast and easily through this storage lens tool.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Storage lens is going to help you make smart choices about storage types, rules for storing data and where to put data based upon how you use it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 storage lens gives you the ability to see how much and in what ways that your storage is being used through usage and activity numbers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this brings together and aggregates data from different levels.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: You can actually enable storage lens at your organization level, at the account level, geographic area, like a region, the type of storage buckets and even down to prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What makes it even better is that you don't have to look at all these boring tables and charts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Cost and Performance Optimization
- Services: Amazon RDS
- Key Insights: Storage Lens has interactive dashboards, which means you can play around with the data, making it easy to understand based upon your needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, additionally, storage land is also like this friendly advisor.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It gives you suggestions on what you should do based upon tried and tested methods from other customers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you know you're making good choices for managing the storage in S3 Storage Lens is going to update the information that you see every day.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's using the data from the day before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it actually kicks off at, I believe, midnight.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, this means that you always have fresh insights from the day before and you can make decisions based upon that data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: It's also very flexible, too.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, you can turn it on for your whole account or just 1 or 2 storage buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, this is really cool because if you want to just give storage lands a try and see if it's helpful before you actually use it more widely, this allows you to do that, gain insights on a few buckets, determine whether it's going to be useful for you.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If it is cool, you can go ahead and enable it on more buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you're handling things like a large organization with tons of accounts, that's no problem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Cost and Performance Optimization
- Services: Amazon RDS
- Key Insights: Storage lens is going to allow you to create dashboards that show you storage information across hundreds or even thousands of accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: One cool thing it does is helps you find specific details like incomplete uploads, outdated data versions, and the number of data requests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Knowing these, based upon our conversations we already had before, can really help you save money on your storage costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 Storage Lens has a free version that is already set up and ready to use for all of your accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This means you don't have to do any complicated setup.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's just there for you to start using.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you find it useful and you want even more features than the free version, there's an option to upgrade to an advanced version.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: By choosing the advanced upgrade, you get access to more tools and options, making it even more powerful helper for managing your storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at the comparison between the free version and the advanced upgrade version.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now you can see free metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have usage metrics up to 14 of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Granularity we get down to the lowest level is the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We retain up to 14 days of data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Recommendations are not something we have access to and of course the pricing is free.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want advanced metrics, well, from a metrics perspective, we over double what's available to us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we have our 14 usage metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We also have 15 activity metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can also look at the granularity and we can get down to the prefix level, not the bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can get all the way down to a prefix level and start looking at reports based upon that we can actually store data up to 15 months.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we retain data up to 15 months.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can run reports on that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It does include those recommendations that we spoke about and it is not free, but it's actually pretty cheap.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: If you look at the pricing here, it's $0.20 per 1 million objects per month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 47:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Most of us, especially if you're just using this in your own account or something like that, like I definitely don't have 1 million objects in my S3 accounts, so I'm going to pay $0.20 per month.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: That may be worth it to get all these additional advanced metrics, the ability to retain data up to 15 months, get those recommendations and then be able to run reports down to a prefix level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, if you're worried about costs, you can actually use the free dashboard to get a count of the number of objects that are across all your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you can.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Do the math and understand what your costs will be by multiplying the number of objects.
- Hidden/Implicit Meaning: Storage economics signal.

Line 52:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Divide that by 1 million and then multiply that by $0.20 per 1 million objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Let's take a look at some of the advanced metrics, some of the use cases that we would solve using the advanced metrics so we can utilize activity metrics to identify workloads and buckets with low usage.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that may indicate potential candidates for implementing life cycle policies.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And we already know that life cycle policies will enable us to move data to lower tiers of S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Of course, to save on costs, we can leverage prefix level insights and that allows us to allocate usage accurately for buckets shared across multiple teams and that enables better resource allocation and cost attribution.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 57:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now, another use case for using the advanced metrics is using the 15 month data retention capability that allows us to visualize our long term storage growth trends and allows us to do better capacity planning and forecasting.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, those recommendations that we mentioned before, that's going to allow us to identify outliers in month over month metric changes, enabling proactive identification and resolution of potential issues or anomalies.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And that's especially important when we're thinking about cost analysis on our S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 60:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: The last thing I want to mention here is that storage lens also allows you to take the data it gathers and save it to a file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is going to be super handy because you can then either use other programs that analyze data to look at it in different ways.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: Now, this feature is especially good for setups where you need to make your own custom dashboards, mix the data in with maybe other sets of information, or just work with software that's made by other companies such as Splunk or Sumo Logic, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: By exporting it, you're not limited to just what storage land offers, and you can actually make the most of the data in ways that better suit your specific needs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: On storage lens, we're going to jump into storage lens and take a look at it in the AWS management console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/105_Amazon S3 Event Notifications.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The next one is S3 event notifications, and it's really a cool tool to allow you to create event driven workloads from events that are happening on your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So S3 notifications allow you to receive notifications or pushes when certain events happen in one of your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, a notification here is really a push to a service, an S3 event, notification, support for different types of notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can send a push to an SNS topic which is commonly used for email notifications.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: We can send a push to an SQS queue, we can send a push to Amazon Eventbridge or we can trigger an AWS lambda function when something happens inside of our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at a few examples here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have our video asset bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe we are a media company and we're recording and delivering different types of entertainment to our customers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we've got our bucket that we store most of our video assets in there and we've already got some assets in there.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: However, maybe we just finish up recording a new movie or a new show, and now we have a new video file and we upload that new video file into our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS Lambda
- Key Insights: Well, just the event of uploading and adding a new file to our bucket, what we can do is actually trigger a lambda function.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: AWS Config, AWS Lambda, Amazon S3
- Key Insights: So through an S3 event notification configuration, it's pointing to lambda and then we can use that to trigger a lambda function that, I don't know, may add a watermark to our new video file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's one way that we can use it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: When a new file is created, an event notification can be set up to trigger a lambda and that lambda can perform some kind of work on that video file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at another example in this case, an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: So we have a new bucket called a customer website bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: Maybe that's where we're storing all of our data from our customer website.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, we need to process any files that get uploaded or created, whether it's from our back end software or customers uploading their own data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So maybe we have an end of the day transaction that occurs and we have a new order file that gets uploaded to our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, once the new orders file gets uploaded to our new bucket, we can have an event notification, an SNS that pushes to SNS and we can send an email notification to our processing team to go ahead and fulfill that order.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's another way we can use the event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: When a object is created, then we can send an email to somebody notifying them that a new object has been placed inside of that bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at the last example here in this case is going to be for an SQS topic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have our video asset bucket here and we've already got a bunch of objects in there.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Maybe these objects are being reviewed by the team and we've decided that one of our object is ready for production.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this case we can go to the object and we can tag it with a specific tag of final or something like that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now once that object is tagged with a specific tag that we're looking for, an event notification can actually send a message to Amazon SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then once that message is placed inside of the queue, maybe we have processing servers that will go ahead and process that file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Maybe we're encoding this file, this video file for a movie or a video or to burn it to a DVD or something like that by just simply tagging an object or making a change to an object, we can have an event notification, actually trigger a full workflow, put that inside of a queue and we can have processing servers that will process that queue and actually process that file for us and do whatever we need to do for that particular file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: Now if you're using something like Eventbridge, it would be a very similar workflow here where any change would actually trigger an event and we can have work performed based upon any changes that are made inside of our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: What S3 event types are supported?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, quite a few.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Here we have new object created events like I showcased in some of those examples.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Object removal events restore Reduce redundancy storage Object Lost events Reduce redundancy Storage is a tier that we didn't necessarily talk about because it's super old and it's deprecated, but it is still supported in different ways.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 35:
- Concepts: Data Protection and Immutability, Lifecycle Operations, Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have replication events and we also have things like S3 lifecycle events.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have object tagging events which I mentioned before, Object ACL put events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: These are all different event types that are supported.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And when one of these events happens inside of your bucket, you can have an S3 event notification to watch for that and then perform some kind of workflow based upon that event.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now a couple of things about event notifications here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Notifications are designed to be delivered at least one time and typically delivered.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Within seconds, but it could take a minute or longer for SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you're using an SQS event notification first in, first out.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Queues are not supported directly when you're using event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: Amazon EventBridge
- Key Insights: If for some reason you need to use first in, first out cuz you would use something like eventbridge instead.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: Now don't forget that you do need to provide Amazon S3 with permissions to publish messages to things like SNS, SQS and to invoke a lambda.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: AWS Config, Amazon EventBridge
- Key Insights: Now, one thing to note here is that Eventbridge is actually configured separately from event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon EventBridge
- Key Insights: So when you go to a bucket and you look at the properties, you'll actually have your event notifications and then below that you'll have another box that allows you to configure Eventbridge as well.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The important thing on this slide is the permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: You must grant the Amazon S3 principal the necessary permissions to call the API to publish messages to an SNS topic, an SQS queue or a lambda function.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 50:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now this of course is so S3 can publish event notification messages to another service to the destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: When you use Lambda, it publishes event messages to lambda by invoking a lambda function and then providing the event message as an argument to that lambda.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Object Storage Patterns
- Services: AWS Config, AWS Lambda, Amazon S3
- Key Insights: Now, when you use the Amazon S3 console to configure event notifications to a bucket, the console is going to set up the necessary permissions for that lambda function for you to grant.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 53:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 permissions to publish messages to an SNS topic or a SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You want to be sure to attach a policy to the SNS topic or the SQS queue that grant Amazon S3 permissions to publish those messages.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it for event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Again, important aspect to understand that based upon events that happen inside of your S3 bucket, you can trigger event driven workflows using these event notifications.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

### File: outputs/AWS/AWS Storage and DB/amazon-s3-deep-dive/14_S3 Access Points/123_Understanding Access Points.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's talk about using access points and understanding what they are and why we would use them.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, access points in S3 are going to provide us with a simple and secure way to start accessing and managing our data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, the cool thing about access points is they act as a unique entry point for our S3 bucket, and that really allows us to control access permissions and start applying specific policies for different applications or users.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, with these access points, you can grant granular permissions, set up fine grained access controls and really start simplifying the authorization process for accessing your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, this makes it easier to secure shared data with external partners or applications while also continuing to ensure that your data remains protected.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon Lex
- Key Insights: Now, when we think about securing our buckets, complex configurations, talking about bucket policies and all that, well, they can kind of start becoming complex, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have our bucket in our account and say we want to grant access to a user to read some of our objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, naturally, we already know that we would create a bucket policy to do that.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, say if we continue expanding our use cases for the data in our bucket and we have another user that needs access, maybe these users are in different accounts, maybe they are coming to AWS as different users or different roles.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Object Storage Patterns
- Services: Amazon Lex
- Key Insights: And what we need to do is we need to go ahead and modify our bucket policy again and it starts to becoming a little bit complex and then we add another user or another team or whatever.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And our bucket policy again expands.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon Lex
- Key Insights: Our bucket policy at this point is starting to get a little bit complex and it's going to be hard to manage as we start adding more and more use cases to our policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So introducing access points and what we're going to do is learn how access points can really help alleviate this problem.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have our bucket again and now what we can do in our account is we can go ahead and start creating access points now.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can create access points for individuals or individual applications in order to access our data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And these individuals don't necessarily need to be from our account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can allow external users access to our bucket using an access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, we've got our users.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This user may actually use this specific access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We've got an access point for this user and an access point for this user.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, maybe they're from different business partners.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now what we can do on these access points as we can provide fine grained control to what they can access in the bucket using an access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we can apply the access point policy directly to the access point, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And that policy only grants that one user access to the bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And we can even get more fine grained control to say what they can access inside the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Is it a specific prefix that we allow access to or do we just provide this user access to development data?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's totally up to you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So again, as we continue adding our access point policies, again, we really minimize what these policies look like and it makes it easier from an operational standpoint to start managing these individual policies versus trying to understand and consume a very large bucket policy and potentially giving access to data that they may not need access to by limiting what we put inside of our access point policy, we can limit that one user access and we can have more fine grained controls around what each individual user or application can access in our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So again, this user may use customer data, this user may want audit logs and the user at the bottom may need access to all objects that have a tag of environment and dev.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So using these access policies, we can easily grant access to our data based upon the prefixes or tags.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So what are some of the benefits of using an S3 access point?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, for one, we talked about the policies and we said that you can customize the path to objects inside of a bucket, inside the policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You can say this user gets access to this prefix or this user gets access to data that's been tagged with this specific tag.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it really makes it easier to control and access our data securely.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Another benefit is that each access point creates a unique hostname for accessing our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So each access point is going to create its own special name, which really simplifies accessing our data for individual users.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we also have this individualized access policy, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that specifies permissions for different users or applications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this helps us ensure that only authorized entities can access our data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, access points also give us the ability to choose between private network access from a VPC or.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Obtaining permission from the Internet, and that's really depending on your needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, more importantly, using these access points doesn't slow down your requests, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: It doesn't have any impact on performance or latency when accessing your data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And even cooler, there are no extra charges to use this feature.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what are some of the use cases for access points?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, one important use case for S3 access points is the ability to share large data sets with business partners.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, when you have an extensive data sets that need to be shared with external collaborators, access points are going to provide you with a secure and really controlled way to grant them access.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now you can create specific access points for each one of your partners and that's going to allow them to directly access the shared data set without really exposing the entire bucket to the Internet.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, by leveraging these access points, we can enforce granular access policies, and that's going to ensure that each partner only has those necessary permissions to work with a specific data set that they are permitted to work with.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We don't want other partners working with data that aren't destined for them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, this is going to simplify the data sharing process for us, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to enhance our security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Of course.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to allow for this more efficient collaboration with business partners on these large scale data sets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, another important use case for S3 access points is going to be restricting access to buckets from our Vpcs.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, with access points, you can control and limit access to your buckets, allowing access only from the designated VPC that's designated inside of the policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, this will provide us with an additional layer of security by ensuring that data can only be accessed within the secure VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: By confining access to our VPC, we're going to reduce our exposure of our S3 buckets to the public Internet and of course, mitigate the risk of any unauthorized access or data breaches.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 61:
- Concepts: Object Storage Patterns
- Services: Amazon Lex, Amazon S3
- Key Insights: Now, the last thing I want to mention is S3 access points do offer a solution for reducing the complexity of our bucket policies like we saw in the previous slides.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 62:
- Concepts: Object Storage Patterns
- Services: Amazon Lex
- Key Insights: Now we know that with traditional bucket policies, managing permissions for all kinds of applications and different users and roles, it can start to become complex and challenging to maintain.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: From an operational standpoint.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: These access points are going to simplify this process by allowing us to set individualized access policies directly at the access point level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 65:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: This will mean that instead of configuring these large bucket policies, you define these access controls to each access point depending on what each user needs access to.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 66:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, one thing I wanted to mention here is that the access points don't always have to be created inside of the account where the bucket lives.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 67:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: In fact, you can actually create Cross-account S3 access points to manage access to shared data stored in another account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by doing this, you can actually limit what VPC that the request can come from using the access policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 69:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then that way we can only permit access to certain data that's stored in the bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at an example here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we have an AWS account that has an S3 bucket with some data now maybe in our organization or another organization, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We've got some other AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And inside of the account I have a VPC called VPC.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: One, two, three, four.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now inside of that VPC, I may have some workloads that need access to our data, but it's in another account and we don't want to go through the whole process of updating our bucket policy to provide access from users or roles in another account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 76:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So what we want to do is we want to use an access point inside of the AWS accounts on the right and it's going to provide us access to our data in the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 77:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in this example, the workload that's running in our VPC is going to be able to access the data in our S3 bucket by using the access point URL.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 78:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So this is accessing data directly using the S3 access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 79:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So in another account, maybe we have the same kind of setup, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have a VPC, we have some workloads inside of the VPC, and in this case, maybe this VPC doesn't have internet access, but we still need to provide it access to S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, we can create a VPC endpoint inside of our VPC.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 82:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then what's going to happen here is that our workload is now going to get access to our access point through the VPC endpoint.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 83:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: It's still going to use the access point in order to access our data, but in this case it's going to go through a VPC endpoint to get access to the S3 API.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Two ways that we can use Cross-account access points in order to provide access to data that lives in one account from other accounts and whether they're our accounts or whether they are external accounts like business partners or something like that.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 86:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how do we actually use it?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 87:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: Well, we're going to interact with an S3 access point pretty much the same way as a regular S3 endpoint.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 88:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So an S3 access point URL looks something like this, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 89:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have our Arn.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 90:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have S3, we have our region that's defined.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 91:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is the region where the access point is created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 92:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have the account that's going to own the access point, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 93:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We talked about cross-account access.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 94:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we need to signify which account owns the access point and then we're going to indicate the resource type.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 95:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In this case, it's an access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 96:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this is the access point name, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 97:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So when you create an access point, it's going to ask you what name do you want to provide it?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 98:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this case we just called it prod object here is going to indicate the type of resource we're going to access.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 99:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course, at the end we have our object or our key name that lives in our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 100:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We are looking to access this customer PDF.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 101:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: This is really the URL that we would use in order to access it rather than using the S3 endpoint directly, we would simply use this URL for the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 102:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: When we are working with access points, our policies are going to look slightly different.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 103:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Instead of granting users access directly to the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 104:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now our Iam policies need to grant users access to use the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 105:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case we have a similar policy that we've seen before, but now you can see down here at the bottom the resource is slightly different, right?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 106:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We're not providing access to the object directly on S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 107:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We're providing access to the object through the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 108:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, of course, the access point lives in account number one, two, (345) 678-9012.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 109:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The access point name is prod access point, and then we're going to give it access to all objects that live under the prod prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 110:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So a little bit differently than our traditional Iam policy where we give access directly to S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 111:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we give access to our prod access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 112:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That about wraps up everything about access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 113:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully you better understand why you would use them, what they are, what you would use them for, and how you can actually use them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 114:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to jump into the AWS management console and I'll showcase how we're going to create our access points and of course add our policies to ensure that our users can consume our data through our access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/11_Amazon S3 Introduction/122_S3 Replication.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now let's talk about Amazon S3 Replication, and there are two flavors of it.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: So CRR is for cross-region replication and SRR is for same-region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The idea is that we have an S3 Bucket in one region and a target S3 Bucket in another region, and we want to set up asynchronous replication between these two buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, to do so, we first must enable Versioning in the source and the destination buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And if we do CRR, so cross-region replication, the two regions must be different.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 6:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: If we do SRR, the two regions are the same.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, it's possible for you to have these buckets in different AWS accounts and copying happens asynchronously.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the replication mechanism happens behind the scenes, in the background.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 10:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the use cases for replication are manyfold.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The first one is that if you use cross-region replication, this can be helpful for compliance or for providing lower latency access to your data because it's in another region, or to replicate data across accounts.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 13:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so that's it about replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/11_Amazon S3 Introduction/123_S3 Replication Notes.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Hey, so just a few notes about Amazon S3 Replications.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: And if you want to replicate existing objects, then you need to use the S3 Batch Replication feature.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this will replicate the existing objects and the objects that have failed Replication, and in case you have delete operations, you can replicate these delete markers from the source bucket to the target bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It's an optional setting, but if you have a deletion with the version ID, they are not replicated, so if it's a permanent deletion, because you want to avoid malicious deletes happening from one bucket to another.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, there's no chaining of replications.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that means that if bucket one has replication to bucket two, and then, bucket two has replication to bucket three, then the objects of bucket one are not replicated into the bucket three, so that's it.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/11_Amazon S3 Introduction/124_S3 Replication - Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's practice replication on Amazon S3.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, we're going to create a new bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I'll call it s3-stephane-bucket-origin-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will set it in one region that I want, for example, eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This will be my origin bucket and then data will be replicated from this bucket to another bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I will create this bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then open this bucket in a new tab.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I will create a second bucket and this will be my target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I will do s3-stephane-bucket-replica-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down and let's again enable bucket versioning on the target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now we have our primary bucket and our secondary bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: What I'm going to do is that in the origin bucket, I'm going to upload a file, so I will add a file of my beach, for example.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is done and we can close this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So now this has one file but, of course, this does not get replicated yet because we haven't set up replication yet.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So on the origin bucket, what I need to do is to go under Management, scroll down and there are replication rules.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Currently zero.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's go ahead and create our first replication rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 23:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So I'll call this one DemoReplicationRule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll set it as enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For the source bucket, we'll leave it as is and in terms of rule scope, we'll apply it to all objects in the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, for the destination, we can specify a bucket in this account or another account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we'll choose one in this account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And the bucket name is my target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I need to actually enter the name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we'll take this bucket right here, copy and paste it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, and as you can see, the destination region was identified as being us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So therefore, this is a Cross-Region Replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now for IAM role, we need to actually go and create a new role for this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here's the option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at some settings but for now it doesn't really matter for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's just save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we get a prompt right here, which says do you want to replicate existing objects?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for newer uploads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So if you wanted to replicate the previous objects from the source to the destination bucket, you could use something called a Batch Operation, an S3 Batch Operation to do so and you would need to say yes, replicate existing objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But this is separate from the replication feature itself.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, I'm going to say no, do not replicate existing objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have this Management with a replication rule that is ready.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now what I'm going to do is check in my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Of course, if I refresh now, we see that the objects haven't been replicated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do is now upload a new file, for example, upload the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Upload it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's show the versions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is coffee.jpg and the version is GBk.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now if we go in my target bucket, and refresh this, it's gonna take maybe five seconds.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And this took about 10 seconds on the first replication but we can see that my coffee.jpg has been added into my replica bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 59:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: And if I show the versions, we can see that the version ID of my coffee.jpg is the exact same of the origin bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the version's IDs are replicated, which is great.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I wanted to import the beach.jpg, I would need to upload a new version of that file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's upload beach.jpg again.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this has been uploaded, we can look at the versions, so there is a new version right here of DK2 of my beach.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now if I go here and refresh, now let's look at one more setting that is important for your exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So if I go back into Management, and take this and edit this role, we can scroll down and have a look at one setting called the delete marker replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by default, delete markers are not replicated but there's a feature to do so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if you enable delete marker replication, then they will be replicated from one bucket to another.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So my replication rules have been saved.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 70:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And so that means that if I go in this bucket, and I choose to delete this file, for example, I delete my coffee.jpg file, let's delete it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 71:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This will actually create a delete marker because my bucket is versioned.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now my coffee.jpg is deleted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And let's have a look in here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh and we need to wait little bit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now you can see that the delete marker has been replicated to my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if I don't show version, I don't see my coffee.jpg file but of course, if I show versions, I will see it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is true here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, this is true here as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the delete markers are deleted but if you decide to delete a specific version of a file, for example, I delete this one, which is I delete a specific version ID.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is called the permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I permanently delete one object in my origin bucket, it will not be replicated to my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 83:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/13_Advanced Amazon S3/135_S3 Lifecycle Rules (with S3 Analytics).txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now let's talk about how we can move objects between different storage classes so you can transition them, and this is a diagram of how it's possible.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so all the types of permutations are shown in this graph.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So as a matter of fact, if you know that your objects are going to be infrequently accessed, then move them to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: And if you know that you're going to archive objects, move them into the Glacier of tiers or the Deep Archive tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 6:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, moving these objects can be done manually, of course, but we can automate this using lifecycle rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So these lifecycle rules are made of multiple things.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: The first thing is a transition action to configure the object to transition to another storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can also set up expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So configure objects to be deleted, to be expired after some time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, your access log files, you want to delete them after 365 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: Amazon EKS
- Key Insights: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The rules can also be specified for a certain prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So they can apply to entire buckets or to a specific path within your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And you can also specify it for specific object tags.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you want to only do a rule for the department finance, you can.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here's some scenarios.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: But these thumbnails, they can be easily recreated from the original photo and they only need to be kept for 60 days.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: But the source images, they should be able to be immediately retrieved for these 60 days and afterwards the user can wait up to six hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how would you design this?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is what an exam question will ask you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: AWS Config, Amazon Glacier, Amazon S3
- Key Insights: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 26:
- Concepts: Lifecycle Operations
- Services: AWS Config, Amazon ECR
- Key Insights: So the thumbnails can be on One-Zone IA because well, they're infrequently accessed, and they can be recreated easily, and you can have a lifecycle configuration to expire them or delete them after 60 days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: After this time, for up to 365 days, deleted objects should be recoverable within 48 hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For this, we can enable S3 versioning in order to keep and have object versions so that the deleted objects are in fact hidden by a delete marker and then can be recovered.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you will create a rule to transition the non-current versions of the objects to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Lifecycle Operations
- Services: Amazon Glacier, Amazon RDS
- Key Insights: So that means the versions that are not the top level versions, and then transition afterwards these non-current versions to Glacier Deep Archive for archival purposes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Lastly, how do we determine what's the optimal number of days to transition an object from one class to another?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, you can do this thanks to Amazon S3 Analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's going to give you recommendations for Standard and for Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: It does not work with One-Zone IA or Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so the S3 buckets will have S3 Analytics run on top of it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this will create a CSV report that will give you some recommendations and some statistics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The report is going to be updated daily and then it can take between 24 to 48 hours to start seeing data analysis coming out of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this is a good first step, this CSV report to put together lifecycle rules that makes sense or to improve them.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/13_Advanced Amazon S3/136_S3 Lifecycle Rules - Hands On.txt

Line 1:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's go ahead and create a lifecycle rule for our buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 2:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So let's go under management and create a lifecycle rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This one is going to be called demo rule, and we apply it to all the objects in the buckets and I acknowledge it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we can see we have five different rule actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can move current versions of objects between storage classes, non-current versions of objects between classes, expired current versions of objects, permanently delete non-current versions of objects, and finally delete expired objects, delete markers or incomplete multi-part upload.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So five different use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's have a look at them one by one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to move current version objects between storage classes that means that you have a version bucket, and the current version is the version that is the most recent the one displayed to the user.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, we can transition to standard IA after 30 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can go into intelligent tier after 60 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: Then we can go into say glacier after 90 days for instant retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: Then after 180 days flexible retrieval and then maybe deep archive after 365 days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can have a transition as much as you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we need to take this back to acknowledge what we do.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can also, for example move non-current versions so faster.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this one, we want to move an object that is non-current therefore an object that has been overridden quote unquote by near one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: So we can say, okay, this one we wanna move it into glacier flexible because we know that after 90 days we won't need it for retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect and we're good to go but we could add more transitions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for example we want to expire current versions of objects after, and at the bottom you can set it up after 700 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And same for the non-current options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We want to permanently delete them after 700 days as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is something we can do and now we can have a look at all these transitions and expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is nice because it shows you a timeline of what is going to happen to your current version and your non-current versions of your objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we're happy with all of this, we can just go ahead and create this role, and this role will act in the background to do what it's supposed to be doing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now you know how to automate moving objects in AWS free between different source classes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/13_Advanced Amazon S3/137_S3 Event Notifications.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that your events are going to happen in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What are events?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability, Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, events are things such as an object is created, or an object is removed, or an object is restored, or there is replication happening.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can filter these events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can say I only want to consider the objects that end with JPEG.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the use case for Event Notification will be, for example, to automatically react to certain events happening in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, you want to generate thumbnails of all the images upload to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, you're going to create your Event Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you can send it to a couple of destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: It could be an SNS topic, it could be an SQS queue, and a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't worry if you don't know this by now, we will learn about these features in the next lectures.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can create as many S3 events as desired, and you can send them to whatever target you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that these events are typically delivered within seconds to these destinations, but sometimes it can take a minute or longer.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, for the Event Notifications to work, we need to have IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the S3 service is sending data into an SNS topic, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to make this possible, we need to attach what's called an SNS resource access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: This is a IAM policy you attach to the SNS topic, and this will allow the S3 bucket to send messages directly into the SNS topic.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Similarly, if we use SQS, we create an SQS resource access policy, which authorizes the S3 service to send data into our SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: And finally, for Lambda function, you will have guessed, we need a Lambda resource policy attached to our Lambda function to make sure that Amazon S3 has the right to invoke our function.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So here we don't use IAM roles for Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: Instead, we define resource access policies on the SNS topic, on the SQS queue, or on the Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And they function similarly to what we had when we were using an S3 bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: So you have to remember SNS, SQS, and lambda function as Event Notifications targets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But now, there's a fourth integration you need to also learn about.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So your events are going into your Amazon S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all the events end up in Amazon Event Bridge no matter what.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all of them, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then from Event Bridge that you don't know yet, but you can set up rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And from Event Bridge, you can, thanks to these rules, send these events to over 18 different AWS services as destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So it really enhances the capability of S3 Event Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, we'll see Event Bridge later on this course, but with Event Bridge, you get advanced filtering options a lot more than what we had from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can filter by metadata, object, size, and name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can send to multiple destinations at the time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: You can say, for example, to Step Functions, Kinesis Data Streams, or Firehose, or you even get the features coming straight from Amazon Event Bridge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can archive events, replay events, and you get more reliable delivery.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, there's a lot you don't know in this lecture around the news services, but let's just focus on Amazon S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: The idea is that you can react to events happening in Amazon S3, thanks to sending it to SQS, SNS, Lambda, or Amazon Event Bridge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/13_Advanced Amazon S3/138_S3 Event Notifications - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, so let's go ahead and demonstrate S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, I'm going to create a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I call it "stephane-v3-events-notifications" and then when Ireland's... and I will just go ahead and create my bucket altogether.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now bucket is created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'm going to go into it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is make sure that event notifications are set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I go to properties, scroll down and then, here we have event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have two options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: Number one is to create an event notification, and I will show you this in a second, or number two is to enable the Amazon EventBridge integration to send all the events from this S3 bucket into EventBridge.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for this, you just you set it on and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: So it is something that now if I wanted to, I could use Amazon EventBridge to catch the events happening in my S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But I will show you the simpler way because it's a bit more complicated, is to just create an event notification and send it for example to SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'll call this one "DemoEventNotification" and then we can set up a prefix, a suffix, but I won't do it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And next, we to choose event types.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we want to react to all object create events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that means that any time an object is created, then an event is going to be created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to, you could get more granular and select which type of events you wanted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But to keep it simple, I'll take it here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And you can also include for example, object removals, object restores, and it shows you all the events you can catch on the right hand side.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll keep it simple.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I'm just going to scroll down, but as you can see, there are a lot of different events you can react to in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then, you want to publish to a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so we have three options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: We have Lambda functions, SNS topic, and SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And I'm going to choose SQS queue but we first need to create a queue, and then authorize Amazon S3 to publish messages into that destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is just go into Amazon SQS and then create a queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And I call this one "DemoS3Notification." I will go ahead and create this queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now wanting to do is to enhance the access policy to allow my S3 bucket to write into my SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, let me first demonstrate the problem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if I go back here and I am going to refresh this page to see my queue appear.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I refresh it and I say DemoS3Events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: All object created, and then scroll down and then choose the SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can choose the queue ARN.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I could choose queue here in the dropdown, DemoS3Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: And if I try to save my changes, I get an unknown error, which is saying that, "Hey, you are not able to validate the destination configuration because this SQS queue does not accept yet messages from my S3 buckets." And so I need to change the access policy by clicking on edits, scroll down, here's my access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I need to go ahead and generate a new policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I go to Policy Generator.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to be an SQS queue policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the effect is allow anyone, just to be very permissive, to do a send message.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And my Amazon resource name is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I need to copy it and paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I add a statement, and then generate this policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now, this is the policy I wanna use which allows anyone to write to my SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very permissive, but it will work.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now my access policy has been updated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now, if I go back here and try to save my changes, as you can see, the operation was successfully completed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And what happened is that if I go into my SQS queue and click on send and receive messages, and then click on poll for messages, as you can see, a message was being sent by Amazon S3 which is to test event, to test the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I can do is I can take this message and delete it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now we want to test whether or not the S3 Event Notification is working with SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So therefore we're going to upload an object, click on add files and choose our coffee, the JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will upload this file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now the file has been uploaded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I go into my bucket, I can indeed see that my coffee, the JPEG, has been created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And imagine we wanted to automate this and create a thumbnail from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then, we will need to have a message into our SQS queue to then process it and create a thumbnail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, I'm going to pull for messages.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, a message was created here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if you look at the message itself, and I'm going to try to increase this window size, we can see the fact that the "eventName" was "ObjectCreatedPut" So an object was indeed created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if we look deeper, we're going to see that the key of that message is coffee, the JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the coffee, the JPEG, was created and it generated a whole event into my SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And therefore, that shows the power of S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What I can do here is I can delete the message and we're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We've seen S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: What you need to remember again is that you can send to SQS, SNS and Lambda, as well as send all events to Amazon EventBridge for further processing and sending it to more destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/14_Amazon S3 Security/153_S3 Access Points.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 14:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: AWS SAM
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/12_Amazon S3 Introduction/136_S3 Replication.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now let's talk about Amazon S3 Replication, and there are two flavors of it.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: So CRR is for cross-region replication and SRR is for same-region replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The idea is that we have an S3 Bucket in one region and a target S3 Bucket in another region, and we want to set up asynchronous replication between these two buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, to do so, we first must enable Versioning in the source and the destination buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 5:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And if we do CRR, so cross-region replication, the two regions must be different.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 6:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: If we do SRR, the two regions are the same.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, it's possible for you to have these buckets in different AWS accounts and copying happens asynchronously.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the replication mechanism happens behind the scenes, in the background.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And to make replication work, you must give proper IAM permissions to the S3 service so that it has the permission to read and write from specified buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 10:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the use cases for replication are manyfold.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The first one is that if you use cross-region replication, this can be helpful for compliance or for providing lower latency access to your data because it's in another region, or to replicate data across accounts.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: For SRR, or same-region replication, this can be very helpful to aggregate logs across multiple S3 Buckets or to perform a live replication between a production and test accounts, so, you have your own test environment.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 13:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Okay, so that's it about replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/12_Amazon S3 Introduction/137_S3 Replication Notes.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Hey, so just a few notes about Amazon S3 Replications.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 3:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: And if you want to replicate existing objects, then you need to use the S3 Batch Replication feature.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this will replicate the existing objects and the objects that have failed Replication, and in case you have delete operations, you can replicate these delete markers from the source bucket to the target bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It's an optional setting, but if you have a deletion with the version ID, they are not replicated, so if it's a permanent deletion, because you want to avoid malicious deletes happening from one bucket to another.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Finally, there's no chaining of replications.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that means that if bucket one has replication to bucket two, and then, bucket two has replication to bucket three, then the objects of bucket one are not replicated into the bucket three, so that's it.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/12_Amazon S3 Introduction/138_S3 Replication - Hands On.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's practice replication on Amazon S3.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, we're going to create a new bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I'll call it s3-stephane-bucket-origin-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will set it in one region that I want, for example, eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This will be my origin bucket and then data will be replicated from this bucket to another bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the thing I need to do, of course, is to enable versioning because replication only works if versioning is enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I will create this bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then open this bucket in a new tab.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I will create a second bucket and this will be my target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I will do s3-stephane-bucket-replica-v2.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability
- Services: AWS SAM
- Key Insights: And this time, the region can be either the same, for example, if you wanted to do same region replication or something completely different, for example, if you wanted the US, you could do us-east-1 to replicate from Europe to the US.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down and let's again enable bucket versioning on the target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now we have our primary bucket and our secondary bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: What I'm going to do is that in the origin bucket, I'm going to upload a file, so I will add a file of my beach, for example.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Beach.jpg.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is done and we can close this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So now this has one file but, of course, this does not get replicated yet because we haven't set up replication yet.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So on the origin bucket, what I need to do is to go under Management, scroll down and there are replication rules.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Currently zero.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's go ahead and create our first replication rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 23:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So I'll call this one DemoReplicationRule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll set it as enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For the source bucket, we'll leave it as is and in terms of rule scope, we'll apply it to all objects in the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, for the destination, we can specify a bucket in this account or another account.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we'll choose one in this account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And the bucket name is my target bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I need to actually enter the name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we'll take this bucket right here, copy and paste it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, and as you can see, the destination region was identified as being us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So therefore, this is a Cross-Region Replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now for IAM role, we need to actually go and create a new role for this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here's the option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a look at some settings but for now it doesn't really matter for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's just save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we get a prompt right here, which says do you want to replicate existing objects?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it turns out that when you do enable replication, it will only replicate objects from the moment you set it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for newer uploads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So if you wanted to replicate the previous objects from the source to the destination bucket, you could use something called a Batch Operation, an S3 Batch Operation to do so and you would need to say yes, replicate existing objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But this is separate from the replication feature itself.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 44:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, I'm going to say no, do not replicate existing objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have this Management with a replication rule that is ready.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 48:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now what I'm going to do is check in my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Of course, if I refresh now, we see that the objects haven't been replicated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do is now upload a new file, for example, upload the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Upload it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is the coffee.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's show the versions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is coffee.jpg and the version is GBk.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now if we go in my target bucket, and refresh this, it's gonna take maybe five seconds.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And this took about 10 seconds on the first replication but we can see that my coffee.jpg has been added into my replica bucket.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 59:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: And if I show the versions, we can see that the version ID of my coffee.jpg is the exact same of the origin bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the version's IDs are replicated, which is great.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I wanted to import the beach.jpg, I would need to upload a new version of that file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's upload beach.jpg again.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now this has been uploaded, we can look at the versions, so there is a new version right here of DK2 of my beach.jpg file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now if I go here and refresh, now let's look at one more setting that is important for your exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So if I go back into Management, and take this and edit this role, we can scroll down and have a look at one setting called the delete marker replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by default, delete markers are not replicated but there's a feature to do so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if you enable delete marker replication, then they will be replicated from one bucket to another.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So my replication rules have been saved.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 70:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And so that means that if I go in this bucket, and I choose to delete this file, for example, I delete my coffee.jpg file, let's delete it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 71:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This will actually create a delete marker because my bucket is versioned.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now my coffee.jpg is deleted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And let's have a look in here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh and we need to wait little bit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now you can see that the delete marker has been replicated to my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if I don't show version, I don't see my coffee.jpg file but of course, if I show versions, I will see it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is true here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, this is true here as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the delete markers are deleted but if you decide to delete a specific version of a file, for example, I delete this one, which is I delete a specific version ID.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is called the permanent delete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I permanently delete one object in my origin bucket, it will not be replicated to my replica bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 83:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/142_S3 Lifecycle Rules (with S3 Analytics).txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now let's talk about how we can move objects between different storage classes so you can transition them, and this is a diagram of how it's possible.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so all the types of permutations are shown in this graph.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So as a matter of fact, if you know that your objects are going to be infrequently accessed, then move them to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier
- Key Insights: And if you know that you're going to archive objects, move them into the Glacier of tiers or the Deep Archive tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 6:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, moving these objects can be done manually, of course, but we can automate this using lifecycle rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So these lifecycle rules are made of multiple things.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: The first thing is a transition action to configure the object to transition to another storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can also set up expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS Config
- Key Insights: So configure objects to be deleted, to be expired after some time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, your access log files, you want to delete them after 365 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: Amazon EKS
- Key Insights: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The rules can also be specified for a certain prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So they can apply to entire buckets or to a specific path within your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And you can also specify it for specific object tags.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you want to only do a rule for the department finance, you can.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here's some scenarios.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: But these thumbnails, they can be easily recreated from the original photo and they only need to be kept for 60 days.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: But the source images, they should be able to be immediately retrieved for these 60 days and afterwards the user can wait up to six hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how would you design this?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is what an exam question will ask you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: AWS Config, Amazon Glacier, Amazon S3
- Key Insights: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 26:
- Concepts: Lifecycle Operations
- Services: AWS Config, Amazon ECR
- Key Insights: So the thumbnails can be on One-Zone IA because well, they're infrequently accessed, and they can be recreated easily, and you can have a lifecycle configuration to expire them or delete them after 60 days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: After this time, for up to 365 days, deleted objects should be recoverable within 48 hours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For this, we can enable S3 versioning in order to keep and have object versions so that the deleted objects are in fact hidden by a delete marker and then can be recovered.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you will create a rule to transition the non-current versions of the objects to Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Lifecycle Operations
- Services: Amazon Glacier, Amazon RDS
- Key Insights: So that means the versions that are not the top level versions, and then transition afterwards these non-current versions to Glacier Deep Archive for archival purposes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Lastly, how do we determine what's the optimal number of days to transition an object from one class to another?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, you can do this thanks to Amazon S3 Analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's going to give you recommendations for Standard and for Standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: It does not work with One-Zone IA or Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so the S3 buckets will have S3 Analytics run on top of it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this will create a CSV report that will give you some recommendations and some statistics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The report is going to be updated daily and then it can take between 24 to 48 hours to start seeing data analysis coming out of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this is a good first step, this CSV report to put together lifecycle rules that makes sense or to improve them.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/143_S3 Lifecycle Rules - Hands On.txt

Line 1:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's go ahead and create a lifecycle rule for our buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 2:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So let's go under management and create a lifecycle rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This one is going to be called demo rule, and we apply it to all the objects in the buckets and I acknowledge it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we can see we have five different rule actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: We can move current versions of objects between storage classes, non-current versions of objects between classes, expired current versions of objects, permanently delete non-current versions of objects, and finally delete expired objects, delete markers or incomplete multi-part upload.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So five different use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's have a look at them one by one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to move current version objects between storage classes that means that you have a version bucket, and the current version is the version that is the most recent the one displayed to the user.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, we can transition to standard IA after 30 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can go into intelligent tier after 60 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: Then we can go into say glacier after 90 days for instant retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: Then after 180 days flexible retrieval and then maybe deep archive after 365 days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can have a transition as much as you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we need to take this back to acknowledge what we do.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can also, for example move non-current versions so faster.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this one, we want to move an object that is non-current therefore an object that has been overridden quote unquote by near one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: So we can say, okay, this one we wanna move it into glacier flexible because we know that after 90 days we won't need it for retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect and we're good to go but we could add more transitions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And for example we want to expire current versions of objects after, and at the bottom you can set it up after 700 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And same for the non-current options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We want to permanently delete them after 700 days as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is something we can do and now we can have a look at all these transitions and expiration actions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So this is nice because it shows you a timeline of what is going to happen to your current version and your non-current versions of your objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we're happy with all of this, we can just go ahead and create this role, and this role will act in the background to do what it's supposed to be doing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now you know how to automate moving objects in AWS free between different source classes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/145_S3 Event Notifications.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that your events are going to happen in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What are events?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Data Protection and Immutability, Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, events are things such as an object is created, or an object is removed, or an object is restored, or there is replication happening.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can filter these events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can say I only want to consider the objects that end with JPEG.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the use case for Event Notification will be, for example, to automatically react to certain events happening in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, you want to generate thumbnails of all the images upload to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, you're going to create your Event Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you can send it to a couple of destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: It could be an SNS topic, it could be an SQS queue, and a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't worry if you don't know this by now, we will learn about these features in the next lectures.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can create as many S3 events as desired, and you can send them to whatever target you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that these events are typically delivered within seconds to these destinations, but sometimes it can take a minute or longer.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, for the Event Notifications to work, we need to have IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the S3 service is sending data into an SNS topic, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to make this possible, we need to attach what's called an SNS resource access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: This is a IAM policy you attach to the SNS topic, and this will allow the S3 bucket to send messages directly into the SNS topic.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Similarly, if we use SQS, we create an SQS resource access policy, which authorizes the S3 service to send data into our SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: And finally, for Lambda function, you will have guessed, we need a Lambda resource policy attached to our Lambda function to make sure that Amazon S3 has the right to invoke our function.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So here we don't use IAM roles for Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: Instead, we define resource access policies on the SNS topic, on the SQS queue, or on the Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And they function similarly to what we had when we were using an S3 bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: So you have to remember SNS, SQS, and lambda function as Event Notifications targets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But now, there's a fourth integration you need to also learn about.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So your events are going into your Amazon S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all the events end up in Amazon Event Bridge no matter what.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all of them, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then from Event Bridge that you don't know yet, but you can set up rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And from Event Bridge, you can, thanks to these rules, send these events to over 18 different AWS services as destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So it really enhances the capability of S3 Event Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, we'll see Event Bridge later on this course, but with Event Bridge, you get advanced filtering options a lot more than what we had from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can filter by metadata, object, size, and name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can send to multiple destinations at the time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: You can say, for example, to Step Functions, Kinesis Data Streams, or Firehose, or you even get the features coming straight from Amazon Event Bridge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can archive events, replay events, and you get more reliable delivery.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, there's a lot you don't know in this lecture around the news services, but let's just focus on Amazon S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: AWS Lambda, Amazon S3
- Key Insights: The idea is that you can react to events happening in Amazon S3, thanks to sending it to SQS, SNS, Lambda, or Amazon Event Bridge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/146_S3 Event Notifications - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Okay, so let's go ahead and demonstrate S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For this, I'm going to create a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I call it "stephane-v3-events-notifications" and then when Ireland's... and I will just go ahead and create my bucket altogether.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now bucket is created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'm going to go into it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is make sure that event notifications are set up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I go to properties, scroll down and then, here we have event notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have two options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: Number one is to create an event notification, and I will show you this in a second, or number two is to enable the Amazon EventBridge integration to send all the events from this S3 bucket into EventBridge.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for this, you just you set it on and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon EventBridge, Amazon S3
- Key Insights: So it is something that now if I wanted to, I could use Amazon EventBridge to catch the events happening in my S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But I will show you the simpler way because it's a bit more complicated, is to just create an event notification and send it for example to SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'll call this one "DemoEventNotification" and then we can set up a prefix, a suffix, but I won't do it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And next, we to choose event types.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we want to react to all object create events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So that means that any time an object is created, then an event is going to be created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to, you could get more granular and select which type of events you wanted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But to keep it simple, I'll take it here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And you can also include for example, object removals, object restores, and it shows you all the events you can catch on the right hand side.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll keep it simple.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I'm just going to scroll down, but as you can see, there are a lot of different events you can react to in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then, you want to publish to a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so we have three options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS Lambda
- Key Insights: We have Lambda functions, SNS topic, and SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And I'm going to choose SQS queue but we first need to create a queue, and then authorize Amazon S3 to publish messages into that destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is just go into Amazon SQS and then create a queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And I call this one "DemoS3Notification." I will go ahead and create this queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now wanting to do is to enhance the access policy to allow my S3 bucket to write into my SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, let me first demonstrate the problem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if I go back here and I am going to refresh this page to see my queue appear.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So I refresh it and I say DemoS3Events.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: All object created, and then scroll down and then choose the SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can choose the queue ARN.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Sorry.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: I could choose queue here in the dropdown, DemoS3Notification.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: And if I try to save my changes, I get an unknown error, which is saying that, "Hey, you are not able to validate the destination configuration because this SQS queue does not accept yet messages from my S3 buckets." And so I need to change the access policy by clicking on edits, scroll down, here's my access policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I need to go ahead and generate a new policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I go to Policy Generator.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to be an SQS queue policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the effect is allow anyone, just to be very permissive, to do a send message.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And my Amazon resource name is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I need to copy it and paste it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I add a statement, and then generate this policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now, this is the policy I wanna use which allows anyone to write to my SQS queue.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very permissive, but it will work.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's save this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now my access policy has been updated.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now, if I go back here and try to save my changes, as you can see, the operation was successfully completed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And what happened is that if I go into my SQS queue and click on send and receive messages, and then click on poll for messages, as you can see, a message was being sent by Amazon S3 which is to test event, to test the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what I can do is I can take this message and delete it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now we want to test whether or not the S3 Event Notification is working with SQS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So therefore we're going to upload an object, click on add files and choose our coffee, the JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will upload this file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now the file has been uploaded.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if I go into my bucket, I can indeed see that my coffee, the JPEG, has been created.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And imagine we wanted to automate this and create a thumbnail from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then, we will need to have a message into our SQS queue to then process it and create a thumbnail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, I'm going to pull for messages.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, a message was created here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And if you look at the message itself, and I'm going to try to increase this window size, we can see the fact that the "eventName" was "ObjectCreatedPut" So an object was indeed created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if we look deeper, we're going to see that the key of that message is coffee, the JPEG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the coffee, the JPEG, was created and it generated a whole event into my SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And therefore, that shows the power of S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What I can do here is I can delete the message and we're done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We've seen S3 Event Notifications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: What you need to remember again is that you can send to SQS, SNS and Lambda, as well as send all events to Amazon EventBridge for further processing and sending it to more destinations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/148_S3 Batch Operations.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So now, let's talk about the S3 batch operation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So this allows you to perform bulk operations on existing S3 objects with a single request.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, and there are lots of use cases for it, you can modify all the object metadata and properties of many S3 objects at a time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: Or you can copy objects between S3 buckets as a batch operation.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Or something that can come up in the exam, is to encrypt all the unencrypted objects in your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: Or to modify ACLs or tags, or to restore many objects at a time from S3 Glacier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: AWS Batch, AWS Lambda, Amazon S3
- Key Insights: Or to invoke a Lambda function to perform whatever custom action you want on every object from your S3 batch operation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the idea is that you can do whatever operation you want on the list of objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And so, therefore, a job consists of a list of objects, the action to perform, as well as optional parameters.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: So why would we use S3 batch operations versus scripting it ourselves?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: Well, because when we use the S3 batch operation, there is a management of retries, we can track the progress.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can send completion notifications, generate reports, and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: And, well, how to generate a list to pass to S3 Batch?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we can use S3 Inventory to get your object list in an S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon Athena, Amazon S3
- Key Insights: And then you use Athena to query that list, and filter the objects you actually wanna pass to the S3 batch service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon Athena, Amazon S3
- Key Insights: So using S3 Inventory and then Athena, we get a filtered list of objects that we want to include in our batch operation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: AWS Batch
- Key Insights: We pass it to the batch operation, plus whatever operation we wanna do, as well as some parameters.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: And then S3 Batch will do its thing and process the objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, again, one main use case is to find all the unencrypted objects using S3 Inventory.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: AWS Batch, Amazon S3
- Key Insights: And then encrypt them all at once using an S3 batch operation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/13_Advanced Amazon S3/149_S3 Storage Lens.txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Next, we have S3 Storage Lens, which is a service to help you understand, analyze, and optimize storage across your entire AWS Organization.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: With this, you're going to discover anomalies, identify cost efficiencies, and you're going to apply protection best practices across your entire AWS Organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to get 30-day usage and activity metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You can aggregate the data at the organization level or for specific accounts, regions, buckets, or even prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: You can create your own dashboard or use a default dashboard provided by the Storage Lens service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And finally, all these metrics, all these reports can be exported into an S3 bucket in the CSV or Parquet format.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to summarize, Storage Lens will take all these things into account, organization, accounts, region, buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then you aggregate all this data into a report, which is going to help you with your analysis.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then finally, this can be sent for summary insights, data protection, cost efficiency, which allows you to optimize your usage of Amazon S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 10:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So when you use the S3 Storage Lens service, you have a default dashboard and the dashboard gives you summarized insights and trends for both the free and the advanced metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This default dashboard will show data across multiple regions and across multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you don't have to do anything special just to set up the filters.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: It is pre-configured by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You cannot delete the default dashboard, but you can disable it, if you wanted to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this UI right here, you would select the region you want, the accounts you want, the buckets you want, storage classes, and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: And this is a centralized configuration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then once you have that, the dashboard right here gives you information such as, for example, the total storage, the objects count, the average object size, the number of buckets you have, accounts, and you can get detailed per accounts, or per region.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So let's have a look at what kind of metrics are available into Storage Lens, because this will help you understand if Storage Lens is a service you should be choosing for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you have summary metrics which give you general insights about your S3 storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For example, storage bytes to know the size of your storage and object counts to know how many objects you have in your storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: So use cases for this is to identify, for example, the fastest-growing or not used bucket and prefixes, because if the storage bytes remains the same, that means that no new objects have been added or same for object counts.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then you have cost optimization metrics and they provide you insights to manage and optimize your storage cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So they give you an information about the non-current version storage bytes, meaning how many version objects that are not current, how much space they're actually taking, or incomplete multi-part upload storage bytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You know, if for example, you've had some incomplete uploads, how much space they take in your bucket and you can clean it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the use cases will be, for example, to see which buckets have failed multi-part uploads, or which objects could be transitioned to lower-cost storage classes.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have data protection metrics to provide insights for data protection features.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So here we have versioning enabled bucket counts to make sure that all your buckets have been enabled with versioning and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: MFA, delete enabled bucket counts.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: SSCKMS enable bucket counts, cross replication region rules, counts, and so on.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the use cases are, for example, to identify the buckets which are not following your data protection best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have access management metrics to provide insights for S3 bucket ownership.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So here's the name of the metric and the use cases will be to identify which object ownership settings your buckets currently use.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: You have event metrics to get insights for S3 event notifications and to know how many buckets have the S3 event notifications configured.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have performance metrics to get insights into S3 transfer acceleration and see how many buckets have S3 transfer acceleration enabled.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you have activity metrics such as information about all requests, get requests, put requests, the number of bytes downloaded and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And finally, metrics around the HTTP status code such as 200OK, 403 Forbidden, et cetera, et cetera, to understand the type of usage your buckets are getting.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, you have different kinds of metrics in two Storage Lens, you have the free and the paid metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the metrics selection can be done in the UI as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But just as a summary, while the three metrics are automatically available to all customers, and it contains around 28 usage metrics, and the data is available for queries for 14 days, whereas for advanced metrics and recommendations, you get additional paid metrics and features such as the activity, the advanced cost optimization, the advanced data protection and status codes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 40:
- Concepts: Storage Operational Context
- Services: Amazon CloudWatch
- Key Insights: And then you get also these metrics being published to CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can access them without any additional charges.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then you can collect metrics at the prefix level within your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, the data when you pay, is available for 15 months.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's it for S3 Storage Lens.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a very helpful service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have to remember the difference between free and paid.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have to remember that the default dashboard has data across multiple accounts and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course, the fact that Storage Lens covers your object storage, the fact that you can count how many objects are encrypted and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's say for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/14_Amazon S3 Security/163_S3 Access Points.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 14:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: AWS SAM
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/300_S3 Replication with Encryption.txt

Line 1:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 Replication and its relation to encrypted objects.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 2:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if you enable S3 Replication from one bucket to another, then any unencrypted objects and objects encrypted with SSE-S3 will be replicated by default.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Objects that are also encrypted with SSE-C, with the customer provided key, can also be replicated, and then we have objects encrypted with SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So by default, they're not replicated but we need to enable the option to actually replicate these objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon ECR, Amazon S3
- Key Insights: And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: Amazon ECR
- Key Insights: And so when you do so, this enables replication because there is a lot of encryption and decryption happening.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You may get KMS throttling errors, in which case you need to ask for a service quotas.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the question you may have is should I use multi-region key with S3 Replication?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 9:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: AWS SAM, Amazon ECR, Amazon S3
- Key Insights: And the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/027_S3 Access Points.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now let's talk about S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's take an example of an S3 bucket that has a lot of data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have finance data, we have sales data, and we have different users or groups that want to access their data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We could create a very complicated S3 bucket policy and make it grow over time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The more users, the more data you have, the more unmanageable this may become.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what is the solution?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we can create what's called S3 access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we can, for example, create a finance access point that is going to be connected to the finance data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How is it connected to the finance data?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Well, we're going to define an access point policy and this policy looks just like an S3 bucket policy and is going to grant read write access to the finance prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we can define a sales access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And, again, this will be connected to the sales data thanks to an access point policy, a different one attached to this access point, which is going to grant read and write access to the sales prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: As you can see, I now have two policy and if I want to have an analytics access point, well, we can create it so that it points to finance and sales, but in read only access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 14:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So we're going to create our own read only policy on the analytics access point.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can see here we have pushed the security management from the S3 bucket policy into the access points and each access point will have its own security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore, with the proper IAM permissions then our users can access the finance access points and connect only to the finance part of our bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: AWS SAM
- Key Insights: The users as well for sales can only access the sales and the analytics group can access finance and sales at the same time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by using access points, we define different ways to access our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the result of that is that we have a very simple way to manage security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have policies attached to each access point and also we have a very simple bucket policy on Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Therefore, we can really scale access to our S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So to summarize access points, simplify security managements for S3 buckets, and each access point will have its own DNS name.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's how you connect to the access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can choose it to be connected to the internet as an origin or a VPC for private traffic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then you attach again an access point policy which is very similar to bucket policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to manage security at scale.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Regarding the VPC origin of S3 access points, we can define them to be privately accessible.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So that's, for example, an EC2 instance in a VPC access says without going through the internet our S3 bucket through the VPC access point through a VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to do so, to get access to this VPC origin, we must create what's called a VPC endpoint to access the access point.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's something in our VPC that will allow us to connect privately into the access point through our VPC origin.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then the VPC endpoint has a policy, and this policy must allow access to the target buckets and the access points.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon EC2, Amazon S3
- Key Insights: So the VPC endpoint policy will allow our EC2 instance to connect to both the VPC, the access points on Amazon S3 and the S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have VPC endpoint for security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We also have security for the access point policy and security at the S3 bucket level.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it for access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/028_S3 Multi-Region Access Points.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you also have the possibility to define multi-region access points on Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The idea is that with this access point, you have a global endpoint that will span multiple S3 buckets in multiple regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And the idea is that you access it only through one endpoint and this endpoint will redirect you to the S3 bucket that makes sense in the region that makes sense.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 4:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So it's going to dynamically route requests to the nearest S3 bucket, therefore providing you the lowest latency and to make sure that while the data in all the S3 buckets are equal, you have bidirectional replication.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the data is replicated from one bucket to the next and vice versa.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: This way, all your regions are synchronized and we'll see as well, we have failover controls, so it's possible for us to define all buckets are active, or to have some buckets as a backup, so as a passive, so that if we failover if there's a region problem, then we can failover to the passive buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at, for example, an example with three regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: We have US-EAST-1, EU-WEST-1, and AP-SOUTHEAST-1, with the same S3 bucket that's going to be replicated across all regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So automatically, these roles are created by Amazon S3 for you, so you just have to say it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But then all the data within these buckets is going to be replicated no matter what.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 11:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And as you can see, we must have replication rules across all buckets to one another.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then we create this S3 multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then when our application is going to request an S3 bucket object then we're going to be routed automatically to the region with the lowest latency.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And in case this region is down then we may be redirected into the other regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So then we have the fellow rear controls I told you about for your S3 access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's take an example of a bucket that's across that's replicated across two regions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we have a multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now in the case of an active passive fellow rear control where you're going to designate one bucket as active and the other one as passive.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Therefore whenever we request an object.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're not going to go this time to the lowest latency we're just going to go to the one that's active.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, if you have multiple active ones you will have the lowest latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And in case you will have a regional traffic discretion for example, US-East-1 is experiencing a bad outage then automatically you're going to have a failover initiated and your request will go to the passive S3 bucket which no matter what will contain all your data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And these kind of failover controls are valid for active/passive type of setups, but also active/active.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is when you can write to multiple regions at a time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/029_S3 Multi-Region Access Points - Hands On.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's go ahead and create two buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm gonna call this one my-global-app-stephane and then eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And I'm just going to go all the way down and create these buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then I'm going to create another bucket, I'll call this one my-global-app-stephane-us-east-1 and I will choose another region being us-east-1.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Okay, so the reason why I am doing this is that I want to have two buckets in two different regions that will hold the same data and it will be served by the same multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So then let's go into Multi-Region Access Points, and here we can create our multi-region access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So I'll call this one MyGlobalApp, and then we need to add buckets into this access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So here I will have app in this and we have these two buckets that I wanted to add.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's add these buckets and you can see I can add more buckets, okay?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But you only have one bucket per AWS region as far as it goes right now.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so then, do we want to block or to enable public access for this multi-region access point?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is if you wanted to, for example, to make this public, but right now I'll leave it as default, and then we'll create this multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for this, I need to make sure that the name is lowercase, my-global-app.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, now let's create this access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, it can take less than 30 minutes usually, but up to 24 hours to create, so we'll wait for it to be ready and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So my multi-region access point is now ready.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: I can click on it, and we have, its ARN, we have its alias, and we have the buckets, that's underneath.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if I click on these buckets, I can open them in new tabs, and before I do so, let's go into Permissions.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So Permissions is how to access this multi-region access point, so we need to define an access point policy, which will allow our application to actually go through it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And then for Replication and failover, this is where it gets interesting.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we have a map of what's happening for your replication and your failover.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And as you can see right now, we don't have any replication rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 23:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And we even have a warning saying that, yeah, your data replication might be incomplete because we're missing these rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 24:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So fairly simple, we need to just create these replication rules, and there's a facility to do that from within.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 25:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So let's create a replication rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And here we have to choose we want to replicate among all specified buckets, or from one, two different destinations.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The simplest is obviously the first one, which was going to give us high availability and failover capabilities.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So let's choose these buckets, and to enable the replication, we must enable bucket versioning.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal; Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is done directly from this console as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we enable the rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And do we want to limit the scope or do you want to apply to all objects in the bucket?
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We'll say all objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And finally, let's go ahead and create these replication rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 34:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So now they're created, and if you had more buckets, obviously you have replication rules across all the buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 35:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And when this is done, you can close this, go back to your map and now you can see two-way replication for your buckets.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 36:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And you can verify this by also going into your Management, and here you can find your replication rules.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I'm not gonna show you how to actually use it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is more of an application specific type of API calls, but at least we saw what these are made of.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And just to finish, what you can do is just delete this multi-region access point.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're not paying anything for having it, but in case you are using it, you will pay extra charges, based on how many gigabytes go through it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/073_Amazon S3 - Storage Lens.txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Next, we have S3 Storage Lens, which is a service to help you understand, analyze, and optimize storage across your entire AWS Organization.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: With this, you're going to discover anomalies, identify cost efficiencies, and you're going to apply protection best practices across your entire AWS Organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to get 30-day usage and activity metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You can aggregate the data at the organization level or for specific accounts, regions, buckets, or even prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: You can create your own dashboard or use a default dashboard provided by the Storage Lens service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And finally, all these metrics, all these reports can be exported into an S3 bucket in the CSV or Parquet format.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So to summarize, Storage Lens will take all these things into account, organization, accounts, region, buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then you aggregate all this data into a report, which is going to help you with your analysis.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then finally, this can be sent for summary insights, data protection, cost efficiency, which allows you to optimize your usage of Amazon S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 10:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So when you use the S3 Storage Lens service, you have a default dashboard and the dashboard gives you summarized insights and trends for both the free and the advanced metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This default dashboard will show data across multiple regions and across multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you don't have to do anything special just to set up the filters.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: It is pre-configured by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You cannot delete the default dashboard, but you can disable it, if you wanted to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So in this UI right here, you would select the region you want, the accounts you want, the buckets you want, storage classes, and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: And this is a centralized configuration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then once you have that, the dashboard right here gives you information such as, for example, the total storage, the objects count, the average object size, the number of buckets you have, accounts, and you can get detailed per accounts, or per region.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So let's have a look at what kind of metrics are available into Storage Lens, because this will help you understand if Storage Lens is a service you should be choosing for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you have summary metrics which give you general insights about your S3 storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: For example, storage bytes to know the size of your storage and object counts to know how many objects you have in your storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: So use cases for this is to identify, for example, the fastest-growing or not used bucket and prefixes, because if the storage bytes remains the same, that means that no new objects have been added or same for object counts.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then you have cost optimization metrics and they provide you insights to manage and optimize your storage cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So they give you an information about the non-current version storage bytes, meaning how many version objects that are not current, how much space they're actually taking, or incomplete multi-part upload storage bytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You know, if for example, you've had some incomplete uploads, how much space they take in your bucket and you can clean it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the use cases will be, for example, to see which buckets have failed multi-part uploads, or which objects could be transitioned to lower-cost storage classes.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have data protection metrics to provide insights for data protection features.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So here we have versioning enabled bucket counts to make sure that all your buckets have been enabled with versioning and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: MFA, delete enabled bucket counts.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: SSCKMS enable bucket counts, cross replication region rules, counts, and so on.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 30:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the use cases are, for example, to identify the buckets which are not following your data protection best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have access management metrics to provide insights for S3 bucket ownership.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So here's the name of the metric and the use cases will be to identify which object ownership settings your buckets currently use.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: You have event metrics to get insights for S3 event notifications and to know how many buckets have the S3 event notifications configured.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have performance metrics to get insights into S3 transfer acceleration and see how many buckets have S3 transfer acceleration enabled.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you have activity metrics such as information about all requests, get requests, put requests, the number of bytes downloaded and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And finally, metrics around the HTTP status code such as 200OK, 403 Forbidden, et cetera, et cetera, to understand the type of usage your buckets are getting.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, you have different kinds of metrics in two Storage Lens, you have the free and the paid metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the metrics selection can be done in the UI as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But just as a summary, while the three metrics are automatically available to all customers, and it contains around 28 usage metrics, and the data is available for queries for 14 days, whereas for advanced metrics and recommendations, you get additional paid metrics and features such as the activity, the advanced cost optimization, the advanced data protection and status codes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 40:
- Concepts: Storage Operational Context
- Services: Amazon CloudWatch
- Key Insights: And then you get also these metrics being published to CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can access them without any additional charges.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then you can collect metrics at the prefix level within your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, the data when you pay, is available for 15 months.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's it for S3 Storage Lens.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a very helpful service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have to remember the difference between free and paid.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have to remember that the default dashboard has data across multiple accounts and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: And of course, the fact that Storage Lens covers your object storage, the fact that you can count how many objects are encrypted and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's say for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Block and File Storage Design
- Cost and Performance Optimization
- Data Protection and Immutability
- Lifecycle Operations
- Object Storage Patterns
- Storage Operational Context

### 2. Services List
- AWS Batch
- AWS Config
- AWS Lambda
- AWS SAM
- Amazon Athena
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon EKS
- Amazon EventBridge
- Amazon Glacier
- Amazon Kinesis
- Amazon Lex
- Amazon RDS
- Amazon S3

### 3. Features List
- access points
- ebs
- glacier
- lifecycle
- performance
- pricing
- replication
- s3
- storage classes

### 4. Use Cases
- 040_[SAA_DVA_SOA] S3 Event Notifications.txt:7: So the use case for Event Notification will be, for example, to automatically react to certain events happening in Amazon S3.
- 040_[SAA_DVA_SOA] S3 Event Notifications.txt:8: For example, you want to generate thumbnails of all the images upload to Amazon S3.
- 040_[SAA_DVA_SOA] S3 Event Notifications.txt:16: So the S3 service is sending data into an SNS topic, for example.
- 040_[SAA_DVA_SOA] S3 Event Notifications.txt:23: And they function similarly to what we had when we were using an S3 bucket policy.
- 040_[SAA_DVA_SOA] S3 Event Notifications.txt:35: You can say, for example, to Step Functions, Kinesis Data Streams, or Firehose, or you even get the features coming straight from Amazon Event Bridge.
- 041_[SAA_DVA_SOA] S3 Event Notifications - Hands On.txt:3: I call it "stephane-v3-events-notifications" and then when Ireland's... and I will just go ahead and create my bucket altogether.
- 041_[SAA_DVA_SOA] S3 Event Notifications - Hands On.txt:13: But I will show you the simpler way because it's a bit more complicated, is to just create an event notification and send it for example to SQS.
- 041_[SAA_DVA_SOA] S3 Event Notifications - Hands On.txt:20: And you can also include for example, object removals, object restores, and it shows you all the events you can catch on the right hand side.
- 041_[SAA_DVA_SOA] S3 Event Notifications - Hands On.txt:30: So now wanting to do is to enhance the access policy to allow my S3 bucket to write into my SQS queue.
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
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:2: So as you can see, you can go from the Standard, for example, to Standard IA to Intelligent Tiering to One-Zone IA, and then from One-Zone IA, as you can see, you can go to Flexible Retrieval or Deep Archive.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:9: For example, you say move to Standard IA class after 60 days after creations or move to Glacier for archiving after six months.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:12: For example, your access log files, you want to delete them after 365 days.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:13: Or you can, for example, use an expiration action to delete old versions of files if you have enabled versioning.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:14: Or we can use this to delete incomplete multi-part uploads if, for example, the multi-part uploads is more than two weeks old because, well, the thing should have been fully uploaded by now.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:20: For example, you have an application on EC2, and it creates images, thumbnails after profile photos are uploaded to Amazon S3.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:25: So the S3 source images can be on the Standard class with a lifecycle configuration to transition them to Glacier after 60 days and the thumbnails images, so this is how you would use a prefix to differentiate between source and thumbnails, for example.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:27: Another scenario, so a rule in your company states that you should be able to recover deleted S3 objects immediately for 30 days, although this may happen rarely.
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

### 5. Constraints / Limitations
- 040_[SAA_DVA_SOA] S3 Event Notifications.txt:6: So you can say I only want to consider the objects that end with JPEG.
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
- 205_[CCP_SAA_DVA_SOA] S3 Replication - Hands On.txt:83: So this beach.jpg here will never be deleted because only delete markers are replicated, not deletes, okay?
- 206_[SAA_DVA_SOA] S3 Replication - Notes.txt:2: So after you enable Replication, as you've seen, only new objects are going to be replicated.
- 220_Amazon Data Lifecycle Manager.txt:9: It cannot be used to manage snapshots or AMIs created outside of DLM.
- 220_Amazon Data Lifecycle Manager.txt:10: So everything has to be contained within Data Lifecycle Manager and it cannot be used to manage instance-store backed AMIs.
- 089_S3 Replication Limitations.txt:2: Let's talk about additional limitations that keep in mind.
- 089_S3 Replication Limitations.txt:26: But if you have objects in Glacier, it will not be replicated to bucket B So again, limitations to keep in mind here.
- 091_Same-Region Replication.txt:22: Maybe you are required to store multiple copies of your data in separate AWS accounts, but you may not have multiple region requirements.
- 091_Same-Region Replication.txt:23: Maybe you don't want multiple region requirements, things like GDPR that stipulate that you cannot send that data outside of that region.
- 093_Amazon S3 Batch Replication.txt:17: But if you're only using batch operations, that new object that was written would not be replicated.
- 093_Amazon S3 Batch Replication.txt:24: We talked about some of the limitations of replication.
- 093_Amazon S3 Batch Replication.txt:26: We might be required to store these multiple copies of your data in separate AWS accounts or regions or something like that.

### 6. Patterns / Architectures
- 154_[SOA] S3 Multi-Region Access Points.txt:19: Now in the case of an active passive fellow rear control where you're going to designate one bucket as active and the other one as passive.
- 202_[SAA_DVA_SOA] S3 Lifecycle Rules (with S3 Analytics).txt:23: So how would you design this?
- 105_Amazon S3 Event Notifications.txt:29: Maybe we're encoding this file, this video file for a movie or a video or to burn it to a DVD or something like that by just simply tagging an object or making a change to an object, we can have an event notification, actually trigger a full workflow, put that inside of a queue and we can have processing servers that will process that queue and actually process that file for us and do whatever we need to do for that particular file.
- 105_Amazon S3 Event Notifications.txt:30: Now if you're using something like Eventbridge, it would be a very similar workflow here where any change would actually trigger an event and we can have work performed based upon any changes that are made inside of our S3 bucket.
- 105_Amazon S3 Event Notifications.txt:38: And when one of these events happens inside of your bucket, you can have an S3 event notification to watch for that and then perform some kind of workflow based upon that event.
- 105_Amazon S3 Event Notifications.txt:40: Notifications are designed to be delivered at least one time and typically delivered.
- 105_Amazon S3 Event Notifications.txt:56: Again, important aspect to understand that based upon events that happen inside of your S3 bucket, you can trigger event driven workflows using these event notifications.
- 123_Understanding Access Points.txt:58: Now, with access points, you can control and limit access to your buckets, allowing access only from the designated VPC that's designated inside of the policy.
- 135_S3 Lifecycle Rules (with S3 Analytics).txt:23: So how would you design this?
- 142_S3 Lifecycle Rules (with S3 Analytics).txt:23: So how would you design this?
- 028_S3 Multi-Region Access Points.txt:19: Now in the case of an active passive fellow rear control where you're going to designate one bucket as active and the other one as passive.

## Step 3 - Deep Expansion (Storage Concepts)

### Core Services in This Topic
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Data Firehose: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon ECR: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Block and File Storage Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cost and Performance Optimization: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Data Protection and Immutability: treat this as a design lever that changes topology, risk posture, or operational workflow.
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
