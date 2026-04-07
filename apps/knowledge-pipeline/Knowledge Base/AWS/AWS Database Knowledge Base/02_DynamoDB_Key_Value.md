# 02_DynamoDB_Key_Value.md

## Scope
- Topic: DynamoDB modeling, throughput, indexing, transactions, and serverless access
- Files processed: 36
- Extracted non-empty transcript lines: 2233
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Database Knowledge Base
- Cross-domain referrals: 3

## Real Material - Architect Learning Build (Database: DynamoDB Key Value)

This section is the study-first architecture guide for dynamodb modeling, throughput, indexing, transactions, and serverless access.

### Phase 1 - Foundations

#### Module: DynamoDB Key Value Mental Model
- Use dynamodb key value decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: DynamoDB Key Value Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/08_Databases/088_DynamoDB.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/21_Databases in AWS/237_DynamoDB.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/315_DynamoDB WCU & RCU - Throughput.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/324_DynamoDB DAX.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/321_DynamoDB Indexes (GSI + LSI) - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/325_DynamoDB DAX - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/320_DynamoDB Indexes (GSI + LSI).txt
- outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt
- outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/044_Hands-On_ Configure DynamoDB Indexes.txt
- Top concept clusters from transcript metadata:
- NoSQL Access Patterns
- Caching and Latency Reduction
- Relational Consistency and HA
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 36
- Module-selected transcript files: 9
- Key insight candidates scanned (topic): 2233
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- So if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- It is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- So it's very possible for you to perform some heavy computations and cache them centrally in the ElastiCache to avoid going back to DAX and DynamoDB and do some expensive computations again.
- And if this is an RCU issue, because you're reading one data point and one partition very, very heavily, then we'll have a look at the feature called DynamoDB Accelerator, or DAX.
- Well, they can be used as a combination and the exam may test you on figuring out if it's best to use DynamoDB DAX, or if you wanna use ElastiCache.
- DAX is going to be for individual object cache and for query and scan caches in DynamoDB, whereas ElastiCache is for whatever you wanna put in it.
- And the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- So LSIs have to be defined at the table creation time and not afterwards, or as GSIs, so global secondary indexes, can be created afterwards.
- Now the application will directly interact with the DAX cluster, and the DAX cluster will fetch the data from the DynamoDB tables.
- So as a very simple problem, when you have your clients who want to directly access DynamoDB, then the right answer is to use DAX.
- So the idea is your application wants to write to DynamoDB tables and read from them, and in the middle is going to be DAX.

##### Polished Architect Notes
- Transcript signals that so you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Transcript signals that so if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Transcript signals that it is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- Transcript signals that so it's very possible for you to perform some heavy computations and cache them centrally in the ElastiCache to avoid going back to DAX and DynamoDB and do some expensive computations again.
- Transcript signals that and if this is an RCU issue, because you're reading one data point and one partition very, very heavily, then we'll have a look at the feature called DynamoDB Accelerator, or DAX.
- Transcript signals that well, they can be used as a combination and the exam may test you on figuring out if it's best to use DynamoDB DAX, or if you wanna use ElastiCache.
- Transcript signals that dAX is going to be for individual object cache and for query and scan caches in DynamoDB, whereas ElastiCache is for whatever you wanna put in it.
- Transcript signals that and the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Transcript signals that so LSIs have to be defined at the table creation time and not afterwards, or as GSIs, so global secondary indexes, can be created afterwards.
- Transcript signals that now the application will directly interact with the DAX cluster, and the DAX cluster will fetch the data from the DynamoDB tables.
- Transcript signals that so as a very simple problem, when you have your clients who want to directly access DynamoDB, then the right answer is to use DAX.
- Transcript signals that so the idea is your application wants to write to DynamoDB tables and read from them, and in the middle is going to be DAX.

##### Architect Synthesis (Transcript-Derived)
- Treat NoSQL Access Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Caching and Latency Reduction as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Relational Consistency and HA as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Design implication: so if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Design implication: it is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- Design implication: so it's very possible for you to perform some heavy computations and cache them centrally in the ElastiCache to avoid going back to DAX and DynamoDB and do some expensive computations again.
- Design implication: and if this is an RCU issue, because you're reading one data point and one partition very, very heavily, then we'll have a look at the feature called DynamoDB Accelerator, or DAX.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/320_DynamoDB Indexes (GSI + LSI).txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/08_Databases/088_DynamoDB.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/321_DynamoDB Indexes (GSI + LSI) - Hands On.txt
- outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt
- outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/044_Hands-On_ Configure DynamoDB Indexes.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/326_DynamoDB Streams.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/316_DynamoDB WCU & RCU - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/315_DynamoDB WCU & RCU - Throughput.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/21_Databases in AWS/237_DynamoDB.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/312_DynamoDB - Section Introduction.txt
- Top concept clusters from transcript metadata:
- NoSQL Access Patterns
- Selection and Trade-off Analysis
- Relational Consistency and HA
- Database Operational Context
- Caching and Latency Reduction
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 36
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2233
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So we seen LSI and GSI have very, very different purposes, but let's talk about these indexes and throttling.
- So even if the WCUs are fine on the main table, if there are throttling on the GSI, then the main table, no matter what, we'll be throttling and therefore choose your GSI and partial key carefully and assign your WCU capacity very, very carefully.
- So you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- And the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- So LSIs have to be defined at the table creation time and not afterwards, or as GSIs, so global secondary indexes, can be created afterwards.
- Now, remember, if you query a lot that GSI and writes get throttled, then the writes will be throttled as well on the main table.
- Local secondary indexes or LSI and global secondary Indexes or GSIs.
- We're going to query it using both an LSI and a GSI.
- And because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- So if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Or you could use Kinesis Data Analytics to analyze this data in real time and do some real-time computation such as some filtering, aggregation, transformation, and send that later on to Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- So this is quite a handy calculator, and I would suggest that you practice a little bit with these settings and you try to guess correctly what's the RCU and WCU for this table, because this is something that the exam will ask you.

##### Polished Architect Notes
- Transcript signals that so we seen LSI and GSI have very, very different purposes, but let's talk about these indexes and throttling.
- Transcript signals that so even if the WCUs are fine on the main table, if there are throttling on the GSI, then the main table, no matter what, we'll be throttling and therefore choose your GSI and partial key carefully and assign your WCU capacity very, very carefully.
- Transcript signals that so you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Transcript signals that and the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Transcript signals that so LSIs have to be defined at the table creation time and not afterwards, or as GSIs, so global secondary indexes, can be created afterwards.
- Transcript signals that now, remember, if you query a lot that GSI and writes get throttled, then the writes will be throttled as well on the main table.
- Transcript signals that local secondary indexes or LSI and global secondary Indexes or GSIs.
- Transcript signals that we're going to query it using both an LSI and a GSI.
- Transcript signals that and because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- Transcript signals that so if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Transcript signals that or you could use Kinesis Data Analytics to analyze this data in real time and do some real-time computation such as some filtering, aggregation, transformation, and send that later on to Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- Transcript signals that so this is quite a handy calculator, and I would suggest that you practice a little bit with these settings and you try to guess correctly what's the RCU and WCU for this table, because this is something that the exam will ask you.

##### Architect Synthesis (Transcript-Derived)
- Treat NoSQL Access Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Selection and Trade-off Analysis as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Relational Consistency and HA as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Database Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Caching and Latency Reduction as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so we seen LSI and GSI have very, very different purposes, but let's talk about these indexes and throttling.
- Design implication: so even if the WCUs are fine on the main table, if there are throttling on the GSI, then the main table, no matter what, we'll be throttling and therefore choose your GSI and partial key carefully and assign your WCU capacity very, very carefully.
- Design implication: so you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Design implication: and the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Design implication: so LSIs have to be defined at the table creation time and not afterwards, or as GSIs, so global secondary indexes, can be created afterwards.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/08_Databases/088_DynamoDB.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/326_DynamoDB Streams.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/312_DynamoDB - Section Introduction.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/320_DynamoDB Indexes (GSI + LSI).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/336_DynamoDB Security & Other.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/314_DynamoDB Basics - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/21_Databases in AWS/237_DynamoDB.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/315_DynamoDB WCU & RCU - Throughput.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/327_DynamoDB Streams - Hands On.txt
- outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt
- Top concept clusters from transcript metadata:
- NoSQL Access Patterns
- Database Operations and Resilience
- Selection and Trade-off Analysis
- Caching and Latency Reduction
- Relational Consistency and HA
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 36
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2233
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- So if we look at the architecture of DynamoDB Streams, so we have our application, which does create, update, and deletes operations on our table, and any of these changes is going to appear in a DynamoDB Stream.
- In this section, We're going to dedicate a lot of time to learn how to properly design your DynamoDB tables, how to enable streams and make sure your DynamoDB tables are going to be fully secured.
- So you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- So this gives you a different kind of architectures and all the possibilities that open up by using DynamoDB Streams.
- So we seen LSI and GSI have very, very different purposes, but let's talk about these indexes and throttling.
- And because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- So for example, if you have clients and applications, web, or mobile, and they need to access directly our DynamoDB table, then we don't want to give them IAM permissions and IAM roles, users directly from AWS, that will be truly inefficient and a security hole.
- So even if the WCUs are fine on the main table, if there are throttling on the GSI, then the main table, no matter what, we'll be throttling and therefore choose your GSI and partial key carefully and assign your WCU capacity very, very carefully.
- But if you have data that's going to be sitting around for a long time and you're not going to have a lot of reads or writes, then DynamoDB standard IA is going to say that the data is infrequently accessed and give you some cost optimizations.
- If you wanted to add your own custom logic, you could use a processing layer in which you would create either a Kinesis Client Library App, maybe running on EC2, or a Lambda function that will be reading from DynamoDB streams.
- You have event processing capability on top of DynamoDB, so you can enable DynamoDB streams to stream all the changes happening into your database and you can have an integration to invoke Lambda from the DynamoDB stream.

##### Polished Architect Notes
- Transcript signals that so if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Transcript signals that so if we look at the architecture of DynamoDB Streams, so we have our application, which does create, update, and deletes operations on our table, and any of these changes is going to appear in a DynamoDB Stream.
- Transcript signals that in this section, We're going to dedicate a lot of time to learn how to properly design your DynamoDB tables, how to enable streams and make sure your DynamoDB tables are going to be fully secured.
- Transcript signals that so you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Transcript signals that so this gives you a different kind of architectures and all the possibilities that open up by using DynamoDB Streams.
- Transcript signals that so we seen LSI and GSI have very, very different purposes, but let's talk about these indexes and throttling.
- Transcript signals that and because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- Transcript signals that so for example, if you have clients and applications, web, or mobile, and they need to access directly our DynamoDB table, then we don't want to give them IAM permissions and IAM roles, users directly from AWS, that will be truly inefficient and a security hole.
- Transcript signals that so even if the WCUs are fine on the main table, if there are throttling on the GSI, then the main table, no matter what, we'll be throttling and therefore choose your GSI and partial key carefully and assign your WCU capacity very, very carefully.
- Transcript signals that but if you have data that's going to be sitting around for a long time and you're not going to have a lot of reads or writes, then DynamoDB standard IA is going to say that the data is infrequently accessed and give you some cost optimizations.
- Transcript signals that if you wanted to add your own custom logic, you could use a processing layer in which you would create either a Kinesis Client Library App, maybe running on EC2, or a Lambda function that will be reading from DynamoDB streams.
- Transcript signals that you have event processing capability on top of DynamoDB, so you can enable DynamoDB streams to stream all the changes happening into your database and you can have an integration to invoke Lambda from the DynamoDB stream.

##### Architect Synthesis (Transcript-Derived)
- Treat NoSQL Access Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Database Operations and Resilience as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Selection and Trade-off Analysis as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Caching and Latency Reduction as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Relational Consistency and HA as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Design implication: so if we look at the architecture of DynamoDB Streams, so we have our application, which does create, update, and deletes operations on our table, and any of these changes is going to appear in a DynamoDB Stream.
- Design implication: in this section, We're going to dedicate a lot of time to learn how to properly design your DynamoDB tables, how to enable streams and make sure your DynamoDB tables are going to be fully secured.
- Design implication: so you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Design implication: so this gives you a different kind of architectures and all the possibilities that open up by using DynamoDB Streams.

### Phase 2 - Core Services
- Amazon DynamoDB should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- Amazon Lex should be understood in terms of request path, control plane, and operational boundary.
- Auto Scaling should be understood in terms of request path, control plane, and operational boundary.
- AWS Config should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Caching and Latency Reduction becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Database Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Database Operations and Resilience becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: NoSQL Access Patterns becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Relational Consistency and HA becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design dynamodb key value with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when dynamodb key value decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: It is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- Signal 2: And the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Signal 3: Transcript signals that it is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- Signal 4: Transcript signals that and the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Signal 5: Design implication: it is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- Signal 6: And because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- Signal 7: Transcript signals that and because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- Signal 8: Design implication: and the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Signal 9: So if we look at the architecture of DynamoDB Streams, so we have our application, which does create, update, and deletes operations on our table, and any of these changes is going to appear in a DynamoDB Stream.
- Signal 10: If you wanted to add your own custom logic, you could use a processing layer in which you would create either a Kinesis Client Library App, maybe running on EC2, or a Lambda function that will be reading from DynamoDB streams.

### Service-Specific Lab Paths
### Activity 1: Amazon RDS Lab for DynamoDB modeling, throughput, indexing, transactions, and serverless access
- AWS console path: AWS Console -> RDS -> Databases
- Azure equivalent: Azure SQL Database
- GCP equivalent: Cloud SQL
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> RDS -> Databases.
3. Build: Create a small dev database instance.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check endpoint, connect test, and run one query.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete DB instance and snapshots not needed.

### Activity 2: Amazon DynamoDB Lab for DynamoDB modeling, throughput, indexing, transactions, and serverless access
- AWS console path: AWS Console -> DynamoDB -> Tables
- Azure equivalent: Azure Cosmos DB
- GCP equivalent: Firestore
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> DynamoDB -> Tables.
3. Build: Create a table with partition key and add one item.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Query the item using the partition key.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test table.

### Activity 3: Amazon S3 Lab for DynamoDB modeling, throughput, indexing, transactions, and serverless access
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

### Activity 4: AWS DMS Lab for DynamoDB modeling, throughput, indexing, transactions, and serverless access
- AWS console path: AWS Console -> DMS
- Azure equivalent: Azure Database Migration Service
- GCP equivalent: Database Migration Service
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> DMS.
3. Build: Create source and target endpoints and one migration task.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate task status and replicated rows.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete migration task and endpoints.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study DynamoDB modeling, throughput, indexing, transactions, and serverless access in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon RDS | Amazon RDS | Azure SQL Database | Cloud SQL |
| Amazon DynamoDB | Amazon DynamoDB | Azure Cosmos DB | Firestore |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| AWS DMS | AWS DMS | Azure Database Migration Service | Database Migration Service |

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

- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/222_Amazon DynamoDB.txt (owned by AWS Compute Knowledge Base)
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/223_Amazon DynamoDB - Hands-On.txt (owned by AWS Compute Knowledge Base)
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/224_Amazon DynamoDB - Advanced Features.txt (owned by AWS Compute Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS Speciality/Security/09_Other Services/273_DynamoDB - Time To Live (TTL).txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's talk about Time To Live, or TTL, in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's a feature that allows you to automatically delete items after an expired timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this timestamp must be an attribute from within the item, and it should be a number.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And that number represents a timestamp in Unix Epoch format.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so what happens is that whenever the current time goes over that number, then the item will be marked for expiration and then deleted within a few days after expiration.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here we have an example of a session data table where we have User_ID and Session_ID as attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we've created an extra attribute called ExpTime for expiration time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so we enter some data there, and this data is representing a timestamp in the Unix Epoch format.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So over time, the current time will be evaluated and the Epoch timestamp of course, is going to increase of the current time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so at some point the table will be scanned and for each items where the expired time column is less than the current Epoch time, then the items will be marked for expiration.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then there will be a second process, a deletion process that's going to scan the table again and delete the items that have been marked for expiration.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So this Time To Live feature is really great and has a few use cases.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.
- Hidden/Implicit Meaning: Constraint or limitation signal; Operational database guardrail signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This kind of things.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this can come up in one question in the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/036_Database Scaling_ Vertical vs. Horizontal.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: In this video, we'll learn about the difference between vertical and horizontal scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's imagine that our application is taking off, that we have a lot of traffic and it's only growing.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we have users that are making thousands of requests per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now we need to think to ourselves, how do I scale my database solution so that it can handle all of this growth that we are experiencing.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there are two main strategies that we could potentially use vertical scaling and horizontal scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: With vertical scaling we are going to upgrade a single database server to make it more powerful.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So for example, let's assume that we have an RDS instance and the instance type is an m7 I large instance with two virtual CPUs and eight gigs of memory.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now I need a faster, more powerful instance.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, I could just simply take that instance and make it more powerful by changing the instance type.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So maybe we change it to an extra large instance type, and we get four virtual CPUs and we get 16 gigs of memory.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I still have a single database instance, but that one database instance is more powerful than it was before.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's an example of vertical scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And eventually you could potentially reach a ceiling here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's only so much we can do to make one specific instance more powerful.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this method works.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's simple but it's not infinitely scalable.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: And if we just continue to kind of think about RDS because it's easy here, let's talk about horizontal scaling with RDS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Instead of just taking your one server and making it more powerful with horizontal scaling, now we're going to have multiple nodes doing the work right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's kind of like if you think of the grocery store, let's say that you have a long line at the grocery store.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, you could make one line faster, you know, by adding a bagger and having multiple people working in that one line to try to help out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or you could just open two lines and that might work out even better.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's kind of what we're doing here with horizontal scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're allowing multiple database servers to share the work.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Relational Consistency and HA
- Services: (none explicit)
- Key Insights: And these will either be read replicas.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or we could use sharding.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: We could kind of take the database and put half of the database contents here, half of the database contents here, and spread out that workload one way or another.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Relational Consistency and HA
- Services: (none explicit)
- Key Insights: Or we could use read replica.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here's the problem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Traditional relational databases don't handle horizontal scaling all that well, right?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: These relational databases are built for consistency.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 32:
- Concepts: Database Operational Context
- Services: Amazon Lex
- Key Insights: They're built for complex relationships.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: They're not built for these massive global scale out architectures.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And that's one of the reasons why NoSQL databases have emerged as a great solution for really large and really high performance databases.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In this video, we'll take our first hands on look at DynamoDB, and we're going to create our first DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so here you can see I've logged into the AWS console.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to be performing all of my demos in the US East Ohio region.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to select that region.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then I'll go up here to the search area.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And I'm just going to type in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so here's my DynamoDB service.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'll click on that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And all of my little menu options for DynamoDB are over here on the left we're going to start by going to tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So in the world of DynamoDB we don't need to create a database instance.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: We don't need to create a database or choose a database engine.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All of that stuff is already there.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're just going to jump straight into creating a table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so I'm going to click on Create Table here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so for table name we're going to use the name books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: This is going to be a DynamoDB table full of books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And then we're going to create a partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 18:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And it's important that the partition key is unique that the partition key has a high level of cardinality.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And what I mean by that is that every single book that we enter into this table should have a different, unique book ID, so that all of the items in the table end up getting distributed equally across different partitions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so the book ID is simply going to be a string.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: We can choose a string, a binary or a number.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here we're going to stick with string.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're not going to enter a sort key at this point.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So every book in our table is going to have a unique book ID.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And now we're going to set up some of the settings for our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to click on Customize Settings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And we can choose which class of table we want to use here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: The default option of DynamoDB standard is ideal for general workloads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: There's another option DynamoDB Standard-infrequent access, and this is going to cost less for data that you rarely read or write.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you're archiving data, Standard-infrequent access is a great option.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I kind of think of standard as like an active bookshelf.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: These are the books that I use every single day, and I keep them on a bookshelf right in front of my desk.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Infrequent access is like books that I'm going to put in the attic, right?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's cheaper to keep them there, but I won't reach for those books as often.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: So I'm going to go with DynamoDB standard for this first table, and then for capacity mode, I can choose on demand or provisioned with on demand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: DynamoDB will automatically scale as my workload changes versus provisioned, where I am going to specify read capacity units and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: We're going to choose either on demand or provisioned.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Now I'm going to choose provisioned in this case.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the reason that I'm choosing provisioned is because this is included in the AWS free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: If I choose on demand, that's not included.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you get free storage.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: With either option, you can get up to 25 gigs of storage for free.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Included in the free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if I want to use the free tier, I have to use provisioned capacity mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: And so within this provisioned capacity mode I am going to disable auto scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to set my read and write capacity units to two.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here's the way you want to think of this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: In real life you might choose on demand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: You might allow DynamoDB to dynamically scale and basically give you the horsepower that you need to run your database with the proper level of performance.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or you can provision it for specific read and write capacity units, and control exactly how many resources this database is able to consume.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And so basically in this situation I have two read and to write capacity units that are always ready to go and are always ready to handle the workload of my database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: If you are automatically scaling, if we choose to automatically scale instead of strictly provisioning capacity units, then this warm throughput setting becomes important because as our workload increases, we might want to pre-allocate more resources in advance to kind of make sure that our performance stays consistent.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But in this case, that setting doesn't really matter too much here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So we're going to just skip warm throughput and keep those default values.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to scroll all the way down to the very end here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Because we want to keep it relatively simple.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This first time we create a table and we're just going to click Create Table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now my first DynamoDB table is being created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: You can see the partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here is the book ID you can see the read and write capacity mode are shown here as provisioned.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can see how much storage space my table is currently consuming.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right now it's zero bytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: And if we click on the name of our table, we'll be able to see all of the details of how this table is configured right here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's go through the process of actually creating some items to exist within this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so up here at the top right you can see explore table items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And at the moment there are no items in this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I haven't created any items yet.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and try one out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's click create Item here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to first assign a book ID.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so the book ID for my first book is going to be book 001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is just a unique identifier that every single book will have.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So my second book will be book 002, and I'm also going to add some new attributes to this item that I'm creating.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So these are going to be string attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And each book is going to have a title.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to make up the title for a book, I'm going to call it The Cloud Chronicles.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to add yet another new attribute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is going to be the author of the book, and I'll just go ahead and put my name in there as the author.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now we've got a couple attributes for our first item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go ahead and click Create Item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And now we've got our first item in our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And unlike a relational database, DynamoDB does not force you to define every attribute ahead of time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's no schema.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I now click create item I can create another book.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 88:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so let's try something out here for the book ID I'm just going to put in book 001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 89:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: This is the exact same value that I used for the last book that I created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 90:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So let's see what happens if I don't put in a unique value for my partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 91:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm also going to add a few other attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 92:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The title this time is going to be AWS databases.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 93:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: I'm going to add yet another attribute for author, exactly the same as the last book I put in.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 94:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I had an author, and again, I'm just going to put in my name for the author.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 95:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then let's add even one more attribute here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 96:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to make it a number, and I'm going to call it pages and the number of pages of this book is going to be 310.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 97:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now I've filled out all of the attributes for this item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 98:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's see what happens when I click Create item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 99:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And remember I used the identical partition key for this item as I did for my first item.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 100:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's going to tell me no, you can't do that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 101:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: An item with this primary key already exists.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 102:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, well let's give it a unique value.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 103:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's make it book 002 and let's try to click Create item one more time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 104:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there we go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 105:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So other attributes like for example the author.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 106:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Those can be the same across multiple books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 107:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: But the partition key itself has to be unique.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 108:
- Concepts: Database Operational Context
- Services: Amazon Lex
- Key Insights: And you can see the flexibility here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 109:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: We don't have to have the same set of attributes for everything in our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 110:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 111:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we've created our first table here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 112:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go back to the tables area and let's create a second table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 113:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this table I'm going to call book reviews.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 114:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And the partition key is going to be book ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 115:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: So I'm going to use that same identifier here for my partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 116:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But we're also going to have a sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 117:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to try out a sort key in this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 118:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the sort key is going to be review ID.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 119:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So the partition key groups all related data while the sort key uniquely identifies and orders those reviews.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 120:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we'll see a good view of exactly what I mean as we move a little deeper into creating the table contents here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 121:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So let's just go with the same settings as last time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 122:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: We're going to go with DynamoDB standard.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 123:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to go with provisioned capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 124:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: We are going to disable auto scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 125:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to provision two read and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 126:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we're just going to go to the very end here and create our new table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 127:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now that the table is created let's go ahead and click on the name of the table here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 128:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And within the table I'm going to click Explore Table Items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 129:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And just like we did in the last table we're going to start creating some items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 130:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now you'll notice that every book has to have a book ID.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 131:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the first book is going to be book 001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 132:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The review ID is going to be R001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 133:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So every item that I put in this table must have a book ID and a review ID, and then we'll add some new attributes here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 134:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to call this attributes text.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 135:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's going to say something like this book was great.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 136:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 137:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's the text for my review.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 138:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's add one more new attribute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 139:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to add a number.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 140:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the number is going to be a rating zero through five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 141:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll say yeah we really loved it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 142:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This book got a five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 143:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay so there's my first book.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 144:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And bear in mind the partition key and the sort key book 001 is the partition key are 001 is the sort key which is the review ID right.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 145:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's create an additional item in this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 146:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: And I am going to use the exact same partition key as I did with the previous item in this table, but that's okay.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 147:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's going to work here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 148:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: We saw that we couldn't do this before when we were only using the partition key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 149:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: But now we're using a partition key and a sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 150:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's make the sort key a new unique value.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 151:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: R002.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 152:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's just quickly add some new attributes here for the text.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 153:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm just going to put I hated it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 154:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then for the rating I'm going to put in a one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 155:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's create this item in our table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 156:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So there you go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 157:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Now you've got two different reviews for this same book.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 158:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: And so both reviews are created successfully even though we had the same book ID, because the book ID and the review ID combined is unique.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 159:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So book 001R002 is different than book 001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 160:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: R001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 161:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is where the sort key adds real power.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 162:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: It lets you store multiple related items like for example, multiple reviews for the same book, and it keeps them neatly grouped together.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 163:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if we have more books, for example, let's call it book 002 with a review ID of review 001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 164:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And again, we'll add some new attributes here for the text we'll put.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 165:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Great.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 166:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And for the review score here we'll put five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 167:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And let's create yet another item in our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 168:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now your table has multiple books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 169:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each book has their own set of reviews.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 170:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 171:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So in this lesson we created two tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 172:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: We created one table called books with a simple partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 173:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And then we also created a second table called Book Reviews, with a composite partition key, with a partition key and a sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 174:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And those partition keys decide where items are stored.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 175:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Sort keys decide how items are organized.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 176:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We also saw that every item could potentially have different attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 177:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We saw this in our books table where some of the items in our books table had page counts listed and some did not.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 178:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And behind the scenes DynamoDB is going to handle replication, scaling, fault tolerance, all of that good stuff behind the scenes.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 179:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 180:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now you've built your DynamoDB table, and as we progress, we'll explore capacity and throughput and some of the other details of our DynamoDB tables in much deeper detail.
- Hidden/Implicit Meaning: Operational database guardrail signal.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So we're going to talk about a really important topic here when it comes to designing your DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is how you can control how much data your table can handle, and how fast it can read, and how fast it can write.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So when you create a DynamoDB table, you need to decide how you want AWS to manage your capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there are two modes available.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's provisioned mode and on demand mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's start with provisioned mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is the one that's going to give you the most control.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: With provisioned mode you set the capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: You decide how much read and write throughput your table has.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be measured using read capacity units and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so you'll basically say hey AWS I want my table to handle five reads and and ten writes per second or whatever.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And DynamoDB will then reserve that capacity for you, and you'll pay for it by the hour, whether you use it all or not.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: You can also enable auto scaling, which is going to adjust the read and write capacity numbers for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: It'll adjust them up or down automatically when your workload changes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's kind of like cruise control for your tables performance.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: Whatever your needs are, auto scaling is going to make sure that you have the right number of capacity units to handle those.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So with provisioned capacity, you are planning your capacity ahead of time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: You're paying for what you provision, but you can also enable auto scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's compare that to on demand mode and on demand is really all about convenience.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You know, here you're not specifying the number of read or write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: DynamoDB will automatically adjust your capacity based on traffic.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it'll scale up and scale down in real time, and you'll pay for only what you use.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The downside of this approach is it's going to be more expensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's going to cost roughly 2.5 times more than provisioned capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is the way that AWS handles a lot of their services.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: They'll figure something out for you right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Like for example, they'll figure out how much read and write capacity you need for your DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But they're not going to do that for free.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you'll typically get a better price if you can figure this sort of thing out on your own versus the convenience of letting AWS just handle it for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So provisioned is ideal for.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Predictable workloads and it's going to be cheaper over time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Um, versus on demand, which is ideal for unpredictable workloads, is going to be more expensive, but is going to eliminate some of the management work that you have to do.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can change a table from one mode to the other.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take a deeper look at provisioned capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we'll cover some of the key things that you're going to need to know if you're taking a certification test.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So when you use provisioned mode you need to specify read capacity units for reads and write capacity units for writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Auto Scaling
- Key Insights: And again, you can let DynamoDB automatically adjust these with auto scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But let's take a look at the underlying math here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to go to math class for a couple minutes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to make sure that we understand exactly what these capacity units represent.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: A right capacity unit supports up to one write per second for an item that is up to one kilobyte in size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If your items are bigger than one kilobyte in size, you're going to use more write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at a couple examples here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you're writing a one kilobyte item, that's going to be one write capacity unit for each write per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you're writing one one kilobyte item per second, that's going to be one write capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If your item is larger it's going to consume more write capacity Units, right?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I'm writing bigger items, it's going to consume more of these write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And DynamoDB always rounds up to the next whole kilobyte.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take a moment to look at a couple examples of how this math works out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So in example one, let's say that you are writing eight items per second and each item is one kilobyte.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, each item up to one kilobyte requires one write capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So eight items per second times one write capacity unit equals eight write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: That's your required throughput.
- Hidden/Implicit Meaning: Constraint or limitation signal; Operational database guardrail signal.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's what you need.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's your capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: Amazon Lex
- Key Insights: Example two is a little bit more complex.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: In this case we are writing five items per second and each item is 5.6kB in size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well AWS is always going to round up.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So instead of 5.6kB when it comes to your write capacity units, each of those items is going to be considered six kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So five items per second times six kilobytes, or six write capacity units each.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: You have to provision 30 write capacity units to accomplish that workload.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's look at one more.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Example three you are writing 180 items per minute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Well, 180 items per minute is the same as saying three items per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each of those items is three kilobytes in size, so three items per second times three write capacity units equals nine write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Leads are trickier because DynamoDB offers two different types of reads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So with strongly consistent reads, DynamoDB is going to return the latest data guaranteed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It reads from the primary node and ensures that all of the writes have been applied.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if there are writes that are being replicated across multiple nodes, you're always going to get the latest data with a strongly consistent read.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Consistency and failover signal.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that avoids those potential consistency problems that we've talked about in prior lessons.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: However, it costs twice as much as an eventually consistent read.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so because of that, eventually consistent reads are the default.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is the default mode where when a read occurs, it might potentially return slightly stale data for a brief moment after a write.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're talking about a few milliseconds here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if some data gets written to your DynamoDB table and then you go to read that data within a millisecond or two, there's a chance you might get data from one of those partitions, one of those nodes that hasn't been updated yet.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Um, but like I said, it's cheaper.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You get two eventually consistent reads for every read capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You only get one strongly consistent read per read capacity unit.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the strongly consistent reads are much more expensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: They're twice the price of an eventually consistent read.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so let's do a little bit of math again here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each read capacity unit equals one strongly consistent read per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For a maximum size of four kilobytes or a read capacity unit can equal two.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Eventually, consistent reads per second for items up to four kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go through a few examples like we did with write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 88:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 89:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For our first example we are going to perform 12 strongly consistent reads per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 90:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Remember each strongly consistent read equates to one read capacity unit, and each item is going to be four kilobytes in size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 91:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So each read capacity unit can support four kilobytes of data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 92:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be 12 times 112 times one read capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 93:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We need a total of 12 read capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 94:
- Concepts: Database Operational Context
- Services: Amazon Lex
- Key Insights: Let's take a look at one that's a little bit more complex.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 95:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's say you're going to perform 20 eventually consistent reads per minute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 96:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now remember each read capacity unit supports two eventually consistent reads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 97:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to divide 20 by two to get ten here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 98:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 99:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Because we can do two eventually consistent reads per read capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 100:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each item is ten kilobytes in size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 101:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to round up to four kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 102:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to actually say that each item is 12kB in size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 103:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So 12kB divided by four kilobytes per read capacity unit equals three.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 104:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Ten times three is 30 read capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 105:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's the necessary capacity to handle that many reads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 106:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's do one more.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 107:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Just to drive this home.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 108:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to perform eight strongly consistent reads per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 109:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each item is seven kilobytes in size, but we need to round up to the nearest four.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 110:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to say that each item is actually eight kilobytes in size for purposes of our read capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 111:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Because we are doing strongly consistent reads, we don't divide by two.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 112:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each strongly consistent read is one read capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 113:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to take our eight kilobyte items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 114:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Divide them by four because we get four kilobytes per RCU to determine how many rcus we require.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 115:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And what we come up with is eight times two equals 16 read capacity units required to perform these read operations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 116:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So with these provisioned capacity options, you kind of have a very strict limitation on the number of reads and writes that can occur per second.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 117:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's say that you start to exceed those those parameters momentarily.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 118:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's say if you have provisioned your read and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 119:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: But if you go over that, if you start pushing more reads or more writes towards that DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 120:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: DynamoDB will actually allow you to burst beyond your limits using a burst capacity pool.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 121:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you exceed that burst capacity pool for too long, you'll get an error.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 122:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: A provisioned throughput exceeded exception error.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 123:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That'll basically mean your app is is reading or writing too fast for the provisioned limits.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 124:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can resolve this using exponential backoff.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 125:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So basically telling your application, hey, when we get this error just wait.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 126:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if we get it again, wait even longer.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 127:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if we get it again wait even longer.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 128:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Or we could enable autoscaling on our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 129:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we would never run into this problem.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 130:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Or maybe we need to redesign our partition keys to spread load more evenly.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 131:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's think about that one for a moment.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 132:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: How does DynamoDB spread the workload across multiple partitions?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 133:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 134:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: We already know that DynamoDB splits your table into multiple partitions, and each partition stores a portion of your data.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 135:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So when you read or write data, DynamoDB uses a hash function on your partition key to decide which partition to use.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 136:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if you provision ten read capacity units and ten write capacity units, DynamoDB creates ten partitions.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 137:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each one of those partitions is going to get one read capacity unit and one write capacity unit.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 138:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But let's say that one of those partitions is a very popular key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 139:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Like let's say for example, you are using um author as a partition key for books, and maybe one author has written a lot of books.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 140:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So one of those partitions might be seeing more traffic than the other partitions.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 141:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's called a hot partition.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 142:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And this can create a throttling situation, a situation where you don't have enough throughput, even though the overall throughput of your DynamoDB table is actually fine.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 143:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This one partition is getting overwhelmed.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 144:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So just imagine like a three lane highway and everybody's trying to get into the right hand lane and you have two other lanes that are wide open, right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 145:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's kind of like having a hot partition.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 146:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're funneling all of the traffic, or I should say, a large portion of the traffic into a limited set of partitions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Access-pattern design signal.

Line 147:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's creating the problem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 148:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So that's why it's so critical to choose a really unique value, what we call a high cardinality partition key, because that's going to help distribute the load evenly across all of the partitions.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 149:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's provision capacity mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 150:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now we can circle back to on demand which is our much more simple option.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 151:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Um on demand mode is much simpler.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 152:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You don't have to set, read or write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 153:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You don't have to plan or manage capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 154:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: DynamoDB will just scale automatically and charge you for every successful read or write request.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 155:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the terminology changes a little bit here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 156:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Um, you're going to be billed in terms of read request units and write request units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 157:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: It's basically the same thing as read capacity and write capacity units, just in a little bit of a different terminology.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 158:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So on demand is perfect for things like unpredictable workloads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 159:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or maybe you've got a new application where you don't know what the traffic patterns are going to be.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 160:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: Or maybe you've got event driven systems, for example, like lambda triggers that are going to create these read and write operations on your DynamoDB table when you don't really know what you're going to need.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 161:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: On demand is a great option to have.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 162:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But just keep in mind, although it's more convenient, it is much more expensive 2.5 times more expensive than provisioned mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 163:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So that's how DynamoDB handles read and write capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 164:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's two different models, two completely different mindsets provisioned and on demand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In this video, we're going to start to work with the capacity management features of our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And in the prior hands on demo, we created two DynamoDB tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to click on the name of my books table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here under Read Write capacity I'm going to click edit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so what I want to do now is switch my capacity mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: Maybe this is a DynamoDB table that frequently experiences changes in workload.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's very dynamic.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so the demand changes frequently.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well in that situation an on demand model might actually make more sense.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now my billing is going to change.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to pay based on read request units and write request units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's hard to say.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's potentially going to be more expensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But I'm only going to pay for the capacity that I actually use.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I do have the ability to change the capacity to on demand, or if it's an on demand table, I can change it to provisioned.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I just want to make it clear how you can switch here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we've got on demand or provisioned mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This has changed relatively recently.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can switch a table from provisioned to on demand up to four times in a 24 hour period.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can switch from on demand to provisioned at any given time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That didn't used to be the case.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You used to only be able to switch once per 24 hours.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That has been updated, and now you can switch it up to four times during a rolling 24 hour window.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you'll notice that as we switch from on demand to provisioned, we have the ability to use this capacity calculator here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so let's try it out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's say that our average item size is six kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's say that we're going to do five reads per second and three writes per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the reads are going to be eventually consistent reads and the writes are going to be standard.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the eventually consistent reads are going to count as one read capacity unit each.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so you can see here here's the number of read capacity units that we're going to use.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here's the number of write capacity units that we're going to use.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's six kilobytes times three writes per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now the read capacity units might be a little bit more confusing than the write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we are reading five items per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each of those items is six kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But we have to round up right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have to round up.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's assume that each item actually counts as eight kilobytes, because we have to round up to the nearest multiple of four.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So essentially by rounding this up, we're not just going to do five reads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're actually going to do eight because it's going to take two reads to handle each of those items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But with eventual consistency, that's okay because you get two eventually consistent reads for each read capacity unit.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's why the read capacity units comes out to five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now a strongly consistent read would be different.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We would need ten read capacity units and we can try that out here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's change this to strongly consistent.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we notice immediately that the read capacity units changes to ten.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we can also enable automatic scaling here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: So what we've got currently in our table is auto scaling is disabled.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But I can turn it on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to turn it on for both read and write capacity Opacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to leave my minimum capacity units as one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to change my maximum capacity units for reads up to five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm also going to set the maximum capacity units for writes up to five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the target utilization is 70%.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we start exceeding 70% usage of the read capacity units or the write capacity units, it'll automatically add more all the way up to a maximum of five.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we are now going to save these changes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And it's important to note that your DynamoDB table is no longer eligible for the free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: And we will be able to see the auto scaling activities that occur here under this auto scaling activities area.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can refresh it right here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So what we're going to have to wait a few minutes for this to start working.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But right now I'm not using any reads or writes on this database table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it should scale down to the minimum.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can see as of right now we are at two provisioned read and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So hopefully we should see this thing scale down to one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there we go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Just said scaling write capacity units to one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's working on scaling this in and giving me fewer read and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I waited a little bit longer.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: And you can see here it's also taking the same action on reads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's scaling those capacity units down to one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And eventually if I refresh my screen here, you're going to see it reflected here that the provisioned capacity units have now been changed to one for read and one for write.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: So that's how auto scaling can potentially save you money is by bringing those read and write capacity units down to an absolute minimum when you don't need them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's click edit here one more time next to read write capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: And let's just take a quick look at what you can configure here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For on demand, you can set a maximum for read requests and write request units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is just a ceiling right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: If you want to just set an absolute maximum to control what your bill could potentially be, you can choose these boxes here and say, you know, maybe I want to limit it to ten or read request units and so on and so forth.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can just set your maximum there.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: There's not a lot of settings to configure beyond that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You could just save your changes here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And now you've got an on demand capacity model for your DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: So yeah, I just wanted to show you that there's very little to configure if you want to set the on demand capacity model here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/042_DynamoDB API Basics for Cert Prep.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In this hands on demo, we're going to learn a little bit about the API calls that are used in the background when you're working with a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Some of these are really important for certification purposes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So especially if you are pursuing the AWS Certified Developer Associate exam, this is going to be critical information for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Even if you're not, though, you're going to learn a few handy things about how to work with DynamoDB console, how to perform queries, and some of the API stuff that's happening in the background.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's kick things off by going back to the DynamoDB dashboard.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I am going to go to tables, and I'm going to once again click on my books table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so I've got a table that already exists here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And from the top menu here we're just going to choose Explore Table Items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is where I'm going to be able to view the data in my database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to be able to run queries against it and perform different operations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Those operations directly map to Dynamo DB's APIs, right?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So when you're using the AWS console, you're basically just issuing API calls in the background.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Everything you click, everything you do in this console is interpreted as an API call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example let's run a scan operation.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is going to perform a scan API call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's going to read every item in the table and return them to the client.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here you can see we can click on scan.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can we can filter this if we want to based on these filters here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can filter it based on attribute names or things like that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're just going to scan the entire database, everything in the table, and we'll hit run here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so this is a simple API call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you have a really large table this is going to be pretty inefficient.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But it basically is performing a full read of your entire DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You've already seen this one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We can click on Create Item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we are going to now create a new item in our table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: What's happening in the background is this is a put item API call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, if I create a new book ID called book 003 and I can add additional attributes to that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example I can add an author and whatever I want to put here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: The point is when I create this new item we are now issuing a put item API call to the DynamoDB service, so it's going to create a new item in the table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's use the Get Item API.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's click on this new item that I just created here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And when I click on it it's going to get that item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So when I click on my newly created item it's going to open this little item editor and display the contents of that item in the background.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: A Get Item API call is issued to DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now we're going to use the Update Item API.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: And so we're still in this exact same item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here we have the ability to edit it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I had a little typo before I had a capital A in my author field.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to change that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to give a random name to the author here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go ahead and change the name of the author.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's hit save and close.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now you can see that the author of that book has been updated in the background.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is an update item API call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's try a query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 48:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Let's click up here under query and under partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm just going to put in book 003.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we can run this query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it should find the item that matches that query.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is the query API.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 53:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So unlike scan this query is using the partition key index to locate the data that matches that query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's try a little bit of a different query here.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to go back to tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And in a prior demo I created a table called Book Reviews.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And one of the important things about this book reviews table all is that we had not only a partition key, but we also had a sort key here as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 59:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So let's try running a query with not only a partition key, but with a key condition expression with a sort key as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 60:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And so I'm going to go to query here under partition key I'm going to search for book 001.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And under short key I can search for all sorts of things.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's imagine for example in this scenario that the sort key was a date like a timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well I could search for greater than or equal to.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or maybe I only want to see review scores that are are lower than a four.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, I could do less than or equal to four for a number here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now in my case, the sort key is simply a review ID, right?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example review 001.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's what I'm going to use in my query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it should just return this first result here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It should only return review 001 for book 001.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So when I run this query there you can see the results.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But I could do other things right if I made my sort key the rating instead.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let me go ahead and reset this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if I made my my sort key the rating instead of um, the the review id, then I could potentially run queries and just view the reviews that are above or below a certain value.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: And then finally, the last API I want to show you is the batch right item API.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to do select all items here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to select all of the items in my table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to go to actions.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Selection and Trade-off Analysis
- Services: AWS Batch
- Key Insights: And I'm going to choose delete items, and I'm going to have to confirm that that is a batch right item operation, which can include multiple delete item requests.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: So doing these batch operations is more efficient if you have, you know, large numbers of items that you want to insert or delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: However, you know, if you want to delete the entire table, then doing that using a batch operation really isn't the best way to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You should just drop the entire table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if I want to do that, if I want to drop an entire table, I can go over here to tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: I can pick one of my tables and I can just choose delete and delete will get rid of that entire table for me.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's a summary of some of the key API calls that you need to be familiar with.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you're going for your AWS Certified Developer Associate certification.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In this video, we'll learn about local secondary indexes and global secondary indexes, and how they can be used to improve query performance with DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: These concepts are very important if you're planning on taking the AWS Certified Developer Associate or the Certified Solutions Architect Associate exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so we are going to introduce the concept of indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Indexes allow you to query your data in different ways without scanning the entire table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And that's a big important thing.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We don't want to have to look through the entire table when we want to perform a query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We want to be able to find the data we're looking for fast.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's imagine that your DynamoDB table is a bookshelf, and all the books on it are organized to alphabetically by author.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Author is kind of like your partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if somebody asks you for a book by a certain author, you're going to be able to find it really quickly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if somebody asks you show me a book from the year 2015, or show me a book with 12 chapters, that's going to be much harder to find.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You're going to have to flip through every single book on your shelf.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And that's sort of like doing a scan of your database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's really slow and labor intensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Indexes are like extra catalogs in your library.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You know, maybe we can have an index that's sorted by page count of your books.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Maybe we can have an index that's sorted by the year that the books were published.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now, if I need to find a book published in a certain year, I can find it really quickly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And that's the purpose of secondary indexes with DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's to organize the contents of your database in a different way.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to focus on two types of secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 23:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Local secondary indexes or LSI and global secondary Indexes or GSIs.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: A local secondary index gives you an alternative sort key while keeping the partition key the same as your base table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 25:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So we've already seen a little bit about using sort keys within our DynamoDB tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is like having an extra sort key to work with.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's go back to Excel and think about a DynamoDB table example that we've looked at before.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's say that I want to query my book review database.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so my query says, hey, show me all of the reviews for book 101.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 30:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: That query is going to happen really quickly because we are querying based on the partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's assume that the review ID is the sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I can very easily issue queries related to the sort key as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But what if I want to see all of the books that have a rating higher than four?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, that's going to be really challenging because rating isn't my sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I would have to scan all of the contents of the database, and then filter those contents for reviews that are above four.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And that's going to be really inefficient.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So maybe what I want to do here is create a local secondary index where rating is going to be the sort key for that secondary index, so I can have an index sorted by ratings with all of this information.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now I can easily execute a query that says, show me all of the books with a rating higher than four.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So secondary indexes and specifically local secondary indexes are a way to create additional indexes to organize your tables.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 40:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And you can have up to five lsis per table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: The lsis must be created when the table is created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You cannot add them later.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And the Lsis themselves share the read and write capacity units of the main table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So just understand that any operations that are carried out using the LSI are going to go towards that total read and write capacity units that you're using for the table itself.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about a few key pieces of information about Lcis that are important for the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: There is a ten gigabyte item collection limit, so each partition key in all of the related items can't exceed ten gigabytes total.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 47:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So for example, let's say that we have a book with the partition key of B001.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 48:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Well, all of the items with that particular partition key cannot exceed ten gigabytes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 49:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Um, if it does, writes to that partition key will fail.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can't delete Lcis once they're created.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you have to plan carefully before you create your tables and you don't want to over index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 52:
- Concepts: Specialized Data Models
- Services: Amazon Lex
- Key Insights: AWS documentation warns us that having unnecessary indexes add cost and complexity.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So think about the queries that you truly need and consider local secondary indexes for those.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or we could consider a global secondary index instead.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And in a global secondary index is going to allow you to define a new primary key, not a sort key, but a primary key, meaning that you can query your data in in a totally different way than your base table allows.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we go back to our book table here, right now, you can run a query and you can say something like, show me all of the reviews for book 101.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Um, you can use your sort key to to issue queries as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if I need to know, hey, which books were reviewed by Carol without an index?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Again, you would have to scan every single record, and that's going to be very slow.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Instead, we could create a global secondary index and make the primary key or the partition key of that global secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The reviewer, you know, and maybe in this case we would have the review ID be the sort key or the rating be the sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Um, and so now you can run, you know, give me all of the books reviewed by Carol using your global secondary index and quickly find that information and again, some important testable objectives.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here you can have up to 20 guesses per table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can add, delete or modify global secondary indexes after table creation.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's a big difference between them and local secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And each global secondary index also has its own read and write capacity units so you can control All the capacity of your global secondary indexes, independent of the capacity of of the table itself.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is a critical piece of information for the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So local secondary indexes share throughput with the main table.
- Hidden/Implicit Meaning: Access-pattern design signal; Operational database guardrail signal.

Line 69:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: They share read and write capacity units with the main table a global secondary index has its own throughput.
- Hidden/Implicit Meaning: Access-pattern design signal; Operational database guardrail signal.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: However, let's imagine that the global secondary index becomes throttled.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 71:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Like for example, we don't have enough write capacity units for the global secondary index because every time data is written, DynamoDB must update its table, but it also has to update the global secondary index as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 72:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And if it can't do that, then DynamoDB won't be able to perform its write.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Eight.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So when you write to a DynamoDB table that has a global secondary index, DynamoDB actually has to do two separate writes behind the scenes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The first write is to the base table write.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: This is where the main data for DynamoDB table is stored.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But there's also a second write that has to be performed on the global secondary index, so that the index has an accurate picture of what is in our table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And those writes must succeed together.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 79:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: That means that DynamoDB will not confirm your write until both the table itself and the index have been successfully updated.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 80:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if your global secondary index doesn't have enough write capacity units, DynamoDB won't be able to complete the full operation.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as a result, the main table also gets throttled, even if the main table actually has plenty of write capacity units available.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so when you're thinking about these secondary indexes, you really want to start from a perspective of what are the questions that my application is going to need to ask?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: What are the queries going to look like.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then design your indexes around those queries and only those queries that are going to happen frequently in real life.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 85:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: And just keep in mind that a local secondary index, an LSI, gives you ways to sort data within the same partition.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if the partition is book ID, we are sorting within that partition, whereas a global secondary index gives you new ways to access your data across the entire table and allows you to establish a new primary key for that index.
- Hidden/Implicit Meaning: Access-pattern design signal.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/044_Hands-On_ Configure DynamoDB Indexes.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In this video, we'll learn how to work with secondary indexes within DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to look at local and global secondary indexes and how they provide different ways to query data.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create a new table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: We're going to query it using both an LSI and a GSI.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 5:
- Concepts: Database Operational Context
- Services: Amazon Lex
- Key Insights: And we'll understand how our query flexibility improves with these indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right so here you can see I'm at the AWS Management Console.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so we're going to start by going to the DynamoDB console here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And within the DynamoDB console we're going to create a new table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so the settings of the table are going to be we're going to name it Books Demo.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And we are going to utilize a partition key called book ID, and we're going to have a sort key of rating.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So again, just like a lot of the examples we've already done, this is going to be a database full of books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we want to create a local secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have to do that when we are creating the table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So under Table settings we're going to go to Customize Settings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to just scroll down here until we get to secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we are going to create a local index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here you can see I've filled out the settings for this local secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go through these quickly for the sort key I've chosen rating.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to have books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to have ratings associated with each of those books.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then you can see here under attribute projections I've chosen to include Certain attribute projections, specifically the reviewer name and the reviewer text.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So a projection in a secondary index is going to define attributes from our main table that are going to be copied into that index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So when you create a secondary index, you can project additional attributes from the table into that index, so that queries on the index can return all of the data you need without actually having to read from the main table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now we're done creating our secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm just going to click Create Index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 28:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: And then we're going to set up the rest of our configurations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For the table itself we're going to go with provisioned.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: We're going to turn off auto scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to keep this one eligible for the free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So our read and write capacity units are going to be two each.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to scroll all the way to the end and just click Create Table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now I've created a table with a local secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And once the table is actually finished I'm going to have to add some items to the table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it looks like my table is ready.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to click on Books Demo and I'm going to explore table items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to create a new item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so here you can see I've filled out all of the details for my new item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: The partition key is B101.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's book 101.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I have given it a rating value, a review ID, a reviewer name, and a review text.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to create this item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to take a moment to go ahead and add some more items to this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so here you can see I've added another review for book 101 with a rating of four.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I've incremented the review ID by one, and I've gone ahead and filled out the rest of the attributes here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's create that item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to create a couple reviews for another book as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here I've created a new book ID B102 with a rating and a name and a review text.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so I'm going to create that item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then I'm just going to create one more item again for book 102.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now I've got a second review R2 for book 102.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I filled out everything for that one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to go ahead and create that item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now if we look at our table here, we've got two books, each of which have two ratings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I've got my reviewer names, I've got my review IDs and I've got my review text.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I've got enough reviews here to work with this and to start doing some queries.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's go over here to the left.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to click on tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to click on our books demo table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to go to indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here you can see my local secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now that we've confirmed our local secondary index is there let's go back to our books demo again here.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's go to explore table items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we are going to perform a query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to hide this little menu here so we can see this a little bit better.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now it's saying select a table or index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well I want to perform this query using the secondary index that I created.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 72:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So I'm going to choose Rating Index here.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to perform the query using that rating index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so I want to perform a query on book 102 for example.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 75:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So that's going to be my partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And for the sort key condition I'm going to say I want a rating that is greater than or equal to three.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so let's try to run this query and see what we come up with.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now for book 102 that should be all of the ratings.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So actually let's make it greater than or equal to four so that it only returns one result.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There we go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We can see the results of the query are basically instant.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It shows us the one rating that has that five star review.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's play with our query just a little bit more.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I've said for the sort key, I want any ratings that are greater than or equal to the number two.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I've also said though that the reviewer name attribute must be equal to Dennis.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I run this query, it should only show me reviews by Dennis.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Access-pattern design signal.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If I change that value to Charlie, for example, let's run the query again.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 88:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now it's going to show me reviews that are specific to Charlie.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 89:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now that we've played around with our local secondary index, let's go back to the Dynamo DB dashboard.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 90:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at our tables one more time here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 91:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go back to books Demo and let's go to indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 92:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we are now going to create a global secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 93:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to collapse this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 94:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll click Create Index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 95:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And you can see here I'm using an entirely new partition key that's going to be genre.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 96:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the data type is going to be a string.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 97:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm using a brand new sort key based on publisher, and that's going to be a number.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 98:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as you can see here, the global secondary index itself has read and write capacity units.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 99:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I can just copy those settings from the base table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 100:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or I can specifically provision read and write capacity units here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 101:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's got its own separate set of read and write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 102:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then finally attribute projections.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 103:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: What attributes do I want to project into this global secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 104:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: I'm going to choose a couple here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 105:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: I'm going to choose book title and author.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 106:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'll scroll to the end and hit Create Index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 107:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now I've created a global secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 108:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's click Explore Table Items here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 109:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm just going to reset this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 110:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to turn off my queries, and I'm just going to scan everything here so that I can see all of the items in my table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 111:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're going to make a couple quick changes here to the items that we already have.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 112:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for book 102 I'm going to add some new attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 113:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to add an attribute of book title.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 114:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there's some other additional attributes I added.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 115:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So every one of these books in my table is now going to have a title, an author, a genre, and a publish year.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 116:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the publisher is going to be a number and not a string.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 117:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I've now modified B102.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 118:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Item B102 here I'm going to save and close.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 119:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can see here that this particular item has all of this information in it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 120:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So I'm just going to go ahead and do the same thing for all of the other items in my table here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 121:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I finished updating all of my items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 122:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now they all have authors and book titles and genres and publish years associated with them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 123:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's go back to my little DynamoDB menu here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 124:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go to tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 125:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go to books demo.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 126:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's go to indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 127:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here you can see my global secondary index was created.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 128:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So we're going to choose Explore Table Items again.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 129:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to perform yet another query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 130:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This time we are going to use our global secondary index to perform the query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 131:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And so for partition key we're going to use the genre which in this case is going to be sci fi for example.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 132:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so for the sort key condition here for publish year, I'm going to put in 2020.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 133:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so now when I run this query it should show me all of the sci fi books that were published in the year 2020.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 134:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And actually, it didn't show me any.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 135:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Let's try the year 2022 and run the same query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 136:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there we go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 137:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All of our sci fi books from the year 2022.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 138:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now we are able to complete these queries based on something that has absolutely nothing to do with the actual partition key of the DynamoDB table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 139:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now that we're all done playing around with our indexes here, the final thing I'm going to do is go back to tables.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 140:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to go to books demo.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 141:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I'm actually just going to go ahead and delete this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 142:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: Um, and it's going to give you the option to create a backup here.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 143:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I don't want to do that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 144:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to click confirm, I'm going to hit delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 145:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's going to delete the table in its entirety.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 146:
- Concepts: Database Operations and Resilience, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Um, so I didn't choose to create a backup of my table.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 147:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 148:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Rephrase.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 149:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And by the way you can always select one of these tables here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 150:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And you can choose to enable deletion protection to prevent a table from being accidentally deleted or, or if you want to control using IAM who has the ability to delete this table, that's something you can also do.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 151:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 152:
- Concepts: NoSQL Access Patterns
- Services: AWS Config, Amazon DynamoDB
- Key Insights: So in this lesson we saw how to configure secondary indexes for our DynamoDB table and how to query the contents of those tables using secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

### File: outputs/AWS/AWS Storage and DB/awsdatabase/04_DynamoDB/045_Bonus Lecture.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you enjoyed this course, and I just want to take a moment to show you how to get discounts on all of my other courses.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: Amazon EBS
- Key Insights: On your screen you'll see a link to the website shown here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: Amazon EBS
- Key Insights: I update this website every month so that you can always have access to discounted prices on all of my courses.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So all of my courses are listed here, all of my courses, all of my VMware courses, and all of the other courses as well that are available for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: To me, they're all available here at a deep discount.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So use this link if you want to purchase any of my other courses to get the lowest possible price.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/312_DynamoDB - Section Introduction.txt

Line 1:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: So we know how to do distributed computing and scalable using AWS Lambda.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But where do we store our information where do we store our data?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It'd be great if we had a serverless database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Well look no further that database is going to be DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: DynamoDB is awesome.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's a database that is managed by AWS and it will scale for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: It is really well integrated with AWS Lambda and other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In this section, We're going to dedicate a lot of time to learn how to properly design your DynamoDB tables, how to enable streams and make sure your DynamoDB tables are going to be fully secured.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you're excited.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's get started.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/313_DynamoDB Overview.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now let's have a look at DynamoDB which is a NoSQL serverless database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: Amazon EC2, Auto Scaling, Elastic Load Balancing
- Key Insights: So if you consider the traditional architecture that we've seen in and out in this course, we have clients and they connect to an application layer that could be made of an elastic load balancer, and EC2 instances that are grouped, and scaling with an auto scaling group.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: And then the data has to be sourced somewhere, so we have a database layer, and it could be using Amazon RDS, which is backed by MySQL, or PostgreSQL, or these kind of technologies.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now these traditional applications will leverage RDBMS databases, and we do so because we have this SQL query language.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's really good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we can define strong requirements about how data should be modeled because we have tables, we have schema, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Database Operational Context
- Services: Amazon Lex
- Key Insights: We can do joints, aggregations, complex computations, and that's all very good and working.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: What we get out of it though in case of scaling is mostly vertical scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So in case you want a better database, and I'm talking just about a database layer right now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you want to scale it vertically, you need to replace database and get a more powerful CPU, more Ram, or better disc with IO.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can do some sort of our horizontal scaling but this is by only increasing the read capability.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Relational Consistency and HA
- Services: Amazon EC2, Amazon RDS
- Key Insights: So either by adding EC2 instances at the application layer, or by adding RDS Read Replicas at the database layers.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 13:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: But if you add Read Replicas, you're going to be limited by the number of replicas you can have, and therefore limited into your horizontal read scaling, and not talking about the horizontal right scaling because you don't have that with RDS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Consistency and failover signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So introducing to you NoSQL databases, which means not only SQL or non SQL databases, depending on the definition.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that there are non-relational databases and they're going to be distributed, which gives us some horizontal scalability.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And some very famous technologies that have NoSQL databases are MongoDB, and of course, DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now these databases do not support query joints or have very limited support.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so, for simplicity, just assume that they don't have query joins.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now all the data that is needed therefore must be present in one row in your database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And again, to simplify things, I know they're evolving, but let's just assume that NoSQL databases also do not perform aggregation computations such as the SUM, or the AVG, and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But the good thing out of it is that thanks to the design, the NoSQL databases will scale horizontally.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That means that if you need more right or read capacity, you can behind the scenes have more instances and it will scale really well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So there is no right or wrong for NoSQL vs SQL, it just depends on how you think about your modeling of data, about your application, about your user queries, and about your scaling needs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's talk about DynamoDB now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB is a fully managed NoSQL database, and it's highly available, and has replications across multiple AZs out of the box.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's a NoSQL database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's not a relational database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So it's different than RDS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: It scales to massive workload and it's fully distributed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: That means that you can scale to millions of requests per second, trillions of row, and hundreds of terabytes of storage, regardless of your workload.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So fast and consistent performance.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that means you get really low latency on retrieval.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 33:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: And it's a service, so it's going to be fully integrated with IAM for security, authorization, and administration.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 34:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: You can enable event-driven programming with DynamoDB Streams as we'll see in this section.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: It's low cost and has auto scaling capability.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you have the standard and Infrequent Access IA table class for different storage tiers.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's have a look at the basics of DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB is made out of tables and each table will have a primary key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we'll see what the primary key can be in the next slides.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You must decide what the primary key is before you create your table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, each table can have an infinite number of rows, also called items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I will use a rows and items term interchangeably in this course, and each item will have attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now these attributes could be similar to the columns in your table, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But these attributes can also be nested.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's a bit more powerful than columns, and they can be added over time, you don't need to define them all at creation time of your table, and some of them can be null. so it's completely fine for an attribute to be missing in some data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, and each item, or each row will have up to 400 kilobytes of data, so it's a limitation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And data types supported are going to be scalar types, or string, number, binary, boolean, and null.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Specialized Data Models
- Services: (none explicit)
- Key Insights: There's going to be document types such as list and maps, so it gives you some kind of nesting capability.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And sets types such as string sets, number sets, and binary sets.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: Now a very important point to understand is how to choose a primary key for DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the exam will definitely test you on the knowledge of this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you have two options for primary keys.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And the first one is called a partition key which called also a hash strategy.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 54:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So the partition key in this case must be unique for each item which is very similar to a normal database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And therefore, the partition must be diverse enough, so that your data is going to be distributed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 56:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: For example, if you consider user_ID for user's table, then we can have the partition key as being User_ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The attribute is being First-Name, Last_Name, and age.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then you have your first User-ID with some attributes being filled out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Your second User_ID as you can see, does not have a last name, but this is fine in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And the third partition key, yet to again has three attributes attached to it.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 61:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So this is what DynamoDB looks like.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It looks like a database for now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's pretty easy.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: But you could have a second option of partition key and sort key, also called hash plus range.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now the combination of these two items must be unique for each item.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 66:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So the data is going to be grouped by partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 67:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And this is why it's very important to choose a good partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 68:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So if you consider a users-game table, then User_ID for the partition key and Game_ID for the sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Let's see what that means.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That means that users can attend multiple games.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So we have these four columns attributes, but the first one is going to be our partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We want data to be grouped by User_ID, and the second one is going to be a sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: This is going to give us the uniqueness of the combination of partition key and sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So both of them are going to be making the primary key and the rest are going to be attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you consider a User_ID, then it has a sort key which was on the Game_ID, and then we attribute score 92, result win.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Again, another different User_ID, and another different Game_ID, so this works as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You have a lose game with a score of 14.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: And more interestingly, in this third row, what we have is that we have the same partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 79:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: So row two and three have the same and partition key but a different sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Of course, it is fine for a user to attend multiple games.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: And so therefore, you want the combination of User_ID and Game_ID to be unique, obviously, but it's fine to also have the same partition key in different sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 82:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And this is why it's super important to choose a really good partition key, so data is going to be distributed enough.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here is an exercise, and this is what the exam may test you on as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So you're building a movie database, and you want to choose what is the best partition key that is going to maximize data distribution.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 85:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Is it movie_id?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Is it producer_name?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Is it leader_actor_name or is it movie_language?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 88:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Well, think about it for a second, what if you choose the first one, you choose the second one, and so on?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 89:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Now the answer is you choose movie_id, because movie_id is going to be unique for each row.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 90:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And therefore it's a really good candidates to partition your table by.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 91:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: If you have a movie language as a, sorry, a partition key, then you won't have as many values as you want, and maybe most of your movies are going to be towards English.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 92:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So it's not gonna be a great choice because there's not enough diversity, and there's a skew of data towards one specific value.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 93:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And so the exam will ask you to choose the best partition key for some tables based on what it means.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 94:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So always choose the one with the highest cardinality and the one that can take on the most amount of values.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 95:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So that's it for a short overview of DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 96:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: We have a long section on it, but let's go over the hands-on to practice a little bit using DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/314_DynamoDB Basics - Hands On.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's have a look at the DynamoDB service.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And DynamoDB service is going to allow us to create tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: As you can see, we can create tables, not databases because while the database is already created for us and this is a serverless offering.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we just go ahead and create tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So the table name has to have a name, so we'll enter "Users." And then we have to define a partition key and optionally a sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So for partition key, I'll use "user_ID" and then we can change and type, so it could be binary, number or string, but I will leave it as string.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we can use a sort key but I will show you this later on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So currently we'll leave it empty.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now the quick start allows you to start with a default settings and it sets some settings for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Or you can go ahead and customize the settings but because we are learning about DynamoDB, let's go ahead and learn about custom settings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the first thing is around table class.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: So it's either the DynamoDB standard which is a general purpose table class which is recommended for most use cases.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But if you have data that's going to be sitting around for a long time and you're not going to have a lot of reads or writes, then DynamoDB standard IA is going to say that the data is infrequently accessed and give you some cost optimizations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But right now we'll use a default which is DynamoDB standard.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Capacity calculator, we'll see this later on because we have to understand how to compute capacity in DynamoDB, but for now we don't do anything in here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then two modes for read and write capacity on demand or provisioned, and provisioned is within the free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Again, we'll have a long discussion around these modes later on, but we'll use provision because it is within the free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: Next, we have to set up the read and the write capacity and I'm going to disable auto scaling for both.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we just provision a fixed read and write capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we have two capacity units within the free tier, so I'm going to set up, we have 10, sorry within the free tier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to set up two provision capacity units for reads and two for writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we'll see how we make them evolve over time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're now going to create a secondary index for now because this is something that's going to be advanced later on this course.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here we get the estimated cost for this table which is $1.32 per month.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now because we are within the free tier, you can disregard this number, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you are not within the free tier this would be how much this table would cost you per month.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Then we will encrypt the data at rest using the DynamoDB key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll leave it like this, but we have other options.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And when you're ready, you click on create table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my table has now been created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I can click on it, and I will remove the left panel, and as we can see we get a lot of the information around our table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So around the settings for our table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So which one is the partition key, the sort key, the capacity mode, and there's some replication, date created and so on.
- Hidden/Implicit Meaning: Consistency and failover signal; Access-pattern design signal.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So a lot of information, and for us, the important things is going to be around the items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I scroll down, there is View Items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or if I go on the right hand side, there's also View Items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, as we can see, I can scan or query my table, but what I'm going to do is just create an item.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 38:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So in this create item, I can choose a user ID and we need to define the partition keys.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, John123.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is just a user ID, random one, we can enter whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we can add attributes for John123.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can add the strength for example and the strength is going to be "first_name", and the value is going to be well, John.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then if we have a string and it's "last_name", then we can have Doe, John Doe.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we could add many attributes as we wanted of these types.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go, we're going to just create an item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Specialized Data Models
- Services: (none explicit)
- Key Insights: And as we can see, this could be either through a form or through adjacent document.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we'll just keep it as a form and create this item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now this item, John Doe, is appearing in my table as we can see, we have user ID, first name and last name.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So what we can do is to start adding a second item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's create a second item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: And if I keep John123 as my value, and then I will just say Johnny as my first name, for example just to show you something, if I do so and click on create item, I'm going to have a problem because well, I'm using the same user ID as before and it has to be unique when I have just a partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this does not work.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so what I can do instead is I can create Alice456 and the first name is going to be Alice.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We don't know her last name so we're not going to specify her last name but we know her age and her age is 41.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if I try to create this item something very interesting will happen.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the request was successful.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So in a RDS SQL database, you would've had a problem saying the column was not defined, some values are null, whatever, but here we're able to get John to have a first name and a last name and Alice to just have an age and a first name.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So in DynamoDB, it is completely fine for you to add attributes over time, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The only thing that has to be non-null is the user ID, but as we can see, things gets null by default.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So John has a null age and Alice has a null last name, but this is fine.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So this is the power of DynamoDB, also a risk but also the power.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can add attributes over time without impacting your previous data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is completely fine, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: You cannot define in DynamoDB a constraint of this column that's not been null, it just doesn't exist, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we have our first table being created but it's super easy to keep on creating tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So I go back to DynamoDB and click on "create table" we can create a second table called "UsersPosts," okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or "UserPosts." Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now the partition key is going to be yet again user ID, but now we're going to have a sort key which is post TS for timestamp, again, of type string, binary, or number.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And what we want to create here is we create a table of data, which will have the post of the users.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so again we're going to customize the settings and we're going to use provisions, we'll just use "off," and we're gonna have it two and two, and then scroll down and create this second table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So as we can see now I have two tables in my database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 72:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And again, no need to say what's happening to the table, what's the underlying database, it's really, you can create as many tables as you want within your quote unquote DynamoDB database which is done at the region level.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So now let's go into UserPosts, and now we can see that there's a partition key and a sort key being defined.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I go to view items and then I'm going to create an item, now we need to specify a user ID, for example John123 and a post timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, 2021,10, 09.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then you ensure that that's the correct timestamp but let's hope it is.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: TS, and then a time, so 123409Z.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So next we need to add some content for our post.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I will say content and say, "Hello world, this is my first blog." Okay, excellent.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's create this item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, now we have user ID John and post timestamped this and some contents.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now what happens if we create a second item where we can keep John123 as my user ID and for the post time stamp I'm going to just have 2021, maybe something a bit later.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So 11, 04T and then again, just a random timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to add a new content and say, "Second post yay!" Okay, and create this item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, this has worked.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 88:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So even though we have the same user ID, because the post timestamp was different, we were able to enter this data into my table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 89:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the uniqueness has to be on user ID and post timestamp as a combination.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 90:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so that means that the data is partitioned by user ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 91:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this was, this is why John is clickable because we can query and search for John123 as my user ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 92:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we can sort the data by post timestamp, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 93:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's called a sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 94:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is very, very, very handy.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 95:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, if we wanted to create one last item and this was for Alice456, again you will need to enter a post timestamp and some content and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 96:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And so this is why it's super important to choose a really good partition key in these kind of moments, because if you choose a partition key that keeps on coming back, so if John123 is the only user that posts and you have 10,000 posts then the data is going to be heavily skewed toward John123.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 97:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So there's something to be aware of, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 98:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 99:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 100:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/315_DynamoDB WCU & RCU - Throughput.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so now let's talk about read and write capacity modes for DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is how you control your table's capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So you have to specify in advance the read and write throughput.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you have two modes actually.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The first one is called provisioned mode, in which we specify the read and writes per second, so also called read capacity unit and write capacity unit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you need to plan your capacity beforehand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You're going to pay for whatever is going to be provisioned.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you say I want 10 read capacity units and five write capacity units, you're going to pay for that every hour.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you have the option to do auto-scaling as we'll see very soon.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There is the second mode called the on-demand mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And this one will automatically have the reads and the writes scale up and down based on your workloads.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there's no capacity planning needed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you don't need to provision capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: They will just be there.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you're going to pay exactly for what you use.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But it's going to be a lot more expensive than provisioned mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So the idea is that you have different use cases, and we'll see them in this lecture in details.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you can switch between the two modes, provisioned and on-demand, once every 24 hours.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to do a deep dive on both of them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So do not worry right now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's just an introduction.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But now let's do a long deep dive on provisioned read capacity mode.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So you must provision read and write capacity units, also called RCU, which is the throughput for reads, and WCU, which is the throughput for writes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Operational database guardrail signal.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now, you have the option to set up auto-scaling of throughput to meet demand.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So don't you think too hard about your RCU and your WCU value.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: You just say what's your target capacity usage, and DynamoDB will scale those for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, in case you go over the RCU and over the WCU because you are consuming more or writing more than what you provisioned, it's completely fine because you can tap into, temporarily, what's called a burst capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: But if you exhaust the burst capacity because it's been fully consumed, then you're going to get an exception called the ProvisionedThroughputExceededException, which is very obvious about what it is.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then in case you get these things, you need to obviously retry.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the strategy to retry your write or your read is called the exponential backoff retry strategy.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at WCU in detail.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the exam will ask you to perform some computations, and so therefore, you need to understand the formulas to compute WCU and RCU.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So one write capacity unit, WCU, will represent one write per second for an item of up to 1 kilobyte in size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if your item is obviously larger than 1 kilobyte, then you're going to consume more WCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go through examples to understand the computation.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can pause this video if you wanted to do the computation on your own.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you write 10 items per second, and the item size is on average 2 kilobytes, how many WCUs do you need?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, we do the math.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We need 10 W, 10 items per second, so 10 times, and then the item size is 2 kilobytes, which we divide by 1 kilobyte, which is the number of WCU you need for 1 kilobyte.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you get a result of 20 WCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this was a very easy example.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, in Example 2, we write 6 items per second, and this time the item size is 4.5 kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's a little bit trickier, this one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we need 6 times 5 divide 1, which is 30 RCU.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Well, because the 4.5 kilobytes is always going to be rounded to the upper kilobyte by DynamoDB to get an idea of how many WCUs you've consumed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So remember you need to round to the upper kilobyte for WCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if you write 120 items per minute, and the item size is 2 kilobytes, the trick here is that we have items per minute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you need to do a small computation, which is 120 divided by 60 to get items per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then this gives us 4 WCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so write capacity units are very basic and honestly very easy to understand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The more complicated ones are going to be around read.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So first we need to define two kind of read modes for DynamoDB, which is the strongly consistent read and the eventually consistent read.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if you consider DynamoDB, it's a serverless database, of course, but behind the scenes, there are servers.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You just don't see them or manage them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we have servers, and let's just consider three servers right now to make it very, very simple, but it's obviously a lot more.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And your data is going to be distributed and replicated across all these servers.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if you consider your application, your application is going to do writes to one of these servers.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And internally, DynamoDB is going to replicate these rights across different servers, such as Server 2 and Server 3.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 60:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now, when your application reads from DynamoDB, there is a chance that you're going to read not from Server 1 but from Server 2.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, two things can happen, right?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If we are in eventually consistent read, which is the default mode, then if we do a read just after a write, it's possible that we'll get stale data because the replication has not happened yet if we're very, very quick.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But after, say, 100 milliseconds, you're good to go, obviously.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you do a strongly consistent read, you're saying, hey, I want to read the data just after the write.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you're going to get, for sure, the correct data that was just written.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For this, we need to set a parameter called ConsistentRead in our API to True.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: And it could be applied to GetItem, BatchGetItem, Query, and Scan.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And why we wouldn't we do this all the time?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Why wouldn't we want to have strongly consistent reads all the time?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, it's going to consume twice the RCU.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be a more expensive query and also may have a slightly higher latency.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you need to ask yourself, do I need eventually consistent reads, or do I need strongly consistent reads?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about RCU regarding these two things.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: One, read capacity unit, RCU, represents one strongly consistent read per second, or two eventually consistent reads per second for an item of up to 4 kilobytes in size, which makes the computations a little bit trickier.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if your items are larger than 4 kilobytes, more RCUs are going to be consumed and again is going to be rounded up to the nearest upper 4 kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go through examples again, and feel free to pause the video.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you have 10 strongly consistent reads per second, and the item size is 4 kilobytes, how many RCUs do you need?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll need 10 times 4 kilobytes divided by 4, which is goal to 10 RCUs, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have 16 eventually consistent reads per second, and the item size is 12 kilobytes, so this is a bit more complicated, this one, we're going to get 16 divided by 2 times 12 divided by 4, which is 24 RCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So in this example, obviously, we need to divide 16 by 2 because we don't need, because we have two eventually consistent reads per second in one RCU, and then we divide 12 by 4, which gives us 24 RCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And last example, which is 10 strongly consistent reads per second with an item size of 6 kilobytes, okay, so this one is a little bit trickier, so what is it?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, it's 10 times 8 divided by 4.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And why 8?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well. we round up 6 kilobytes to the nearest 4 kilobytes, so it's going to be 8 kilobytes, and you have to always go up, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 85:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And in this case, we get 10 times 8 divided by 4, which is 2, so 20 RCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now that we know about WCUs and RCUs, let's talk about how DynamoDB works in the backend with partitions.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 87:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB is made of tables, and each table has partitions.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 88:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And partitions are just copies of your data that live on specific servers.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 89:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now, when your application does writes into DynamoDB, what's going to happen is that your application will send a partition key, a sort key maybe, and some attributes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 90:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And all this data is going to go through a hashing algorithm.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 91:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So only the partition key actually is going to go through a hashing algorithm to understand which partition to go to.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 92:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if we take the partition key of ID_13, it's going to go through this internal hash function of DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 93:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's going to say, hey, anytime I see ID_13, this is going to go into Partition 1.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 94:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if you have ID_45 in the second row, then ID_45 is going to go through the hash function, and the hash function will say, hey, this ID_45 should go to Partition 2.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 95:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is how your data gets distributed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 96:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So obviously, if you have what's called a hot partition, the data is always going to be a hot key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 97:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: The data is always going to be into the same partition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 98:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So to compute the number of partitions, there are some intense formulas that you do not need to know for the exam.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 99:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go over them very quickly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 100:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But you compute the number of partitions by dividing the RCUs by 3,000 and WCU by 1,000 and adding those up.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 101:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can also have a look at how much data you have, so total size of your data set divided by 10 gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 102:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then the number of partition is going to be the max of these two things.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 103:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, you don't need to know this formula, so do not worry about it at all, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 104:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But what you need to understand, though, is that if you have 10 partitions, and you provide, you new provision 10 WCUs and 10 RCUs, then they're going to be spread evenly across partitions.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 105:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That means that each partition is going to get one WCU and one RCU.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 106:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is the point I want you to remember, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 107:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: WCUs and RCUs are going to be divided and spread evenly across partitions, which brings us to throttling.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 108:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So in case you exceed the RCUs or WCUs, and this is at the partition level, then you're going to get a ProvisionedThroughputExceededException.
- Hidden/Implicit Meaning: Access-pattern design signal; Operational database guardrail signal.

Line 109:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So maybe because you have a hot key, so one partition key is being read too many times from a specific partition, which is because maybe you have a popular item, or hot partitions or very large items, because obviously, when WCU and RCU is computed, it depends on the item size.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 110:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so if you read or write a very large item, you're going to consume a lot of RCU or WCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 111:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now, solutions for attacking this ProvisionedThroughputExceededException, is, number one, to do exponential backoff when the exception is encountered, which is, if you're using the SDK, something that's already included.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 112:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: You have to distribute the partition keys as much as possible, which was the exercise we did in the first lecture to understand how we can choose a really good partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 113:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And if this is an RCU issue, because you're reading one data point and one partition very, very heavily, then we'll have a look at the feature called DynamoDB Accelerator, or DAX.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 114:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Now, the last mode we need to understand, and this is a much easier mode to understand, is the on-demand read/write capacity mode, which is going to automatically accept any reads and writes, and is going to scale up and down based on your workload.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 115:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So there's no capacity planning needed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 116:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You do not specify the RCU or the WCU.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 117:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's unlimited.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 118:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's no throttling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 119:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But obviously, this is more expensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 120:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you're going to charge for the actual reads and writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 121:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This one is called read request units, so RRUs, and write request units, which is WRUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 122:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: The computations are the same, but the idea is that, because we have every request that succeeds, it's not a capacity we talk about.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 123:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's just on the request.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 124:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now to give you some overview, on-demand is about 2.5x more expensive than provisioned capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 125:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So make sure that you have it only for specific kind of use cases, for example, unknown workloads or when it's unpredictable application traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 126:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So that's it for capacity modes in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 127:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/316_DynamoDB WCU & RCU - Hands On.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how we can define the RCU and WCU of our tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we take our User's table, for example, and you go on the right hand side and you do Additional settings, you have the Read/Write capacity and you can edit it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is what we had defined at table creation time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But the cool thing about DynamoDB is that we can switch between the capacity modes if we needed to and then we can also change them over time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take the most simple capacity mode right now, which is On-demand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is simplified billing for paying for the actual reads and writes of your application.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But this is twice or three times as more as expensive as provisioned.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And so obviously this is when you have a very unusual, unpredictable type of workload, or maybe this is like in your development environments, and let's consider that you're not using the table at all for like 24 hours a day, but maybe one day for one hour, you'll be using the table a lot.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so therefore this is a great capacity mode because it actually builds you for what you've been using, which is quite amazing.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now there's Provisioned capacity mode, and this is the one we spent most of the time on to understand and to compute the Reads and Writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so let's go into the capacity calculator.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So as we can see here, you can specify the average item size, for example, six kilobytes, how many reads per second you want, so maybe three reads per second and two writes per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The type of reads you want to have so eventually consistent and strongly consistent, there is transactional, but I will define this a bit later on.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I didn't want to overwhelm you right now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So eventually or strongly consistent, and then for the write consistency same standard or transactional, but again, traditional, we'll see it a little bit later.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 16:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And as we can see, based on what I choose, it gives me the RCU and the WCU as well as the estimated cost I will have for my table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is quite a handy calculator, and I would suggest that you practice a little bit with these settings and you try to guess correctly what's the RCU and WCU for this table, because this is something that the exam will ask you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Cool.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, let's take a look at the table capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: So we can obviously have Off Auto scaling and Off Auto scaling for read and write and so therefore you need to Provision capacity units and they won't change over time unless you manually change them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: But you can also set up Auto scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: And Auto scaling is really cool because we're just saying what's my min and my maximum limit to consider?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And what's my target utilization as a percentage?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And DynamoDB will try, for example, if we have a maximum capacity of 100, it will set it to 100 the WCU if you're actually consuming on average 70 WCUs and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: But if you're consuming, say seven WCUs, then automatically the Auto scaling will kick in and the desired capacity units will be 10 for that table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: So Auto scaling is nice because you don't have to think too hard about setting the WCU and RCU.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: You just need you to think about what's my min, what's my max, and what's my target utilization and your application and then DynamoDB will do the rest, which is nice to have a better pricing and a better scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: Okay, so this is applying to both Auto scaling for Reads and for Writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then you would get the estimated cost and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: So if I set it to Auto scaling max three and min one, and then again, max three and min one, and click on save changes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: Now, what I'm going to do is just to wait a little bit of time for Auto scaling to kick in and to see the auto scaling activities.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, the Provisioned was two and two for WCUs and RCUs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: But we had 1, 2, 3 in terms of range for Auto scaling and I refresh Auto scaling activities.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as we can see for this table, the Setting Read capacity and was set to one and Write capacity was set to one because I'm not using a table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so auto is getting kicked in and it worked.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, if I refresh this page and remove this here, as we can see now, the RCU and WCUs are one and one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'll just going, it's quite cool.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon EC2
- Key Insights: It works just like EC2, but for DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/317_DynamoDB - Basic Operations.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In the exam you will see the IPI calls of the DynamoDB referred by their name.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's good for us to see them once.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you want to write data, you have a few options.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: You have PutItem, and when you do a PutItem, it creates or fully replaces a new item that has the same Primary Key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It will consume write capacity units.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is that you wanna do a full replace or writing a new item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The second one is UpdateItem, which is a bit different than PutItem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This one will edit the existing items, attributes, or we'll add a new item if it does not exist.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But the idea is that with UpdateItem, we only edit a few attributes, not every other attribute.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is the difference between PutItem and UpdateItem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can use it with Atomic Counters that we'll see in this section as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then you have Conditional Writes, which is to accept a write/update/ delete only if a condition is met.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is helping with concurrent access to items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we'll see this as well in this section.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: To read data, we have a GetItem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And GetItem is very simple and easy to understand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You read based on the Primary Key and the Primary Key again, can be a HASH or a HASH+Range, so you have the two options.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you get two modes to read from.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you have the Eventually Consistent Read Mode or to have Strongly Consistent Read Modes, but you need to specify it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It will take more RCU and then maybe a little bit more latency.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can also specify a Projected Expression in your API.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And this Projection Expression is going to help you receive only a few attributes out of the DynamoDB.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Next we have the query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And the query is to return items based on a Key Condition Expression, which is a Partition Key, so it must be the equal operator.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you're saying, Hey, I want to query for John 123, and also optionally a Sort Key, and because you can sort, then you can have equal, less than, over than, begins, between and so on.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then you can specify a FilterExpression.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is to add additional filtering after the query operation has been done, but before the data is returned to you.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is to use with non-key attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, you cannot use a FilterExpression with HASH or RANGE attributes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And what the query returns is going to be a list of items, obviously.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you have a limit of how many items you retrieve based on the limit query parameter.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And either you're going to reach that limit of never items or you're going to get up to one Megabyte of data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you want to get, obviously, more data of your time, you can do pagination on the results, and ask for more and more and more.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now you can query a table, or a Local Secondary Index or a Global Secondary Indexes, and we'll see those in the next lectures as well.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 35:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And finally, you have a Scan, so GetItem was for one item, then the query was for a specific Partition Key and a Sort Key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And Scan items is to read an entire table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then if you wanted to, you could filter it, the data, but this is only done on the client side, so this is very inefficient.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So Scan is to really export the entire table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And each Scan will return up to one megabyte of data, and if you want to keep on reading then you need to use pagination techniques.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that means page one, page two, page three, and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It will consume a lot of RCU because you are reading your entire table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, if you want to not impact your normal operations you need to impact the Scan using a limit statement or to reduce the size of the result, and then pause a little bit.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to, instead, consume a lot of RCUs and do a scan as fast as possible, then for faster performance, you would use a Parallel Scan.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: In this case, multiple workers that you define will scan multiple data segments at the same time, which will increase the throughput and RCU consumed.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And, if you wanted to still have a Parallel Scan and limit its impact, you could use limit queries, limit conditions, and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then scans can be used with ProjectionExpression and FilterExpression.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So ProjectionExpression to only retrieve certain attributes, and FilterExpression to change stuff server side.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 48:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now if you need to delete data out of DynamoDB, you have the DeleteItem, which is used to delete an individual item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then, you can also do a conditional delete, so delete this item only if money equals zero.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if you need to delete everything in your table, you have DeleteTable.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is to delete a whole table and its item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's much quicker than doing a scan and then deleting each every single item on the table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, DeleteTable, which will just drop everything.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to just delete everything, do not do a scan, just use the DeleteTable API.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: NoSQL Access Patterns
- Services: AWS Batch, Amazon DynamoDB
- Key Insights: Now for efficiency purposes, you can actually batch operations in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, you save in latency and you get an efficiency by reducing the number of API calls you do to the database.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 58:
- Concepts: NoSQL Access Patterns
- Services: AWS Batch, Amazon DynamoDB
- Key Insights: And all the operations as part of a batch, are going to be applied in parallel by DynamoDB for better efficiency.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: So, because you have a batch of operations though, part of the batch can fail.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: In that case you will receive the failed items back, and you can retry only these failed items.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 61:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: So in the right mechanism you have BatchWriteItem, and this allows you to perform up to 25 PutItem and/or DeleteItem in one call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: You have up to 16 megabytes of data written and still have the same limit of 400 kilobytes of data per item.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you cannot update item, you can only do PutItem or DeleteItem.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have items that were not able to be written for whatever reason, usually because of a lack of write capacity, then you will receive back something called UnprocessedItems, and then you can retry the items within the UnprocessedItems.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So two options to process them correctly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operations and Resilience
- Services: AWS Batch
- Key Insights: Either you use an exponential backup strategy to keep on trying with longer and longer time until it succeeds, or if you consistently get these UnprocessedItems and scaling issues, then of course, you need to add write capacity units to allow your batch operations to complete efficiently.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 67:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: For batch GetItem, you will return items from one or more tables, and you can receive up to 100 items and up to 16 megabytes of data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And all these items are going to be retrieved in parallel to minimize latency.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Again, if you are missing some items, it's because you may have some UnprocessedKeys because you have failed read operations because you don't have enough capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operations and Resilience
- Services: AWS SAM
- Key Insights: In which case, same idea, you use exponential backup to retry or you add read capacity units to increase your read capacity.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Also, we have PartiQL.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 72:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So we've seen that in DynamoDB we have specific API calls to do specific things, but sometimes all that you know, as a data engineer or whatever, as a developer, may be SQL.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so you can use SQL on DynamoDB by using PartiQL.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here you have a standard SQL query where you find the OrderID, and the Total from your Orders Table, and you have a filtering condition, and an ordering condition.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 75:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: And so, using PartiQL, you can do the exact same operations we saw before, which is to select, insert, update, and delete data in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But this time, instead of doing the DynamoDB specific APIs you can just use SQL.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And you can run your queries across multiple DynamoDB tables, but you cannot do joins okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can just do the select, insert, update, and delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Everything you can do with an API but then you use SQL for writing these calls.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So you run PartiQL queries from the Management Console or from the NoSQL Workbench for DynamoDB, or from DynamoDB APIs, or from the CLI, or from the SDK.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: And the goal of it is really not to add new capabilities to DynamoDB because you have the same capabilities, but it's just to use SQL to write these API calls against DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/318_DynamoDB Basic APIs - Hands On.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at these data API calls we can do.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, if I go on my table, as we can see right now, we're in the 'Scan' and we can select a table, and then we click on 'Run'.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, 'Scan' is going to scan the entire table and, obviously, going to return many items to us.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If we wanted to create an item, what we could do is specific user ID, so Alice, four, five, six.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then, we specify a timestamp, so let me just do this one very quickly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then, T zero five, zero six, and your zero.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, and then some contents for it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Alice blog, okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, let's create this item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, this was a put item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Why, because we have sent a new item into DynamoDB, and we specified user id post timestamp, and this was new, so it got created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you want to look at update item, what I can do is 'Actions' and then 'Edits'.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then, we'll just edit one specific attribute, so I did Alice blog edited, and click on save change and behind the scenes, this is going to do an updates item API call.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, we have seen updates.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at gets, so if I click on this one, for example, and I will go into the 'Item editor'.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, behind the scenes, by clicking on this row, on this item, I was able to retrieve the content of this item and so this was a get_item that was done.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: Now, we can do obviously batch actions, so we can do 'Actions' and then 'Delete Items', which should be a batch delete item.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: Okay, so batch writes and then batch deletes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: But, if you wanted to delete everything in the table, you could do 'Scan' and a batch delete, but this would not be very efficient.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The other way to do it would be to simply drop the table, and be done.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, finally, let's have a look at 'Scan' and 'Query'.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So, scan really gives you all the tables you have, and then you can apply a filter if you wanted it to, but this is done client side for this filter, so this will be filtered in your web browser, not in DynamoDB directly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or, you can do a query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And, a query is very helpful because we can specify a specific user ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For example, John, one, two, three, and then click on 'Run'.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And, this gives us all the items of John one, two, three.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But, also, we could have a query and specify a condition on the post timestamp, which is a sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can have equal to, less than equal to, greater than, between, and begins with.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, if you want to know all the posts after, say 2021-11, and click on 'Run', we will only get one return item.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But, then, if we do 21, 2021-09, we get two items back.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, the query here is only done on user ID and post timestamp.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We don't have to, we cannot query on the content or search from the content.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 35:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: We could filter on the content if we wanted to, afterwards, but this will be done client side.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So, this really shows you the power of using partition keys, such as a hash key and a sort key, okay?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 37:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So that's it, we've seen all the APIs of DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, let's just do a scan and retrieve all the data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/319_DynamoDB - Conditional Writes.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So I've mentioned this before, but let's do a little zoom in on the conditional rights of DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is for the write operations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: So we have PutItem, UpdateItem, DeleteItem, and BatchWriteItem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you can specify a Condition expression that's going to determine which items should be modified.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now you have several conditions possible.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll have a look at many of these in examples.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we have attributes_exists or attributes_not_exists, attribute_type, so this is to check whether or not an attribute_exists doesn't exist and is of the correct type, contains and begins_with, this is for string comparison.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we have the IN keyword to check different values.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For example, for product category to be in two different categories.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And Price we have between :low and :high.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But we can also, for example, do price over or price less than specific values.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And finally if we want to check for string length, we have the size attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so you have seen Filter Expressions and you've seen Condition Expressions.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So Filter Expressions filter the results of a read query.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So Filter Expressions are related to read queries, whereas Condition Expressions are only for rights operations and they tell DynamoDB which rights should succeed or not.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's do an example, for example, an Update Item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here we update an item on the table product catalog and we say that we want to set the price to be equal to the current price minus discounts only if the price is over to a specific limit.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's our condition expression.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now to fill in what is the discount and what is the limit?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We pass in the file://values.json which has the discount to be a number of 150 and the limit to be a number of 500.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So that means that if we have this item in our DynamoDB table with a key 4, 5, 6 if we apply this Update Item command is going to be transformed to be now having a price of 500.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's because indeed before the price was strictly over the limit of 500 because 650 is greater than 500.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: But if we apply yet again the same command now it's not going to succeed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The price will never go below 500 because, well, the condition expression would evaluate to being false.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, condition expressions vary whether or not the item has the value over 500 or not and they will determine whether or not the item will be updated.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we have Delete Item if we can check for example, the attribute_not_exists.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this only succeeds if the attribute doesn't exist yet when there's no value.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: For example, we're saying hey, delete an item or delete many items if you have a batch right item we can do delete one item for our product catalog if the attribute price doesn't exist.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That makes sense.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If we have an item in our catalog but we don't have a price we may not be able to sell it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we may want to clean up our table and delete it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Alternatively, you have attribute_exists.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it is the opposite of attributes not exist.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here we can check if something exists.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: For example, if we have ProductReviews.Onestar that exists that means that our product review our product actually has one star and so we can delete it altogether from our DynamoDB table but we don't have it then don't do anything.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you can start seeing the usefulness of it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So there's a good use case for attribute_not_exists and attribute_exists.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So if we have attribute_not_exists and then we specify the partition key what's going to happen is that if the item is already in the database, then this condition will be evaluated false and then we don't overwrite the item.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if the item doesn't exist yet then we can write the item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So it's one way to make sure that we never overwrite existing data for this we do attribute_not_exists and then we specify the partition key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 41:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And in case we have the partition key and the sort key and we want to make sure to again never override something then you specify attributes_not_exists partition key and attributes_not_exists sort key and you're good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For other things, for example, to check on values, you can have a look at whether a product category is in different categories or if the price is between a low and a high price.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And again, we can pass in this values.json file we're specifying category 1 and category 2 as well as the low of 500 and the high of 600.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so when we apply Delete Item in case the item does belong to this range then we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But as we can see, for example, even though the products category Sporting Good is compliant with our condition, which is the first part of our condition, the price is 650, which is not between 500 and 600.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so the whole condition is false and the item will not be deleted in this case.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can also have a look at String Comparisons.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you have begins_with and contains.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here for example, we're saying, hey I want to make sure to delete items if it begins with http.:// So we won't, don't want to keep any insecure images in our product catalog.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's just some examples of course.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But what I want to remember out of it is that Condition Expressions help you create conditions that will tell that DynamoDB whether or not to apply your right operations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Alright, let's see for this lecture I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/320_DynamoDB Indexes (GSI + LSI).txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so now let's talk about indexes for DynamoDB, and you have two kinds of indexes that you need to know.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The first one is a local secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 3:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So LSI is going to give you an alternative sort key for your table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: So you have the same partition key from your base table, but you're going to get an additional sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this sort key consists of one scalar attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: It could be a string, a number or a binary, and you can get up to five LSIs per table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now LSIs must be defined at table creation time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you cannot create them after your tables being created.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you need to have some careful thinking into how you want your table to be designed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Next on your LSI you can have some or all attributes, you know, from your main table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So it's up to you to choose in your LSI.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you want to only have maybe one specific attribute, because this is what you're trying to query for.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we take an example of here, this is our table, which has user ID, game ID, game timestamp, score and results, okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And right now we can do queries on user ID and game ID, is very simply, but we can not do a query on a user ID and game timestamp.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For this, we need to do a scan and then do some service side and some client site filtering.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So to do so, if you wanted to do a query based on user ID and game timestamp.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 17:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: We would need to create an LSI and define the LSI on the attributes game timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if we do so, then we can do a query on, hey, give me all the games that have been done by this user between 2021 and 2020 and so on, okay.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: So this is super important for you to understand this is the same partition key as before, but we have a different sort key things to an LSI.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 20:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Next, we have GSI or global secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is going to give you a different, so an alternative primary key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So you could have a different hash key, a different partition key, or you can have a different hash key and sort key as well.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: From the base table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is helpful if you want it to speed up queries on things that are non-key attributes within your table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the index can cause this upscale attributes of strain number in binary.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And again, you can specify which attributes do you want to project on that index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And for that index though, it's very special because it's kind of like a different new table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And therefore for this index, you must provision the RCUs &amp; WCUs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 29:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now the GSI are powerful because they can be added or modified after the table has been created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take a very simple table in which we have user ID, game ID and game timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: With this table we're able to query based on user ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it gives me all the games of this user, but we cannot query on game ID as we can see right now, if you want to query on game ID, it would be extremely difficult when you do a scan and then filter client's site.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 33:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So instead we're going to create a GSI, a global secondary index, okay.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Which is going to give us the ability to query by game ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 35:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So now the partition key for the GSI becomes the game ID.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The sort key may be for example, game timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is what you want to query on.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the attributes become user ID because we've done a projection of the user ID attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So you can see in this one, we're creating some fully different new queries by defining a new partition key and a sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 40:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And this is why it's very important DynamoDB to understand how you're going to query data, to understand how you're going to make your local secondary indexes and your global secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 41:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So we seen LSI and GSI have very, very different purposes, but let's talk about these indexes and throttling.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 42:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So when you have a GSI, if the rights are threat load on the GSI, then the main table will be fertile as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is a very, very important caveat that comes up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So even if the WCUs are fine on the main table, if there are throttling on the GSI, then the main table, no matter what, we'll be throttling and therefore choose your GSI and partial key carefully and assign your WCU capacity very, very carefully.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Whereas for LSI, local secondary indexes, they will use the WCU and the RCU of the main table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there's no special throttling considerations to be had.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/321_DynamoDB Indexes (GSI + LSI) - Hands On.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how we can create indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So back into my tables, I'm going to create a new table, and I'll call this one demo_indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 3:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And we need to choose a Partition key, so let's choose user_id.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And a sort key, game_timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is allowing us to query on user_id and game_timestamp.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And for this I'm going to customize settings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm going to say I want Provisioned capacity of one RCU and one WCU grades.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here we can define our secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you can see, we can create either a local index or a global index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 10:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: Now local indexes can only be created at table creation time, whereas global indexes can be created afterwards.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can create a local index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here we need to specify a different Sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So as you can see, we do not have the option to specify a different Partition key, so user_id will remain the Partition key for this index, but we can specify a different Sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, let's say I want to create a local index and the Sort key's going to be called game_id.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now the Index name is game_id_index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then what attributes do we want to project onto this index?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Do we want All, Only the keys, or only Include specific attribute names that we specify.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we'll keep it simple and have it as All.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So we just created this index and we could go ahead and create a global secondary index in which we have the option to specify a different Partition key and optionally a different Sort key, as well as project some attributes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's just for now not create this global secondary index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We're just going to create a local index, okay?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then click on Create table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my table is now created and let's have a look at how we can query it right now.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I go into Query, as we can see, I can query either a table or an index and have two options.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I can query my demo_indexes, which is my table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I can specify a user_id and a game_timestamp, or I could query my index and specify a user_id and a game_id.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM
- Key Insights: So as we can see this local index allows me to query by a different Partition key, a different Sort key, excuse me, with the same Partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go back into the table details and let's go into the Indexes tab.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, there is one local secondary index that has been defined.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this one, and we cannot create another one.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So LSIs have to be defined at the table creation time and not afterwards, or as GSIs, so global secondary indexes, can be created afterwards.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 32:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So we could create an index and we could enter a completely different Partition key, for example, game_id, and a Sort key could be, for example, game_timestamp, okay?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 33:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And this gives me a GSI.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now we need to also create some capacity for my GSS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: Amazon ECR
- Key Insights: So the local secondary indexes tap in the RCU and WSU of the main table, whereas for a global secretary index, you need to create your own read and write capacity.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 36:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: So either we copy from base table or we customize settings and we can, again, specify Auto scaling On and Off.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we'll just copy from base table and have a one and one for RCU and WCUs, and then what attributes we want to project.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then this global secondary index is going to be created.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 39:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now, remember, if you query a lot that GSI and writes get throttled, then the writes will be throttled as well on the main table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 40:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Whereas the LSI just taps into the RCU and WCU of the main table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my global secondary index is now created.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And what I can do now is that if I go back into view items, I can look at my table and now I can query by game_id-game_timestamp-index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 43:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And so, as you can see now, the Partition key can query by is by game_id.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And my Sort key is my game-timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this really shows you all the powers of indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope this makes sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/322_DynamoDB PartiQL.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's quickly talk about PartiQL for DynamoDB, which allows you to use a SQL-like syntax to manipulate DynamoDB tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is what the statements would look like.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And then from this, you can insert, for example, or update or select or delete items from a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So, it's to allow people who are more confident to use SQL to still be able to interact with DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: And it also supports Batch operations, if you need to.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let me show you how PartiQL works in the console.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I am in my tables, and the left hand side is the PartiQL editor.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's open some of these tables, for example, let's open the user's table and I emptied it but I can, for example, add an item real quick, so I can have a user_id 123 as well as a new attribute, name, Stephan, and this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And for my other table, the user's post, I can again, add some items, so user_id 123 post_id 456 and create the item, as well as for the demo indexes, I can create an item user_id 123 game times stamp 2022, even if it's not really good.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then game_id 456.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I have created some items into all my tables, and now if you go to the PartiQL editor, we can look, for example, at the user's table and I can delete this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I click on users and I do scan table and it has a select start from users which is a SQL statements.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if I run it, it says that the statement wasn't well formed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now it is completed and you can see that the items result is defined and user_id 123 that we can also get in adjascent view, if you wanted to because this is what would be used in your code to deal with it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can download the results to a CSV.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Next, for more complicated stuff, you can look at the demo indexes table, and we can scan this table again, so we'll have the look at all the items.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But you can do more interesting stuff, for example, you can query the table, and when you query the table, it generates for you a statement and it says, solid start from demo indexes, where user_id equals, for example, 1,2,3, and then you can also have an end game time stamp equals Sort key value, but this is optional.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if you run this, obviously, then we get the correct items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so we can start building some pretty complicated queries, but because we have a index right here, we can actually use this index and scan it.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can do select start from demo indexes and then the name of the index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's going to return the item based on my index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you can do many things, you can run insert statements although they're not easy to run directly from the UI because they're not automatically generated.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: You can also set an item, so you can update a specific item and set the attribute value, the Partition key value and the Sort key value and so on.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or you can, for example, drop a specific item and you have a delete from statement.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this editor is just for people who want to use SQL against DinamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I just want to trigger the feature very briefly.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/323_DynamoDB Optimistic Locking.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB has a feature called Optimistic Locking.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So the idea is that you can do Conditional Writes in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That means that you want to ensure that an item has not changed before update or delete it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you're saying, Hey, I want to write this only if this condition is met and this is called Optimistic Locking.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the way it works is that we have an attribute on our items, which will act as a version number, and we will check an equality condition on this version number.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: We have a DynamoDB table, and we have an item with a user ID, a first name and a version, which is one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Now two clients at the same time want to update this item because they think that the first name is wrong.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the client 1 is saying, Hey, I want to update this to name = John, only if version = 1.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the client 2 says, I want to update name = Lisa only if version = 1.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: What's going to happen is that's one of these requests, obviously, will make it to DynamoDB first.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so then DynamoDB will go ahead, and maybe it's the second one, will update the first name to Lisa.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And will also update the version to 2, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now what's going to happen out of this is that the client 1 updates will not go through because now that DynamoDB says, Hey, you told me I should do this update only if version = 1 but it turns out that now my version is = to 2 and therefore, the client will get a error message saying, Hey, you don't have the right data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so therefore you should do a get and begin try to update if you want to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this feature of Conditional Writes or Optimistic Locking is something that the exam will test you on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's just a short intro.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's not something I can demonstrate easily, but hope you like this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/324_DynamoDB DAX.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's talk about DynamoDB Accelerator or DAX.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: DAX is a fully-managed, highly available and seamless in-memory cache for DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 3:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: The idea is that you're going to cache the most popular data, and therefore you're going to get microsecond latency for cached reads and queries.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: It doesn't require you to change any of your application logic, it's compatible with the existing DynamoDB APIs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you just create a DAX cluster and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, DAX, what does it solve?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It solves the hot key problems.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you're reading a very specific key or a very specific item, too many times then you may get throttling on your RCU's.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: But if it's cached by DAX, then you've just solved that problem.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's have an example, we DynamoDB it's made of tables and our application is trying to access these tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: Now in between, we're going to create a DAX cluster, which is made of cache nodes, and we have to provision them in advance.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now the application will directly interact with the DAX cluster, and the DAX cluster will fetch the data from the DynamoDB tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: So by default, that means that some data is going to be cached, and if you think cached, you need to think TTL.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the TTL is going to be five minutes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: So by default, every cache data will live for five minutes in your DAX cluster.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now the DAX cluster is made of nodes, and so therefore you need to provision them and you can have up to 10 nodes in the cluster.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's a good idea to be in a Multi-AZ kind of setup to have at least three nodes recommended in production.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So one in each AZ.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And DAX is fully secure, so you have encrypted at rest.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operations and Resilience
- Services: AWS CloudTrail
- Key Insights: You have IAM application, VPC security, CloudTrail integration, and so on.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 21:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So remember DAX is here to help you cache the most popular items or queries from DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 22:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: Now, the question we have, is what's the difference between DynamoDB Accelerator, so DAX and ElastiCache?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 23:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: Well, they can be used as a combination and the exam may test you on figuring out if it's best to use DynamoDB DAX, or if you wanna use ElastiCache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 24:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: So with DAX, what you're going to do is that you're going to have a cache for individual objects or for your queries, or your scans.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is very, very handy, and this is what I call simple types of queries.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So your objects, your queries and your scans.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you're doing some kind of logic application wise, you know you're like doing a scan and then you're doing the sum, and then you're filtering out some data, and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you don't want to do this every single time, because this is computationally expensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Caching and Latency Reduction
- Services: Amazon ElastiCache
- Key Insights: What you can do, is you can store the results of whatever your application just did in Amazon ElastiCache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 30:
- Concepts: Caching and Latency Reduction
- Services: Amazon ElastiCache
- Key Insights: And retrieve the data from ElastiCache directly, instead of re-querying DAX and re-performing the aggregation client side.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this could be a good way to actually use them both together in the architecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's go ahead and see how we can create a DAX cluster.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/325_DynamoDB DAX - Hands On.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So in the DynamoDB console, on the left-hand side, you have DAX.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And DAX is not part of the free tier, so creating a DAX Cluster is not going to be free, but you can just go ahead and see the process.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you create a cluster, for example, DemoDAX and then the node family, so which kind of nodes do you want to attribute into your DAX cluster.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It could be t-types or r-types.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So r is memory and t is for bursting, so this is recommended for use case regarding a lower throughput, and this is for always-ready capacity, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Operational database guardrail signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or we can compare all families, and in here, you can select the node types you want.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you want an r5.large and I have r5.4xlarge and so on or would you want to have a t2.small and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So in this example, I'll take a t2.small and then the cluster size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So do you want 1 up to actually 11 nodes, so they keep on increasing the capacity.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Relational Consistency and HA
- Services: (none explicit)
- Key Insights: Three is going to give you a multi AZ setup, right, but one is going to be good for example, just one AZ or for development.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you have one or two nodes, you might experience reduced availability, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead with one node.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm just going to go ahead and create this for you, but you don't have to go ahead because this will cost you some money.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now the subnet group is, which subnet group do you want to associate it with?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So demosubnetgroup, so this has to live within a specific subnet group and in a VPC, so you choose your VPC ID and then you choose the subnets you want to have.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Obviously, three subnets means you can have three nodes and be in a highly available setup.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: Access control, so what is a security group to access your DAX cluster and you need to open up port 8111, okay, or 9111 if you do in-transit encryption.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 18:
- Concepts: Database Operations and Resilience
- Services: Amazon EC2
- Key Insights: So we need to go ahead and create a security group from the EC2 console.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 19:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: But right now, I'll keep it simple and just use the default security group, just to show you the process.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then AZ allocation, do you want to have automatic or do you want to spread your nodes manually?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we'll keep it as automatic.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Next, for IAM permissions, so you need to provide an IAM Service role that will give the DAX cluster access to DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so therefore, we are just going to create this IAM role called DAXtoDynamoDB, and the policy will be created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll provide read/write rights and we're going to give access to all tables, but we could obviously limit some tables if we needed to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then we're going to encrypt data in transit and at rest on our DAX cluster, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And then for parameter groups, we're going to choose the existing one, so this one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we could, on the left-hand side, define some more parameters, thanks to parameter groups.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: So this is going to basically tell how long to cache the items, thanks to the time-to-live, and what's the query time-to-live as well.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is what settings you have as part of the parameter group.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But by default, the 1.0 is giving you five minutes of TTL on both item time and query time.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 31:
- Concepts: Relational Consistency and HA
- Services: (none explicit)
- Key Insights: Okay, the maintenance window, so obviously DAX will be occasionally patched and upgraded, and so this is why it's good to have a multi AZ kind of setup.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so you can say no preference or specify your time window, your tags, and then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can review it and create your cluster.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So my DAX cluster is now created, and let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the important thing I want you to look at is here there is a cluster endpoint, and this is the endpoint your application should leverage to just leverage the DAX feature.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now we can have a look at the nodes, so we can have a look at the node types, how many vCPU per node, memory, and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can add nodes over time if we wanted to, but as we can see, we cannot change the node types, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we need to create a new DAX cluster if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: We can have some monitoring, so we can do alarms and metrics around whether or not the cache is being used correctly, so cache hits, cache misses, for items and queries, CPU utilization, and so on.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is very, very handy to see if DAX is effective for you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operations and Resilience
- Services: AWS Config
- Key Insights: Events, to monitor the events of your database, as well as settings if you wanted to modify some settings such as a parameter group, network configuration, security configuration, maintenance window, and tags, okay?
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for DAX.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: Amazon CloudWatch
- Key Insights: Now I'm just going to delete this cluster including all the CloudWatch alarms, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/326_DynamoDB Streams.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's have a look at DynamoDB streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So streams are an ordered list of item-level modifications, such as create, update, and delete that are happening within a table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So whenever you will insert an item or modify it or delete it, then that modification would be visible in the stream.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the stream will represent the list of all the modifications over time in your table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon Kinesis, Amazon RDS
- Key Insights: So stream records can be sent to multiple places, such as Kinesis Data Streams, so you can send a DynamoDB Stream into Kinesis and then do whatever you want with it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB, Amazon Kinesis
- Key Insights: You can also use a Lambda function to read directly from your DynamoDB Streams, or you can use the Kinesis Client Library applications to read directly as well from a DynamoDB Streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB, Amazon Kinesis
- Key Insights: The data retention within a DynamoDB Stream is up to 24 hours, so you need to make sure to either persist it somewhere like Kinesis Data Stream where you can have a longer retention or use whatever Lambda or KCL application to persist it somewhere more durable.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: The use cases for using DynamoDB Streams is to react to changes in real-time happening in your DynamoDB tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon OpenSearch
- Key Insights: For example, having a flow to welcome you, to send a welcome email to your users, to do analytics, to transform the stream and create derivative tables in DynamoDB, or to send data into OpenSearch for indexing and giving search capabilities on top of DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to implement global tables and cross-region replication, you would need to have streams in the first place.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 11:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if we look at the architecture of DynamoDB Streams, so we have our application, which does create, update, and deletes operations on our table, and any of these changes is going to appear in a DynamoDB Stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Kinesis
- Key Insights: So from there, Kinesis Data Streams can be a receiver of your DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: NoSQL Access Patterns
- Services: Amazon Data Firehose, Amazon DynamoDB, Amazon Kinesis, Amazon OpenSearch, Amazon Redshift, Amazon S3
- Key Insights: And because we're using KDS, Kinesis Data Streams, then we can have Kinesis Data Firehose as a result, and then maybe send it to Amazon Redshift to perform some analytics queries on top of your data in DynamoDB, or sending to Amazon S3 for archival of all these changes, in case we need to, or sending it to OpenSearch Service, okay, to index it and to create a search capability on top of your DynamoDB table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The cool thing about this architecture is that it's pretty much everything is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB, Amazon EC2, Amazon Kinesis
- Key Insights: If you wanted to add your own custom logic, you could use a processing layer in which you would create either a Kinesis Client Library App, maybe running on EC2, or a Lambda function that will be reading from DynamoDB streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And from this, you can implement any sort of logic you want.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can have messaging or send notifications using Amazon SNS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB, Amazon OpenSearch
- Key Insights: You could do some filtering and transformation and then reinsert the data into a DynamoDB table, or for example, you can also use Lambda to send data into OpenSearch, if you wanted to, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So this gives you a different kind of architectures and all the possibilities that open up by using DynamoDB Streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we consider the stream, then what do we have?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: In the stream, we have the ability to choose the information that will be appearing in it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can, for example, have only the keys, and it will just show you a list of all the key attributes that have been modified, NEW_IMAGE, which represents the new item after it was modified, OLD_IMAGE, which represents the entire item as it appears before it was modified.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to get the full information, you can get NEW_AND_OLD_IMAGES, which gives you both the new and the old image of the item, and therefore we can see what changes have happened.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon Kinesis, Amazon RDS
- Key Insights: Now, DynamoDB Streams are made of shards, just like Kinesis Data Streams, so they're very, very similar.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Kinesis
- Key Insights: And this is why the Kinesis Client Library works against both DynamoDB Streams and Kinesis Data Streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: So the cool thing about DynamoDB Streams though is that we don't have to provision any kind of shards.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is done automatically by AWS, so it is really a hands-off approach.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: Now, if you enable DynamoDB Stream, just so you know, the records are not going to be retroactively populated in the stream after enabling it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is an exam trick.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So once you enable the stream, only then will you receive these updates based on the changes that are appearing in your DynamoDB table.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: Finally, let's have a look at how DynamoDB Streams and Lambda work.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So for this, we need to define an Event Source Mapping to read from a DynamoDB Stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: And then you need to ensure that the Lambda function has the appropriate permissions to pull from the DynamoDB Stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: And then the Lambda function will be invoked synchronously.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: The table goes into a DynamoDB Stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: AWS Batch, AWS Lambda, Amazon DynamoDB, Amazon RDS
- Key Insights: The Lambda function will have an Event Source Mapping, which is an internal process that will be pulling the DynamoDB Stream and retrieving records in batches from the DynamoDB Stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: AWS Batch, AWS Lambda, Amazon DynamoDB, Amazon RDS
- Key Insights: And once some records are passed on to the Event Source Mapping, then the Event Source Mapping will invoke your Lambda functions synchronously with a batch of records from your DynamoDB Stream, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture for some hands-on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/327_DynamoDB Streams - Hands On.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So let's get our users post table and on it we're going to enable, DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So to do so let's go to exports and streams, and here we're going to have DynamoDB stream details, and we're going to enable it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: Now we have the option to choose which type of view we want to have within our DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it can be key attributes, new image, all image or new and old images.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to keep the last option to get as much information as possible, and I will enable this stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, great.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now my stream is enabled and within it, as you can see, if I scroll down, there is the trigger.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the trigger, is what is this stream going to trigger?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can create a trigger.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: And here we have a Lambda function that can be invoked every time your DynamoDB stream is updated.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So to do so, well, let's go ahead and create a new function.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can use a blueprint.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And in here I can type DynamoDB, and we have DynamoDB process stream Python.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Which is going to log all the updates made to a table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: NoSQL Access Patterns
- Services: AWS Config, AWS Lambda, Amazon DynamoDB
- Key Insights: Let's configure it and I'll call it Lambda demo, DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: Next, we're going to create a new role with basic Lambda permissions, and we'll make sure to edit this role, to add the permissions, to read from DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now for the DynamoDB triggers, we need to create the trigger.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So is going to be the users post, which table was it?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The users post table?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Yes, indeed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: And the batch size is 100.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So this is how many records will read at a time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Relational Consistency and HA
- Services: AWS Batch, Amazon RDS
- Key Insights: The batch window, if you wanted to gather records before invoking the functions, so to be more efficient.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the starting position.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So do you want to read from the start or from the end of the stream, just in case the stream had been already created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We enable the trigger.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Relational Consistency and HA
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: And as you can see, what it does is that it just prints the records that we get out of the stream, into the logs we'll be able to view this in CloudWatch logs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now we have created the function, but we get an error, which is that the record or the function can not access our stream because we have missing IAM information.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to fix this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: So we click on our function and then under configuration, we're going to go under permissions, and this is the execution role.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now we have to click on this execution role and we're going to add the necessary permissions to read from DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So we'll attach a policy and I will look for DynamoDB, and we'll have DynamoDB read only access because what we're doing is that we're actually reading from DynamoDB.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And this one is also good to read from DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: So we'll attach these two just in case, but this has meant for Lambda.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So probably a little bit better.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's attach this policy and to be honest, one of these is going to work.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I'm trying to make this as simple as possible, which is why I'm not spending a lot of time on this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh now this page, and it seems like we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So we have more actions on DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Selection and Trade-off Analysis
- Services: AWS Batch
- Key Insights: And now if we refresh this, we can choose this function and set the batch size in 100 and we create this trigger.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: So now that means that my DynamoDB stream is going to trigger my Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: And if I go back into my Lambda function and refresh this page, we can see the DynamoDB is indeed triggering my Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is an enabled type of integration with these settings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So next, what I'm going to do is just test it out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we're going to go to our table and what I'm going to do is click on view items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to do a few things.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For example, let's take this item, the second post of John, we're going to action, edit it, and then I'm going to modify.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to say a second post 'yay' edit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And click on save change.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we'll take Alice and we're going to do action and then duplicate.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's going to create a new thing and I'm going to just add a bit more data as a new Alice blog and then create item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then finally, we actually don't like this blog, so I'm going to delete it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do action and then delete items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And yes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we've done three kinds of operations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We've had an update, a create and a delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: And so we went to do my Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: My Lambda function executed this code, which was printing, so logging these events.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: Database Operational Context
- Services: Amazon CloudWatch
- Key Insights: And so what I need you to do is just go into CloudWatch logs and have a look at whether or not we saw these informational logs So let's click on view the logs in CloudWatch logs.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And here we have some information around this log stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as you can see in this log stream you get a lot of information.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we get one line.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 73:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: So this was a modify and this was the DynamoDB records.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it gives you the key, the user ID, and as well as the new image.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the content, so we can see yes, a second post 'yay' edit.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 77:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can also see the old image of what it was before.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that was like for one request, then we have an insert.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so again, we can see, the DynamoDB record in it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then the new image and the, there is no old image because obviously we wasn't inserts.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So there was nothing before.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we get a remove.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And again, this remove operation was logged.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have the old image, and obviously there is no new image because the thing was removed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's fairly easy.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: We just enable the stream and you went to Lambda function and the Lambda function was logging it, but this is the basis to have these kinds of integrations with DynamoDB streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 88:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 89:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Lastly, please make sure to disable the trigger.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 90:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So on the DynamoDB, you take this trigger and you disabled it or delete it, whatever you want, and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 91:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 92:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 93:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/328_DynamoDB TTL.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about Time To Live.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And Time To Live allows you to automatically delete items after an expired timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you have a column you'll define, and then when you say the time of right now goes over the the value of this column, then please remove the item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So having an item being deleted by a Time To Live constraint does not consume any WCU, so there's no extra cost.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this timestamp must be a number that represents the Unix Epoch timestamp value.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: As we'll see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And expired items are deleted within a few days of expiration.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we look at a table, for example, a session data table that has two columns, User ID and Session ID, we want to add an expired time, which is going to be the TTL of our table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we're going to define when each session will expire.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now what happens is that when you go and there is an expiration process in DynamoDB, it will look at the current time and say, the current time is this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it will mark, scan the table and expire items that are going to obviously have TTL epoch time less than the time right now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then the second process will scan and delete these items from the table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is how TTL works.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now these expired items that haven't been deleted will still appear in the reads, query, and scan.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you don't want them, you need to do some client-side filtering.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So there could be some expired items already in your queries.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You need to wait at up to 40 hours to see it being deleted.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And when the items are deleted, they're also deleted from your indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So your local secondary indexes and your global secondary indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 20:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And a delete operation for each expired item enters the DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That means that any item that gets deleted thanks to the TTL will be in that stream and you could recover it if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Now, the use cases for TTL would be to reduce stored data by keeping only current items to adhere to regulatory obligations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Or for example, for the session data, it is a perfect use case of TTL.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so let's have a look at how we can define a TTL in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and create a table, and I'll call this one DemoTTL.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now the partition key is going to be user_id and we don't need a sort key right now.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, we'll keep, we'll customize the settings.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: Auto Scaling
- Key Insights: We'll set provisions and auto scaling off.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We'll have one RCU and one WCU, and then we'll go ahead and create this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So my table is now created, and what I'm going to do is just add a little bit of data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to insert some items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to create an item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: User ID is john_123, and then I'm going to add an attribute, for example, name is going to be John.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then I want to have an expire on attribute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So expire_on, and essentially it's not a string, it's going to be a number.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we do expire_on, and then we need to give an expiration date to John.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I call it epoch converter online.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And let's just get the first one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Translate
- Key Insights: And so this is how we can translate a timestamp of soon into an epoch timestamp, which I can enter into DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, if I take, say five minutes from now, so here we go.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I do human to timestamp, here is the epoch value of five minutes from now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to paste that in and click on Create Item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's one item that has been created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will create a second item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this one is alice_456 as a user ID, while Alice's name is going to be Alice.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we need to again have an expire_on and the expire_on, we can say, for example, one hour from now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we'll have 10 here and click on Human date to Timestamp, take this in and paste it, and create item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now we have two rows in our DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And both of them have a different expire_on attribute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now we need to go ahead and define the TTL on our table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we look at our table, we can see the Time To Live is currently disabled.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So what I can do is go to Additional Settings, scroll down, and then look for the Time To Live and click on Enable.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now we need to give the TTL attribute name.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So what is the data that I want to expire, the comment I wanna expire on?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So expire_on is the name that I gave to this TTL attribute name.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then we could run a preview.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you run a preview right now, it says that these two items will be deleted in one hour.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if we take for example, the time right now, which is right here, and I do Run Preview, it says, hey, there's no items that I want to delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if we do one hour from now, so if we do for example, 10:10 and that gets this epoch timestamp right here, and paste it, Run Preview, only John will be expired.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then if I go a bit after, so if I go to 10:50 and take a human timestamp date to timestamp and phase this in, run a preview, now two items will be deleted.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you could either specify an epoch value or a custom time or in the next 60 minutes, 24 hours, or seven days, which is quite cool for running some simulations.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we can enable TTL, and now TTL is enabled and automatically if I wait for one hour, my items are going to be completely expired.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Specialized Data Models
- Services: (none explicit)
- Key Insights: So this is pretty cool, and we can do a graph of all the items deleted in the last 24 hours thanks to this feature right here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: Amazon CloudWatch
- Key Insights: So this is a CloudWatch metric.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/329_DynamoDB CLI.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so a few CLI options that may come up in the exam for DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the first one is projection-expression, and with it, we can specify one or more attributes to retrieve.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The idea is that we don't want to retrieve all the columns, all the attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We just want to retrieve a subset to maybe have less data come to us, or only the data we need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There is filter-expression, which is to filter items returned to you, so there is going to be some filtering, and we can specify some conditions that we'll see very, very soon.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: There is also some very important pagination options for DynamoDB S1.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So, for DynamoDB, of course, page-size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So page-size is saying that we still want to retrieve the entire dataset, but this time, each sub-API call that we'll make to AWS will be smaller.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the idea is your API call won't time out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For example, if you have a table of 10,000 items and you do one API call, maybe you will retrieve 10,000 items at a time and you will time out.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you specify a page-size of 100, what's going to happen is that there's going to be 100 API calls of size 100, that are going to be made behind the scenes, to make sure that the complete API call succeeds.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So page-size is an optimization in that sense, in that it allows you to do more API calls, but also avoid timeouts.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Max-items, instead, is to have a limited number of items to show when you get a result back from the CLI call.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And max-items works in combination with NextToken, or starting-token, which is to say that now that you've received, say, 25 items, we want to get the next 25, and so therefore, you need to use that NextToken to retrieve the next 25 items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, I'll make this very clear, because we're going to practice right now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's go into our UserPosts table and let's view the items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here are all the items in our table, and we're going to have a play with it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: AWS Config
- Key Insights: Now, I want you to open the CLI so you can use a terminal, if you've configured it, or I'm going to use AWS CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And also, please make sure that you open the cli-examples.sh file in your DynamoDB folder.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so the first thing is that we're going to do a DynamoDB scan.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we should specify the table name, but we'll also specify a projection-expression on user_id and content.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So what's going to happen is that in this table currently, we have three attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have user_id, post timestamp, and content.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: By using a projection-expression, we're not going to retrieve post timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's have a proof of this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's copy and paste this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Press Enter.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I'm getting some items back, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we only have content and user_id.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We don't have post timestamp as part of the results.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Next, let's talk about a filter-expression.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we want to scan this table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But this time, we're going to filter all the results using a filter-expression, so this is happening client-side.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we'll look for user_id = u.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then u has to be a string that has the value john123.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that means that we want to only retrieve the rows that have john123 in it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 40:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Count is 2.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 41:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we only retrieve the content for john123.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is working.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 43:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is all happening client-side, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to have it server-side, because the user_id is john123, and it's a user_id call and so it's a primary key, we could run a query directly to be a lot more efficient.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 45:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But at least we show the power of filter-expression.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We could filter on user_id.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We could filter on post timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we could filter on content as well.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Next, we want to demo the page-size.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you are doing this API call to scan this entire table, then it's going to be one API call in the background, and this API call is small enough, of course, but we retrieve three items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to be efficient, say there was like 10,000 items, you could specify a page-size 1.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, page-size 1 will just do three API calls in the background, but you will still retrieve your three items as part of one command.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I press Enter, as we can see, I did receive yet again my three items, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: But what happened in the background is that there were three API calls made to DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is the page-size optimization to avoid timeouts.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Instead, if you wanted to retrieve one item at a time, you would use the max-items and then a number, so max-items 1 should return only one item.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: As you can see, we have this item being returned to us.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then the count is 3.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 59:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But we have now a NextToken available to us.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this NextToken, we have to use using this command.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 61:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So we're going to use the same max-items 1, but now we have the starting-token that we have to enter.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 62:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the value of the starting-token is what is in your CLI.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you paste the starting-token in your command, and then you press Enter.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now you get the second post.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 65:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here was the first blog.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we had a NextToken.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 67:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And now it's our second blog, and we again have a NextToken.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so finally, if you wanted to retrieve the last one, we would run this command yet again, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So we'd run this command, and this time we would specify the NextToken from above, which happens to be the exact same.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I don't want to show you again the process.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 71:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you copy this entire token in your command, press Enter, and now we get "Alice blog edited." And now we don't have any more NextToken.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 72:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's when we know that we've reached the limits of all the things we could scan from this table, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So hopefully these options of the CLI make sense.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 75:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/330_DynamoDB Transactions.txt

Line 1:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's talk about DynamoDB transactions.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that with a transaction, you're going to get an all-or-nothing operation to multiple items across one or more tables.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for example, we want to update, delete or add items, not for just for one table, but across multiple items.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: And either all the transactions, all the writes work, or none of them work.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is why it's called a transaction.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now this gives DynamoDB, the ACID feature.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So atomicity, consistency, isolation and durability.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 8:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: Transactions can be applied into two things, read modes and write modes.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: For read modes, you're going to have three read modes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: Therefore in DynamoDB, you're going to get eventual consistency, strong consistency that we know before, and now transactional consistency, which means I want to read data from all these tables at the same time and get a consistent view across it.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Transactionally, a consistent view across it.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And for write modes, you're going to get standard and transactional.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So standard is you're going to do many writes across many tables, but some of them can fail.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But, transactional, either all the writes work across all the tables, or none of the writes work across all the tables.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now to do a transaction, it will consume twice the write capacity you need and the read capacity units.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's because anybody who will perform two operations in the background for every item, it will prepare the transaction and then commit it.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, these two operations you need to know are going to be TransactGetItems, is an API code to do one or more GetItem operations as part of the transaction, or TransactWriteItems to do one of more of PutItem, UpdateItem, and DeleteItem operations as part of one transaction.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 18:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: The use cases for DynamoDB transactions is any time you would have ACID needs.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 19:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: So for example, for financial transactions, for managing orders, for multiplayer games, et cetera, et cetera, everywhere you need some sort of consistency.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we have AccountBalance, which presents the account ID, the balance, so how many dollars they are on each accounts, and the last time a transaction was made onto this account.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 22:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: And then we have another table called BankTransactions, which represents all the transactions that happened to the bank, okay?
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And there's a transaction ID, a transaction timestamp, From Accounts, To Accounts, and the amount.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 24:
- Concepts: Database Operations and Resilience
- Services: AWS SAM
- Key Insights: And so the idea is that we want to, obviously, add a transactions and modify the AccountBalance at the same time.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 25:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So our application is going to do one transaction.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 26:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: And as part of this one transaction, is going to do an UpdateItem on the AccountBalance, and a PutItem on the BankTransactions.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: Now with the DynamoDB transaction, either the transaction is returned to both tables at the same time or to none.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 28:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: And this is the power of transactions.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And we can see, especially in a financial setting like this, that it is really, really important to have these level of transaction guarantees.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 30:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's talk about capacity computations for DynamoDB, which is super important for the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you want to do three transactional writes per second, and the item size is five kilobytes, what is it going to be the WCU needed?
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, you're going to need three times five divided by one, because one WCU is one kilobyte, times two because transactional operations are twice as expensive, which makes you a need for 30 WCUs.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, if you have five transactional reads per second, with items of size five kilobytes, then you need five times eight divided by four times two, because again, a transactional operation is twice as expensive as a strongly consistent read, which gives you 20 RCUs.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And why did we get eight?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, five did get rounded to the upper four kilobyte that we've seen from before.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So be familiar with these computations, be understanding of what a transaction is in DynamoDB.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I can't really demo in the console, but I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Constraint or limitation signal.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/331_DynamoDB Session State.txt

Line 1:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: So we know that ODB can be used to store data, but it can also be used to store the session state, as a cache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so this is something that your web application can use.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And therefore, they can retrieve or store the session states on demand.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And share the user login, for example, across all your backend web applications.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: Amazon DynamoDB
- Key Insights: So this is very common use case for DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Caching and Latency Reduction
- Services: Amazon ElastiCache
- Key Insights: But, this is something we've seen as well for ElastiCache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 7:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB, Amazon ElastiCache
- Key Insights: So ElastiCache and DynamoDB achieve the same purpose.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 8:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: So the question you may ask yourself is what is the difference of using DynamoDB or ElastiCache to store the session states?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 9:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: Well, ElastiCache is going to be fully in memory, and DynamoDB is going to be serverless.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And both are going to be key/value stores.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Caching and Latency Reduction
- Services: Amazon ElastiCache
- Key Insights: So if the exam is saying, okay we need a session state store, that's going to be in memory, it probably means ElastiCache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And if it talks about automatic scaling and so on, then DynamoDB is probably the right way.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is something you have to look for in the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Another way you can store the session states would be on disk.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: Amazon EC2
- Key Insights: And you need to share that disc across many EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operational Context
- Services: Amazon EFS
- Key Insights: So EFS could be a great choice.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: Amazon EC2, Amazon EFS
- Key Insights: So EFS must be attached to your EC2 instances as a network drive.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And this could work versus DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon EFS
- Key Insights: But so EFS is a file system and then DynamoDB is a database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here is the difference.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: Amazon EBS, Amazon EC2, Amazon EFS
- Key Insights: So you may say okay, you said EFS was for storage, so what about my EBS volume and my EC2 instance store?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So yes this is storage, but it can only be used for local caching, not shared caching.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Database Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: Because your EBS drives and your instance store are attached to only one EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So very important, this can be used for caching a local dataset, but not for sharing it across many instances.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: Amazon S3
- Key Insights: And then finally, what about S3?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: Amazon S3
- Key Insights: S3 could be used for session states, yes, but it has a higher latency.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's meant for big files, not for small objects.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Caching and Latency Reduction
- Services: Amazon S3
- Key Insights: So S3 as a station state cache is not a great tool.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 29:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon EFS, Amazon ElastiCache
- Key Insights: So really, the best two are going to be or best three is DynamoDB, ElastiCache, and EFS.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 30:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: But preferably DynamoDB and ElastiCache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 31:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's all about to figure out if you want something in memory or something that's going to be more serverless and with automatic scaling.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/332_DynamoDB Partitioning Strategies.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So, a quick lecture on something called DynamoDB Write Sharding.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: So, let's assume this use case where we have a voting application, and voting application people can vote for candidate A and candidate B.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, two candidates.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Now, if we used the partition key to be candidate ID, the problem is that all the results will go into two partitions only because, well, the data is going to be partitioned by either candidate A or candidate B, which will generate issues for writes and for reads so we're gonna get hot partition issues.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, how do we solve this issue?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Well, a strategy is to distribute the candidate ID better across partitions and to do so, we're going to add a suffix, or a prefix to the partition key value.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, the idea is that we're now we're going to get the candidate ID, and then we'll add, for example, the number 11.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So candidate a 11, and add a row, and then we're going to have candidate b 17, candidate b 18, candidate a 20, and the idea is that now the partition key, is a lot more distributed, because it takes more unique values and therefore your data set is going to be fully written and fully readable from your Dynamo DB table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now, two methods for creating this suffix or this prefix.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can use a random suffix or you can calculate it using a hashing algorithm.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Both of these things work.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: The idea is that you want to get a very, very distributed partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: That's all, it's just a theory lecture, but you know this strategy now.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/333_DynamoDB Conditional Writes, Concurrent Writes & Atomic Writes.txt

Line 1:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So another theory lecture about all the writes you can do on DyamoDB, just so you have a really good understanding of them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the first one is concurrent writes, which we have an item and say to the users, "Want to update the item." So the first one say, "Hey, update this item to value equals one." And the second one says, "Hey, I want you to update the item with value equals two." Now what happens?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, they're both going to succeed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the first one will maybe update to value equals one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The second updates to value equals two.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: And so maybe the second write will overwrite the first writes, if it happens afterwards, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But one of them will be overwritten.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is not a very desired behavior because two of them try to update an item and both get success, but obviously only one of them really succeeded.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So that's why it's called concurrent writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So how can we solve this?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We can do conditional writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: In conditional writes, the idea is that the user says, "Hey, I want to get this item with value equals one, but only if the value is currently zero." And the second person says, "Hey, I want you to do the value of this item with value equals two, but only if the value is zero." What's going to happen now is that, for example, the first write is going to be accepted.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the value will be equals one.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the second write is going to fail because at the time of evaluating the condition value equals zero, it turns out that then it would to be able say, "Hey, you know what?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Actually, the value now is one." So we shouldn't do your writes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is a way to solve the concurrency problems.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And that's why it's called optimistic locking.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Now another kind of writes you can do are atomic writes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So in this example, the user say, "Hey, I want you to increase the value by one," and the user two say, "I want to increase the value by two." Now both writes are going to succeed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the value in total will be increased by three.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So one plus two equals three.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: And finally, nothing to do with these kind of concurrency, but just batch writes is when a user writes or updates many items at a time, okay?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now you know, all the types of writes you have in DynamoDB, and it should make sense to you at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/335_DynamoDB Operations.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so just a short lecture on two DynamoDB operations you may get tested on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So the first one is around how to do a table cleanup.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So to do so you have two options.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: First, you can scan all the items in your table and then delete them one by one, which is very, very slow and can consume a lot of RCU on the scan operation and WCU on the delete operation, so it's expensive.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: Amazon ECR
- Key Insights: The option two is much more quick, which is to drop the table, so drop it, remove it, and then recreate this table so it's fast, efficient, and cheap, and you just need to make sure you recreate this table with the correct settings, just like the one before.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns
- Services: AWS Backup, Amazon DynamoDB
- Key Insights: So if you wanted to copy a DynamoDB table, you could use AWS backup, so you would have a source table, you would back it up and then restore it using that service in your account or in another account, for example.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 7:
- Concepts: Database Operational Context
- Services: AWS Glue
- Key Insights: If you wanted to have an ETL service, you could use AWS Glue.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's a service that's going to create a script and that scripts going to read your source table and then write it anywhere you want.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: Or finally, last option is to you write your own code and to use API calls such as scan and put item or batch write item.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But that will be probably more difficult to do than using one of the two services made by AWS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/22_AWS Serverless_ DynamoDB/336_DynamoDB Security & Other.txt

Line 1:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So one let's talk about, DynamoDB security and some other features.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 2:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So for security, we have VPC endpoints that are going to be available to access DynamoDB without using the public internet, and only keeping all the traffic within your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Operational database guardrail signal.

Line 3:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Access to DynamoDB is fully controlled by IAM, which makes it a great database choice in AWS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you have encryption at rest using AWS KMS or in-transit using SSL and TLS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: There are backup and restore features available.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 6:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You have two of them.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operations and Resilience, Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So you have point-in-time recovery, so PITR, just like RDS and there's no performance impacts, or we can just do a normal backup and restore it.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now there's the concept of global tables and DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So the idea is that you have a multi-region, multi-active fully replicated high-performance table in DynamoDB.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And how to enable it?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Well, you need to first enable DynamoDB streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So, while DynamoDB is a cloud service, It's possible for you to get a simulation of DynamoDB on your local computer, called DynamoDB local, and the idea is that you have, a local DynamoDB database that you can use to develop and test your applications locally without using the DynamoDB web service, which is really, really handy.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: NoSQL Access Patterns
- Services: AWS Database Migration Service, Amazon DynamoDB
- Key Insights: And if you wanted to migrate data to and from DynamoDB, the AWS Database Migration Service is a great choice.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: So for example, from MongoDB to DynamoDB, or Dynamic V2 Oracle, mySQL, S3 and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now another feature you need to understand around DynamoDB is going to be around fine grain access.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So for example, if you have clients and applications, web, or mobile, and they need to access directly our DynamoDB table, then we don't want to give them IAM permissions and IAM roles, users directly from AWS, that will be truly inefficient and a security hole.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Instead, we're going to use an identity provider.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: It could be Amazon Cognito User Pools, Google login, Facebook login, open ID connect, or SAML or whatever.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the users will, in the simplified flow, login with these identity providers and they will have the feature to exchange the credentials they just got for temporary AWS credentials.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that because they're temporary, they're more secure.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And with them, they can be associated with an IAM role, but this IAM role must be restricted because now that our clients and applications can access our DynamoDB table, you want them to be able to do operations only on the data that they own.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so how do we do this, this fine grain access control?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Well, we have a federated login to get temporary credentials, and then we can create IAM role, and this IAM role will have a condition.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this condition will lead on to what the user can do.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So here is a sample policy.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: AWS Batch
- Key Insights: So in this policy, the user can do get item, batch get item, query, put item, update item, delete item and batch right item on a specific table.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But there's a condition here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And the condition is saying, Hey, only if the leading keys is corresponding to DynamoDB and then the connector identity pseudo variables, which will be replaced at run time by the specific user.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so effectively what we're saying is that with LeadingKey, we only limit row level access for users based on what the primary key value is.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so therefore we make sure that the users can only modify and access their own data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And you can also specify conditions on attributes and this would be to limit the specific attributes a user can see in your DynamoDB table, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, you have fine-grain access control by using a federated login and by specifying a condition on LeadingKeys, if you want it to limit at the role level or attributes, if you want your limits at the column level, the attribute level.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/25_AWS Serverless_ SAM - Serverless Application Model/379_SAM with DynamoDB - Hands On.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So I just wanna show you what it looks like when you also have a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So we'll do sam init, and then we'll use quick start templates again and we'll use this time a serverless API, so number seven in this case.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then we'll use nodejs22.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: Database Operational Context
- Services: AWS X-Ray
- Key Insights: And then we don't want X-Ray, we don't want this, we don't want that.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: And then I'll call this one sam-app-dynamodb.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Okay, so here what we have is a directory, because sam-app-dynamo, oh, I made a typo, but whatever, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: And in it, again, if we look at the files, find. -print, we have the same structure as before, but now, we have some source there, like JavaScript sources.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: They're made for no JSON, so you don't need to remember those.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: What's important again, is the template that yaml file that I wanna show you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if I do cat template.yaml, as you can see, this is a more full template, because this is a full serverless API, but let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: Again, we have this transform serverless that's super important for SAM, and then in there we have resources.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So we have several functions.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have the getAllItemsFunctions, which is a serverless function, and we have the source, the runtime, the memory, the policy, so super important here.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: It's a very simple policy made possible thanks to the SAM framework.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: AWS CloudFormation, AWS SAM, Amazon DynamoDB
- Key Insights: So here we have a DynamoDB crude policy on a reference to the table name, and that's it, that's all we need to create an IAM policy with the SAM framework, which makes it super easy compared to raw CloudFormation, as well as the events it should reply to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this should be a GET on the root path as an API.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Again, super easy way to define an API.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then we have another serverless function, another handler, again, another policy, and another API path.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Again, super easy to define it, thanks to this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have a third function.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is for put this time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So, you see method is POST.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: And then, we have the sample table, which is a simple table, which behind the scenes, get converted into a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 24:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: We have the primary key and then provision throughput for read and write capacity unit as two.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 25:
- Concepts: NoSQL Access Patterns
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: And that's it, that's all we need to do to deploy a full blown API into AWS with the SAM framework that is backed up by a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So these examples are great, because they really allow you to see you, to show you the power of the SAM CLI.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: If you wanted to have fun, you can deploy it, but if you deploy it, make sure you delete it after by doing sam delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But you can have fun and deploy it if you want to, no need to show you the step, you already know this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 29:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: That's it, and then I can't run this thing locally on the Cloud Shell unfortunately, but SAM has local capability.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: But one thing I could show you is that you have events here, and in this event we have sample events.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: So I can copy one, and these events are sample events.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 32:
- Concepts: Database Operational Context
- Services: AWS SAM
- Key Insights: And then we can do the sam local invoke command, but this won't work on Cloud Shell because I don't have the necessary things installed.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 33:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I need Docker and so on to actually run these events and test it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So if you want to, in your own time, to play around with this capability, what you could do is that you could read the readme.md file, and in there you will find somewhere here, here, these two functions to invoke your application locally, so you can run it locally, and then you can invoke the put item function with this specific event.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And then you can invoke the getAllItemsFunction with that specific events as well to test your function locally without even deploying it to AWS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: API Gateway, AWS SAM
- Key Insights: You can even start a local API gateway directly on your computer using the sam local start-api, and then there you go, you have something on your computer.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to just iterate very quickly on your computer, and then when you're done, upload to AWS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 38:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So that's it for this lecture where I just wanna show you how to set up DynamoDB and how to run things locally.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/21_Databases in AWS/237_DynamoDB.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So now let's do a summary of Amazon DynamoDB which appears quite a bit at the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB is a proprietary technology from AWS.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's a managed serverless and no SQL database that provides you out of the box millisecond latency.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 4:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: You have two capacity modes you need to choose from.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Selection and Trade-off Analysis
- Services: Amazon ECR, Auto Scaling
- Key Insights: So one of them is the provision capacity with optional auto scaling, which is great when you have a smooth type of workload that increases gradually over time or decreases gradually over time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: Or you have the on demand capacity mode where you don't have to provision capacity, but it scales automatically for you, which is great if you have very unpredictable workloads or if you have sudden steep spikes of demand on your database.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon EBS
- Key Insights: So DynamoDB can replace ElasticCache as a key value store and it's a great way to, for example, store session data for your website, combined with a TTL feature to expire a row after a specific amount of time.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 8:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB is highly available.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It is across multiple availability zones by default.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Database Operations and Resilience, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: The reads and the writes are fully decoupled and it's possible for you to have transactions on top of the DynamoDB tables.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 11:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: It is possible for you to create a read cache out of the box that is fully compatible with DynamoDB which is a DAX cluster, DynamoDB accelerator, and the particularity of it is that you get then microsecond read latency.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So look for that in the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: In terms of security authentication and authorization, everything is done through IAM.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 14:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: You have event processing capability on top of DynamoDB, so you can enable DynamoDB streams to stream all the changes happening into your database and you can have an integration to invoke Lambda from the DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: Therefore, Lambda can be invoked for every single change in your DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Kinesis
- Key Insights: The other option is instead of standing the data to DynamoDB streams, you can send the data to Kinesis data streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 17:
- Concepts: Database Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: The advantage is that on top of it, you can use the Kinesis Data Firehose feature, or you can use any type of integration that leverages Kinesis data stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: Amazon Kinesis
- Key Insights: For example, you could have longer term retention up to one year on Kinesis data streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: You have a global table feature on top of the DynamoDB, which allows you to do active-active replication across multiple regions.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So anyone can read and write from any region; this is why it's called active-active.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 21:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: Now you have two backup options.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 22:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: The first one is an automated backup.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 23:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: You need to enable point in time recovery for that and you can restore your table to a new dynamicDB table for any point of time up to 35 days.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 24:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: Or if you want to have longer term retention of backups, you can enable on-demand backups, which will also restore to a new table.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 25:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: Now, you can export your DynamoDB table to Amazon S3 without using any of the read capacity units within the Pointing Time recovery windows, So within 35 days using the export to S3 feature.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: Amazon S3
- Key Insights: And you can also import from S3 without using any right capacity units into a new table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Lex
- Key Insights: So DynamoDB, from an exam perspective anytime you see that you need to rapidly evolve schema which have a flexible type of database schema is going to be a great choice.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns, Selection and Trade-off Analysis, Specialized Data Models
- Services: Amazon DynamoDB
- Key Insights: So the use cases for DynamoDB is when you want a database and do serverless application development and your data are small documents, for example, in the hundreds of kilobytes of size maximum or when you want a distributed serverless cache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 29:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so that's it for DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/08_Databases/088_DynamoDB.txt

Line 1:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so let's get into DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 2:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DynamoDB is going to be a NoSQL database, fully managed, serverless, and can provide massive scale.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 3:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It can go up to 1 million requests per second.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 4:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: It's going to have a similar architecture to Apache Casandra, and users of Cassandra can migrate to DynamoDB, for example.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 5:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: There's no disk space to provision, and the max object size is going to be 400 kilobytes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 6:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: And a way to store bigger objects into DynamoDB is to actually store the objects into Amazon S3 and store a reference to that object in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 7:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: In terms of capacity, you have two modes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 8:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You have provision capacity, where you specify how many write capacity units and read capacity units and if you want autoscaling on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 9:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or you can use on-demand, where you're going to have to pay for every single write and read.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 10:
- Concepts: Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: And this is better when you're going to have a more unexpected, unpredictable type of workload.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 11:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So provision is going to give you the smoothest type of scaling and a better cost, whereas on-demand is gonna be very helpful if you don't know your patterns in advance, or you're doing some development, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 12:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It supports CRUD, so Create, Read, Update, Delete.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 13:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And the read can be eventually or strongly consistent.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 14:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: And it supports transactions across multiple tables.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 15:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So it is possible to get ACID support with DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 16:
- Concepts: Database Operations and Resilience
- Services: (none explicit)
- Key Insights: You get backups available and point-in-time recovery.
- Hidden/Implicit Meaning: Operational database guardrail signal.

Line 17:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And finally, you have two table classes, standard for frequently accessed data and infrequent access for infrequently accessed data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 18:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So everything as said, you should already know, but let's go back over the basics real quick.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: DynamoDB is made of tables.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 20:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And each table has primary keys that must be decided at creation time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Each table can have an infinite number of items, which are called rows, and each item will have attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 22:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: They're like columns that can be added over time, and they can be null.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 23:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: As I said, an item cannot be bigger than 400 kilobytes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And in terms of data types supported, you have scalar, so string, number, binary, Boolean, null.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 25:
- Concepts: Specialized Data Models
- Services: (none explicit)
- Key Insights: You get document types such list, map.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 26:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you get set types such as string set, number set, and binary set.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 27:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, primary key is more important.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 28:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So option one, you get just a partition key, and it's called a HASH.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 29:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And in this case, the partition key must be unique for each item.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 30:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The whole idea behind the primary key is the uniqueness.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 31:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And so the partition key must be diverse enough so that the data is going to be distributed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 32:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: For example, if you have a users table, user_id is going to be a great partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 33:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So we'll have the partition key, and then we'll have a bunch of attributes such as First Name and Age.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 34:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this gives us the kind of users like this.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 35:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So for John, there will be a user_id, and for Katie, another user_id.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 36:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so this user_id is great.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 37:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We only have one.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's unique.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 39:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So it's a great choice for a partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 40:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: The other option is to use a partition key that's going to be a primary key that's going to be composites.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 41:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And so it's called a partition key plus a sort key, in which case what must be unique is the combination of the two.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 42:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So the partition key itself can be repeated as long as the sort key associated with it is going to be different every time.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 43:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: The data is going to be grouped logically on the tables by partition key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 44:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's also common to see the sort key being called a range key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 45:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: For example, if you have users-and-games table, user_id would be great for the partition key, and game_id would be great for the sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 46:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it's possible that a user has multiple games, but each game_id and user_id combination is going to be unique, hence this is a great choice.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 47:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Another good choice for a sort key is usually timestamp.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 48:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So you're trying to describe something that happens over time for a specific user_id and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 49:
- Concepts: NoSQL Access Patterns, Selection and Trade-off Analysis
- Services: (none explicit)
- Key Insights: You will choose user_id for partition key, and you will choose a timestamp column for the sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 50:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here's the example for user_id and game_id.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 51:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: We have the partition key and the sort key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 52:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And together, as a composite key, they are unique, and the result can be some of the attributes.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 53:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So again, here's an example, for this user_id, 12 something 45.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 54:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then there's two games that have been played.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 55:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: One was won, and one was lost.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 56:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so we can see that the combination of the user_id and the game_id in this case is unique.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 57:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Okay, hopefully all of this is not new to you.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 58:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Then we have indexes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 59:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Object is made of a partition key, a sort key that is optional, and some attributes.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 60:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And so we can define some indexes on top of it.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 61:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: So the first one is an LSI, or Local Secondary Index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 62:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: You need to make sure the partition key is kept.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 63:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And you will just select an alternative sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 64:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And this LSI, or Local Secondary Index, must be defined at table creation time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 65:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: It cannot be defined afterwards.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 66:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: The other index you have is in case you want to change the primary key.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 67:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: Then it's called a GSI for Global Secondary Index.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 68:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: In this case, you can change the primary key, and you can also optionally have a sort key.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 69:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it can be defined after the table is created.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 70:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So the idea in DynamoDB is that you can only query by primary key plus sort key on the main table and the indexes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-pattern design signal.

Line 71:
- Concepts: Relational Consistency and HA
- Services: Amazon RDS
- Key Insights: So it's not like RDS, where you can query any single column and any single rows.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 72:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In DynamoDB, you need to think about what your queries are going to be and create the right indexes for these queries for it to work.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 73:
- Concepts: NoSQL Access Patterns, Relational Consistency and HA
- Services: Amazon DynamoDB, Amazon RDS
- Key Insights: So this is a major difference between a traditional RDBMS such as RDS and a NoSQL database such as DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 74:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: In our case, in DynamoDB, if you want to query something, you need to make sure an index has been created for it in advance.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 75:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Now, DynamoDB is a point of focus on the Developer exam, little less on the Solutions Architect Pro.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 76:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So you don't need to know all the details, but remember, between the LSI and the GSI, but remember that you need an index if you want to query a specific attribute in DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 77:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so some important features of DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 78:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Number one is TTL, which is to make a row expire after a specific amount of time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 79:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: We have DynamoDB Streams where we want to react to changes in DynamoDB tables in real time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 80:
- Concepts: Database Operational Context
- Services: AWS Lambda, Amazon EC2
- Key Insights: So this is a very common architecture, and this stream can be read by Lambda, very commonly, or EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 81:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You get 24 hours retention of data in that stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 82:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here's a very common architecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 83:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You have Create, Read, Update, Deletes are done to a table and anything that modifies the table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 84:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So Create, Update, and Delete will be put into a DynamoDB stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 85:
- Concepts: Database Operational Context
- Services: AWS Lambda
- Key Insights: And that stream can be read by Lambda.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 86:
- Concepts: Database Operational Context
- Services: AWS Lambda, Amazon Kinesis, Amazon OpenSearch
- Key Insights: And then from Lambda, you can, for example, put the data into Amazon OpenSearch, or can Kinesis if you want it to have some downstream, maybe Kinesis analytics application on top of it.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 87:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So this is a very, very common solution architecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 88:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We also have global tables, which is basically a table that is going to be replicated across all your regions.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 89:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this is Active-Active type of replication, so you can have many regions.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 90:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And for this, you need to enable DynamoDB Streams first.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 91:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's very useful if you want to have low latency access to data into different regions, or you want to create a disaster recovery strategy that's going to have a very, very low RTO.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 92:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So here's the example.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 93:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: We have two tables, one in us-east-1 and the other one in ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 94:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And whatever we do to the table on us-east-1 is going to be replicated to the table in ap-southeast-2.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 95:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And similarly, whatever we do in ap-southeast-2 is going to be replicated back into us-east-1.
- Hidden/Implicit Meaning: Consistency and failover signal.

Line 96:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Kinesis
- Key Insights: Okay, you can use can Kinesis Data Streams with DynamoDB Streams.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 97:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: How does that work?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 98:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon Kinesis
- Key Insights: Well, we know that DynamoDB Streams will capture item-level changes, but we can now send these changes directly into a desired Kinesis data stream.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 99:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Why would you do that?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 100:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Well, we only have 24 hours of data retention in DynamoDB Streams.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 101:
- Concepts: Database Operational Context
- Services: Amazon Kinesis
- Key Insights: But with Kinesis Data Streams, we can get longer data retention period up to 365 days.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 102:
- Concepts: Database Operational Context
- Services: Amazon Kinesis
- Key Insights: Also, we could use the Kinesis-related tool suites to analyze the data.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 103:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 104:
- Concepts: NoSQL Access Patterns
- Services: Amazon Data Firehose, Amazon DynamoDB, Amazon Kinesis, Amazon OpenSearch, Amazon Redshift, Amazon S3
- Key Insights: So DynamoDB tables will push item-level changes in Kinesis data stream, and then we can use, for example, Kinesis Data Firehose to read this data and store it into the usual places, so Amazon S3, Redshift, or OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 105:
- Concepts: Database Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon Kinesis
- Key Insights: Or you could use Kinesis Data Analytics to analyze this data in real time and do some real-time computation such as some filtering, aggregation, transformation, and send that later on to Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 106:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So now let's get into solution architecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 107:
- Concepts: Database Operational Context
- Services: Amazon S3
- Key Insights: So we know that Amazon S3 is not a great way to search for objects, because it doesn't have any indexing capabilities.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 108:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And so what we wanna do is store some metadata information into DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 109:
- Concepts: Database Operational Context
- Services: AWS Lambda, Amazon S3
- Key Insights: So the way it works is that we will do writes to Amazon S3 buckets to add objects or update objects, and we'll have a Lambda function being triggered by the S3 events.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 110:
- Concepts: NoSQL Access Patterns
- Services: AWS Lambda, Amazon DynamoDB, Amazon S3
- Key Insights: This Lambda function is going to take the metadata of the objects we're trying to insert into Amazon S3 and insert this into a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 111:
- Concepts: NoSQL Access Patterns
- Services: (none explicit)
- Key Insights: And the cool thing about it is that now we can create an API to search for object metadata by creating the right indexes, the LSI and the GSI.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 112:
- Concepts: Database Operational Context
- Services: Amazon S3
- Key Insights: So some things we can do thanks to this architecture is now we can say, okay, give me all the objects by date in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 113:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or give me the total amount of storage used by a certain customer.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 114:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Or give me all the objects that have a certain attribute.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 115:
- Concepts: Database Operational Context
- Services: Amazon S3
- Key Insights: So by having these objects into S3 only, we could never answer these kind of queries.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 116:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: By having it into a DynamoDB table, it becomes quite trivial.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 117:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So finally, let's talk about caching in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 118:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So DAX, as you may know, is DynamoDB Accelerator.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 119:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And it is a seamless cache for DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 120:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You don't need to rewrite your application.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 121:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And all the writes we go through DAX to DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 122:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: And what this gives you is micro-second latency for cache reads and queries, which is very handy.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 123:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It solves the hot key problem.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 124:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So if there is, in DynamoDB, a specific row that is being read too many times because it is very popular, then you're gonna get a throttling issue in DynamoDB, in which case, creating a DAX cluster in front of the DynamoDB is going to solve that problem for you by caching that row and making sure it doesn't ever reach DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 125:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: By default, your data is going to be cached for five minutes in your DAX, and there will be the TTL.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 126:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Then the data will have to be re-fetched from DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 127:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: You can get up to 10 nodes in the cluster.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 128:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it could be multi-AZ, in which case, AWS recommends you three nodes minimum for production.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 129:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It's also secure.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 130:
- Concepts: Database Operational Context
- Services: AWS CloudTrail
- Key Insights: You get encryption at rest with KMS, VPC integration, IAM, CloudTrail, and so on.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 131:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: And this is a default choice for a cache in DynamoDB.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 132:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But we'll have a bit of a discussion into the right strategy right after.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 133:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So the idea is your application wants to write to DynamoDB tables and read from them, and in the middle is going to be DAX.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 134:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And it's gonna be seamless for us.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 135:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: And it's going to cache the right rows and make sure we get the right performance where we need it.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 136:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: So the question is, from an architectural point of view, should you use DAX or ElastiCache for DynamoDB?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Access-pattern design signal.

Line 137:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: So as a very simple problem, when you have your clients who want to directly access DynamoDB, then the right answer is to use DAX.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 138:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: Because you will scan, you will have the individual objects being cached in DAX directly, and even the results of your query and your scan will be in DAX.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 139:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: But let's assume that your client, after retrieving a lot of the data, performs some heavy computation.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 140:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And this computation can take, I don't know, 10 seconds, 30 seconds.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 141:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: It can take a long time.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 142:
- Concepts: Caching and Latency Reduction
- Services: (none explicit)
- Key Insights: Then you will want to be able to cache the results of these computations somewhere.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 143:
- Concepts: Caching and Latency Reduction
- Services: Amazon ElastiCache
- Key Insights: And that's somewhere may be ElastiCache.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 144:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: So for example, ElastiCache index example could be a place where you want to store your aggregation results and make sure other clients can look into ElastiCache before getting data from DynamoDB to get the aggregation results.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 145:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: So it is one kind of architecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 146:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: You could also swap ElastiCache for DynamoDB itself and have a table act as a cache, it is possible.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 147:
- Concepts: Caching and Latency Reduction
- Services: Amazon ElastiCache
- Key Insights: But I want to show you here that DAX and ElastiCache can serve very different purposes, okay?
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 148:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: DAX is going to be for individual object cache and for query and scan caches in DynamoDB, whereas ElastiCache is for whatever you wanna put in it.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 149:
- Concepts: Caching and Latency Reduction, NoSQL Access Patterns
- Services: Amazon DynamoDB, Amazon ElastiCache
- Key Insights: So it's very possible for you to perform some heavy computations and cache them centrally in the ElastiCache to avoid going back to DAX and DynamoDB and do some expensive computations again.
- Hidden/Implicit Meaning: Access-pattern design signal.

Line 150:
- Concepts: NoSQL Access Patterns
- Services: Amazon DynamoDB
- Key Insights: Okay, so that's it into DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 151:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: Remember, it's from the architectural point of view.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 152:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: This is all you need to know for the exam.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

Line 153:
- Concepts: Database Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes db behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Caching and Latency Reduction
- Database Operational Context
- Database Operations and Resilience
- NoSQL Access Patterns
- Relational Consistency and HA
- Selection and Trade-off Analysis
- Specialized Data Models

### 2. Services List
- API Gateway
- AWS Backup
- AWS Batch
- AWS CloudFormation
- AWS CloudTrail
- AWS Config
- AWS Database Migration Service
- AWS Glue
- AWS Lambda
- AWS SAM
- AWS X-Ray
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon EFS
- Amazon ElastiCache
- Amazon Kinesis
- Amazon Lex
- Amazon OpenSearch
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon Translate
- Auto Scaling
- Elastic Load Balancing

### 3. Features List
- dax
- dynamodb
- elasticache
- gsi
- lsi
- rds

### 4. Use Cases
- 273_DynamoDB - Time To Live (TTL).txt:5: And so what happens is that whenever the current time goes over that number, then the item will be marked for expiration and then deleted within a few days after expiration.
- 273_DynamoDB - Time To Live (TTL).txt:12: So this Time To Live feature is really great and has a few use cases.
- 273_DynamoDB - Time To Live (TTL).txt:13: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.
- 036_Database Scaling_ Vertical vs. Horizontal.txt:7: So for example, let's assume that we have an RDS instance and the instance type is an m7 I large instance with two virtual CPUs and eight gigs of memory.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:98: Let's see what happens when I click Create item.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:105: So other attributes like for example the author.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:148: We saw that we couldn't do this before when we were only using the partition key.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:162: It lets you store multiple related items like for example, multiple reviews for the same book, and it keeps them neatly grouped together.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:163: And if we have more books, for example, let's call it book 002 with a review ID of review 001.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:1: So we're going to talk about a really important topic here when it comes to designing your DynamoDB table.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:3: So when you create a DynamoDB table, you need to decide how you want AWS to manage your capacity.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:14: It'll adjust them up or down automatically when your workload changes.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:27: Like for example, they'll figure out how much read and write capacity you need for your DynamoDB table.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:37: So when you use provisioned mode you need to specify read capacity units for reads and write capacity units for writes.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:61: So instead of 5.6kB when it comes to your write capacity units, each of those items is going to be considered six kilobytes.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:75: This is the default mode where when a read occurs, it might potentially return slightly stale data for a brief moment after a write.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:125: So basically telling your application, hey, when we get this error just wait.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:135: So when you read or write data, DynamoDB uses a hash function on your partition key to decide which partition to use.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:139: Like let's say for example, you are using um author as a partition key for books, and maybe one author has written a lot of books.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:160: Or maybe you've got event driven systems, for example, like lambda triggers that are going to create these read and write operations on your DynamoDB table when you don't really know what you're going to need.
- 041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt:74: So that's how auto scaling can potentially save you money is by bringing those read and write capacity units down to an absolute minimum when you don't need them.
- 042_DynamoDB API Basics for Cert Prep.txt:1: In this hands on demo, we're going to learn a little bit about the API calls that are used in the background when you're working with a DynamoDB table.
- 042_DynamoDB API Basics for Cert Prep.txt:12: So when you're using the AWS console, you're basically just issuing API calls in the background.
- 042_DynamoDB API Basics for Cert Prep.txt:14: So for example let's run a scan operation.
- 042_DynamoDB API Basics for Cert Prep.txt:28: So for example, if I create a new book ID called book 003 and I can add additional attributes to that.
- 042_DynamoDB API Basics for Cert Prep.txt:29: So for example I can add an author and whatever I want to put here.
- 042_DynamoDB API Basics for Cert Prep.txt:30: The point is when I create this new item we are now issuing a put item API call to the DynamoDB service, so it's going to create a new item in the table.
- 042_DynamoDB API Basics for Cert Prep.txt:33: And when I click on it it's going to get that item.
- 042_DynamoDB API Basics for Cert Prep.txt:34: So when I click on my newly created item it's going to open this little item editor and display the contents of that item in the background.
- 042_DynamoDB API Basics for Cert Prep.txt:62: So let's imagine for example in this scenario that the sort key was a date like a timestamp.
- 042_DynamoDB API Basics for Cert Prep.txt:67: So for example review 001.
- 042_DynamoDB API Basics for Cert Prep.txt:72: So when I run this query there you can see the results.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:6: We don't want to have to look through the entire table when we want to perform a query.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:41: The lsis must be created when the table is created.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:47: So for example, let's say that we have a book with the partition key of B001.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:55: And in a global secondary index is going to allow you to define a new primary key, not a sort key, but a primary key, meaning that you can query your data in in a totally different way than your base table allows.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:71: Like for example, we don't have enough write capacity units for the global secondary index because every time data is written, DynamoDB must update its table, but it also has to update the global secondary index as well.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:74: So when you write to a DynamoDB table that has a global secondary index, DynamoDB actually has to do two separate writes behind the scenes.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:82: And so when you're thinking about these secondary indexes, you really want to start from a perspective of what are the questions that my application is going to need to ask?
- 044_Hands-On_ Configure DynamoDB Indexes.txt:14: We have to do that when we are creating the table.

### 5. Constraints / Limitations
- 273_DynamoDB - Time To Live (TTL).txt:3: And this timestamp must be an attribute from within the item, and it should be a number.
- 273_DynamoDB - Time To Live (TTL).txt:13: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.
- 036_Database Scaling_ Vertical vs. Horizontal.txt:2: So let's imagine that our application is taking off, that we have a lot of traffic and it's only growing.
- 036_Database Scaling_ Vertical vs. Horizontal.txt:14: There's only so much we can do to make one specific instance more powerful.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:19: And what I mean by that is that every single book that we enter into this table should have a different, unique book ID, so that all of the items in the table end up getting distributed equally across different partitions.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:100: And it's going to tell me no, you can't do that.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:133: So every item that I put in this table must have a book ID and a review ID, and then we'll add some new attributes here.
- 039_Hands-On_ Create a DynamoDB Table with Partition and Sort Keys.txt:148: We saw that we couldn't do this before when we were only using the partition key.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:22: So it'll scale up and scale down in real time, and you'll pay for only what you use.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:55: That's your required throughput.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:80: You only get one strongly consistent read per read capacity unit.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:115: And what we come up with is eight times two equals 16 read capacity units required to perform these read operations.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:116: So with these provisioned capacity options, you kind of have a very strict limitation on the number of reads and writes that can occur per second.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:120: DynamoDB will actually allow you to burst beyond your limits using a burst capacity pool.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:123: That'll basically mean your app is is reading or writing too fast for the provisioned limits.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:146: We're funneling all of the traffic, or I should say, a large portion of the traffic into a limited set of partitions.
- 041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt:14: But I'm only going to pay for the capacity that I actually use.
- 041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt:23: You used to only be able to switch once per 24 hours.
- 041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt:64: So it should scale down to the minimum.
- 041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt:66: So hopefully we should see this thing scale down to one.
- 041_Hands-On_ Configure DynamoDB Capacity - Provisioned and On-Demand.txt:79: If you want to just set an absolute maximum to control what your bill could potentially be, you can choose these boxes here and say, you know, maybe I want to limit it to ten or read request units and so on and so forth.
- 042_DynamoDB API Basics for Cert Prep.txt:51: And it should find the item that matches that query.
- 042_DynamoDB API Basics for Cert Prep.txt:58: And one of the important things about this book reviews table all is that we had not only a partition key, but we also had a sort key here as well.
- 042_DynamoDB API Basics for Cert Prep.txt:59: So let's try running a query with not only a partition key, but with a key condition expression with a sort key as well.
- 042_DynamoDB API Basics for Cert Prep.txt:64: Or maybe I only want to see review scores that are are lower than a four.
- 042_DynamoDB API Basics for Cert Prep.txt:69: And it should just return this first result here.
- 042_DynamoDB API Basics for Cert Prep.txt:71: It should only return review 001 for book 001.
- 042_DynamoDB API Basics for Cert Prep.txt:83: You should just drop the entire table.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:41: The lsis must be created when the table is created.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:42: You cannot add them later.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:46: There is a ten gigabyte item collection limit, so each partition key in all of the related items can't exceed ten gigabytes total.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:48: Well, all of the items with that particular partition key cannot exceed ten gigabytes.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:50: And you can't delete Lcis once they're created.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:71: Like for example, we don't have enough write capacity units for the global secondary index because every time data is written, DynamoDB must update its table, but it also has to update the global secondary index as well.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:72: And if it can't do that, then DynamoDB won't be able to perform its write.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:78: And those writes must succeed together.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:84: And then design your indexes around those queries and only those queries that are going to happen frequently in real life.
- 044_Hands-On_ Configure DynamoDB Indexes.txt:78: Now for book 102 that should be all of the ratings.
- 044_Hands-On_ Configure DynamoDB Indexes.txt:79: So actually let's make it greater than or equal to four so that it only returns one result.
- 044_Hands-On_ Configure DynamoDB Indexes.txt:85: I've also said though that the reviewer name attribute must be equal to Dennis.

### 6. Patterns / Architectures
- 036_Database Scaling_ Vertical vs. Horizontal.txt:33: They're not built for these massive global scale out architectures.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:1: So we're going to talk about a really important topic here when it comes to designing your DynamoDB table.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:130: Or maybe we need to redesign our partition keys to spread load more evenly.
- 040_Understanding DynamoDB Capacity - Properly Size DynamoDB and Reduce Costs.txt:159: Or maybe you've got a new application where you don't know what the traffic patterns are going to be.
- 043_DynamoDB Indexes â€” Search Effectively with LSI and GSI.txt:84: And then design your indexes around those queries and only those queries that are going to happen frequently in real life.
- 312_DynamoDB - Section Introduction.txt:8: In this section, We're going to dedicate a lot of time to learn how to properly design your DynamoDB tables, how to enable streams and make sure your DynamoDB tables are going to be fully secured.
- 313_DynamoDB Overview.txt:2: So if you consider the traditional architecture that we've seen in and out in this course, we have clients and they connect to an application layer that could be made of an elastic load balancer, and EC2 instances that are grouped, and scaling with an auto scaling group.
- 313_DynamoDB Overview.txt:21: But the good thing out of it is that thanks to the design, the NoSQL databases will scale horizontally.
- 320_DynamoDB Indexes (GSI + LSI).txt:9: So you need to have some careful thinking into how you want your table to be designed.
- 324_DynamoDB DAX.txt:31: So this could be a good way to actually use them both together in the architecture.
- 326_DynamoDB Streams.txt:11: So if we look at the architecture of DynamoDB Streams, so we have our application, which does create, update, and deletes operations on our table, and any of these changes is going to appear in a DynamoDB Stream.
- 326_DynamoDB Streams.txt:14: The cool thing about this architecture is that it's pretty much everything is managed by AWS.
- 326_DynamoDB Streams.txt:19: So this gives you a different kind of architectures and all the possibilities that open up by using DynamoDB Streams.
- 088_DynamoDB.txt:4: It's going to have a similar architecture to Apache Casandra, and users of Cassandra can migrate to DynamoDB, for example.
- 088_DynamoDB.txt:11: So provision is going to give you the smoothest type of scaling and a better cost, whereas on-demand is gonna be very helpful if you don't know your patterns in advance, or you're doing some development, et cetera, et cetera.
- 088_DynamoDB.txt:80: So this is a very common architecture, and this stream can be read by Lambda, very commonly, or EC2.
- 088_DynamoDB.txt:82: So here's a very common architecture.
- 088_DynamoDB.txt:87: So this is a very, very common solution architecture.
- 088_DynamoDB.txt:106: So now let's get into solution architecture.
- 088_DynamoDB.txt:112: So some things we can do thanks to this architecture is now we can say, okay, give me all the objects by date in Amazon S3.
- 088_DynamoDB.txt:145: So it is one kind of architecture.

## Step 3 - Deep Expansion (Database Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Backup: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Database Migration Service: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Caching and Latency Reduction: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Database Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Database Operations and Resilience: treat this as a design lever that changes topology, risk posture, or operational workflow.
- NoSQL Access Patterns: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Relational Consistency and HA: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Selection and Trade-off Analysis: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Specialized Data Models: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed relational database | RDS / Aurora | Azure SQL / PostgreSQL / MySQL | Cloud SQL / AlloyDB |
| Key-value NoSQL | DynamoDB | Cosmos DB / Table API | Firestore / Bigtable |
| Managed cache | ElastiCache / MemoryDB | Azure Cache for Redis | Memorystore |
| Document database | DocumentDB | Cosmos DB / MongoDB-compatible services | MongoDB Atlas / Firestore document patterns |
| Graph and time-series | Neptune / Timestream | Cosmos graph / Data Explorer time-series patterns | Neo4j / Bigtable / time-series patterns |
| Cassandra-compatible managed service | Keyspaces | Managed Cassandra / Cosmos Cassandra API | Managed Cassandra on GCP ecosystems |

### Trade-offs and Decision Notes
- Database Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Database architecture follows workload shape: relational, key-value, cache, document, graph, or time-series.
- Durability, consistency, and scaling trade-offs must be explicit at design time.

### Phase 2 - Core Services
- Implement replication, indexing, and latency controls based on real access patterns, not vendor labels.
- Operational safety depends on backup, restore, security, and connection management discipline.

### Phase 3 - Advanced Patterns
- Use caching and specialized engines deliberately to isolate hot paths from persistence concerns.
- Selection quality improves when trade-offs are documented as failure behavior, not feature checklists.

### Phase 4 - System Design
- Reference architecture: transactional core, access-optimized accelerators, and operational recovery workflows.
- Scaling considerations: partition balance, replica lag, connection storms, and hot key risk.
- Cost considerations: always-on relational sizing, cache duplication, and overfitted specialized engines.
