# 05_AWS_Analytics_Services.md

## Scope
- Topic: EMR, Athena, Redshift, OpenSearch, and managed analytics services
- Files processed: 9
- Extracted non-empty transcript lines: 378
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Data Engineering Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Data Engineering: AWS Analytics Services)

This section is the study-first architecture guide for emr, athena, redshift, opensearch, and managed analytics services.

### Phase 1 - Foundations

#### Module: AWS Analytics Services Mental Model
- Use aws analytics services decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: AWS Analytics Services Mental Model
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/027_[SAA_DVA_SOA] Amazon Athena.txt
- outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/436_Amazon Athena - Overview.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/050_OpenSearch - Advanced.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/049_[SAA] OpenSearch.txt
- outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/435_Amazon OpenSearch Service - Overview.txt
- outputs/AWS Speciality/Security/09_Other Services/272_Redshift Security.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/029_Amazon Athena - Troubleshooting.txt
- Top concept clusters from transcript metadata:
- Analytical Storage and Query
- Distributed Processing
- Consumption and BI
- Data Engineering Operational Context
- Pipeline and Ingestion Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 9
- Module-selected transcript files: 7
- Key insight candidates scanned (topic): 378
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- So the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.

##### Polished Architect Notes
- Transcript signals that and then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Transcript signals that and because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Transcript signals that so the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Transcript signals that for example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- Transcript signals that and so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- Transcript signals that so if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- Transcript signals that so the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- Transcript signals that so you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- Transcript signals that for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Transcript signals that now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- Transcript signals that and as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Transcript signals that and first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.

##### Architect Synthesis (Transcript-Derived)
- Treat Analytical Storage and Query as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Distributed Processing as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption and BI as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Engineering Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Pipeline and Ingestion Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Design implication: and because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Design implication: so the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Design implication: for example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- Design implication: and so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/050_OpenSearch - Advanced.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/027_[SAA_DVA_SOA] Amazon Athena.txt
- outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/436_Amazon Athena - Overview.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/049_[SAA] OpenSearch.txt
- outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/435_Amazon OpenSearch Service - Overview.txt
- outputs/AWS Speciality/Security/09_Other Services/272_Redshift Security.txt
- Top concept clusters from transcript metadata:
- Distributed Processing
- Consumption and BI
- Data Engineering Operational Context
- Analytical Storage and Query
- Pipeline and Ingestion Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 9
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 378
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- We have two deployment modes and the first one is public access, so this makes your OpenSearch cluster accessible from the internet with a public endpoint.
- Then we'll check whether or not the IAM credentials are valid and then whether or not the access policy allows the client to access our OpenSearch cluster.
- So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- So OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- And so we'll get the credentials, we'll get the temporary credentials out of it, and then we can connect to our Redshift cluster.

##### Polished Architect Notes
- Transcript signals that and because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Transcript signals that so the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Transcript signals that for example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- Transcript signals that for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Transcript signals that and then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Transcript signals that and as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Transcript signals that and first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- Transcript signals that we have two deployment modes and the first one is public access, so this makes your OpenSearch cluster accessible from the internet with a public endpoint.
- Transcript signals that then we'll check whether or not the IAM credentials are valid and then whether or not the access policy allows the client to access our OpenSearch cluster.
- Transcript signals that so that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- Transcript signals that so OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- Transcript signals that and so we'll get the credentials, we'll get the temporary credentials out of it, and then we can connect to our Redshift cluster.

##### Architect Synthesis (Transcript-Derived)
- Treat Distributed Processing as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption and BI as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Engineering Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Analytical Storage and Query as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Pipeline and Ingestion Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Design implication: so the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Design implication: for example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- Design implication: for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Design implication: and then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/027_[SAA_DVA_SOA] Amazon Athena.txt
- outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/436_Amazon Athena - Overview.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/050_OpenSearch - Advanced.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/049_[SAA] OpenSearch.txt
- outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/435_Amazon OpenSearch Service - Overview.txt
- outputs/AWS Speciality/Security/09_Other Services/272_Redshift Security.txt
- Top concept clusters from transcript metadata:
- Analytical Storage and Query
- Consumption and BI
- Distributed Processing
- Data Engineering Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 9
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 378
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- So therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- Now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- So we can go very fine grained based on the domain access policy and that's how you manage security in OpenSearch.
- So now let's talk about Amazon Redshift security.
- So now let's talk about OpenSearch security.
- And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.

##### Polished Architect Notes
- Transcript signals that and then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Transcript signals that so the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Transcript signals that so if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- Transcript signals that for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Transcript signals that so therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- Transcript signals that now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- Transcript signals that so all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- Transcript signals that so we can go very fine grained based on the domain access policy and that's how you manage security in OpenSearch.
- Transcript signals that so now let's talk about Amazon Redshift security.
- Transcript signals that so now let's talk about OpenSearch security.
- Transcript signals that and because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Transcript signals that for example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.

##### Architect Synthesis (Transcript-Derived)
- Treat Analytical Storage and Query as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption and BI as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Distributed Processing as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Engineering Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Design implication: so the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Design implication: so if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- Design implication: for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Design implication: so therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.

### Phase 2 - Core Services
- Amazon Athena should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- Amazon QuickSight should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- AWS CloudTrail should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Analytical Storage and Query becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Consumption and BI becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Engineering Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Distributed Processing becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lakehouse Governance becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design aws analytics services with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when aws analytics services decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Signal 2: And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Signal 3: Transcript signals that for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Signal 4: Transcript signals that and as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Signal 5: Design implication: for VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Signal 6: Key Insights: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- Signal 7: Key Insights: So I'm going to launch the query editor, and here we have access to our UI, and before we run our first query, we need to set up a query result location in Amazon S3.
- Signal 8: Key Insights: So I'm going to go into the S3 console and I'm going to create a bucket.
- Signal 9: Key Insights: I'm going to just create this bucket.
- Signal 10: Key Insights: Okay, so my bucket is now created, click on view details and I'm going to just copy this right here and paste it here, so S3.

### Service-Specific Lab Paths
### Activity 1: Amazon S3 Lab for EMR, Athena, Redshift, OpenSearch, and managed analytics services
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

### Activity 2: Amazon CloudWatch Lab for EMR, Athena, Redshift, OpenSearch, and managed analytics services
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

### Activity 3: Amazon DynamoDB Lab for EMR, Athena, Redshift, OpenSearch, and managed analytics services
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

### Activity 4: Amazon EC2 Lab for EMR, Athena, Redshift, OpenSearch, and managed analytics services
- AWS console path: AWS Console -> EC2 -> Instances
- Azure equivalent: Azure Virtual Machines
- GCP equivalent: Compute Engine
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Instances.
3. Build: Launch one small instance with default VPC.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check instance running state and system status checks.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Terminate instance and remove extra volumes.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study EMR, Athena, Redshift, OpenSearch, and managed analytics services in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
| Amazon DynamoDB | Amazon DynamoDB | Azure Cosmos DB | Firestore |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |

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

- No secondary referral sources were required for this topic.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/027_[SAA_DVA_SOA] Amazon Athena.txt

Line 1:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So now, let's talk about Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So Athena is a serverless query service to help you analyze the data stored in Amazon S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And to analyze this data, you're going to use the standard SQL language to query the files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Behind the scenes, Athena is built on the Presto engine, which uses the SQL language.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 5:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So Athena is serverless, and it analyzes directly your data living in your S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it supports different formats, such as CSV, JSON, ORC, Avro, and Parquet, and possibly others.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And the pricing is very simple.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You're just going to pay a fixed amount per terabytes of data scanned.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You don't need to provision any database again, because the whole service is serverless.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon QuickSight, Amazon RDS
- Key Insights: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon QuickSight, Amazon S3
- Key Insights: So we'll see Quicksight later in depth, but Amazon Quicksight connects to Athena, which connects to your S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Analytical Storage and Query, Consumption and BI, Pipeline and Ingestion Design
- Services: Amazon Athena
- Key Insights: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: AWS CloudTrail, Amazon VPC Flow Logs, Elastic Load Balancing
- Key Insights: So it could be your VPC flow logs, your load balancer logs, your CloudTrail trails, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So first of all, because you pay for the amount of data scanned per terabyte, you need to use a type of data where you're going to scan less data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Lakehouse Governance
- Services: AWS Glue
- Key Insights: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Distributed Processing, Lakehouse Governance
- Services: AWS Glue
- Key Insights: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Now, also because we want to scan less data, we need to compress data for smaller retrievals.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So there are different compression mechanisms you can use that have listed it right here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon S3
- Key Insights: Next, if you know you're going to query all the time on some specific columns, you can partition your datasets, and partition datasets means that in your S3 bucket, you're going to have the full path with slashes, and each slash will be a different column name with a specific value.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 25:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon S3
- Key Insights: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 26:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: So here's an example of data partitions.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we have flight data in Parquet formats, and then we do /year=1991.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: So we partition by year, and we'll have one folder for each year.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 29:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Then within each year we'll have month, so month equals one, and within each month we'll have days, this equals one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: Therefore, we'll have really, really good partitioning.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 32:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: Finally, the last performance improvement you need to do, is to use bigger files, it's to minimize your overheads.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Another feature of Amazon Athena is the Federated Query.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 35:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 36:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: How?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Well, you use what's called a Data Source Connector.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda
- Key Insights: It's a Lambda function, and that Lambda function is going to run the Federated Queries in other services.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: Amazon CloudWatch, Amazon DynamoDB, Amazon RDS
- Key Insights: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 40:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it's very powerful.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 41:
- Concepts: Analytical Storage and Query
- Services: AWS Lambda, Amazon Athena
- Key Insights: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 42:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon Aurora, Amazon DynamoDB, Amazon EMR, Amazon ElastiCache, Amazon Redshift
- Key Insights: And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 43:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: They're clear from Athena, as well as, of course, Amazon S3, and you can do your drawings, and you can do your competitions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 44:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: That's why it's called a Federated Query.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 45:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: And then the results of this query can be stored into your Amazon S3 buckets for later analysis.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 46:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So that's it for Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 47:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it's a very powerful service.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 48:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt

Line 1:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So let's use the Athena service to query data from an S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: So I'm going to launch the query editor, and here we have access to our UI, and before we run our first query, we need to set up a query result location in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's edit the setting.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: In here you must enter an S3 bucket where you're going to put your query results.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: So I'm going to go into the S3 console and I'm going to create a bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So I'll call this one, AWS Athena Stephane, I am in EU Central One, V two.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Alright, so this should be a unique bucket name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'm going to just create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: Okay, so my bucket is now created, click on view details and I'm going to just copy this right here and paste it here, so S3.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: And you can make sure that you can browse S3?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 12:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: And we can also type, for example, Athena here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we'll take this one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Consumption and BI
- Services: AWS SAM
- Key Insights: Same method, same result, but this is a bit safer to not make any typo.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: Alright, so I'm going to save this and this is where my query results are going to be saved.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Now in our editor, we're going to first run our queries and we're going to run our queries on the specific bucket, which is our access log.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: So I'm going to have my S3 access logs that I have bucket here and I want to query all my objects in this bucket, so as you can see, they're here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what I need to do is that I need to go into my code editor right here and then we first create a database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 19:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So we here under S3 advanced Athena S3 Access Log that's SQL.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: We have created a database S3 access logs DB.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 21:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So this is going to create a database here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: And so, as you can see, on the left hand side now, I have the default database and now I have my S3 access logs DB.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So this is the one I want to select and we have created it from within Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Next we run a query and this is a query to create a table in Athena to represent our access logs.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so here it is.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so I'm going to first remove the first line.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 27:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: Okay, so this query, I got it from the Amazon S3 and Athena documentation, which gives you this entire query.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And the only thing you have to modify is to actually change the location.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we need to have the target bucket name and the prefix in there.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So actually if you go in here and you go to properties, we have the bucket name right here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to paste this in, like this.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 32:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And for the prefix, we actually don't need anything right now because it seems that in my bucket, all my objects are at the top level.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But if you had a folder, you need to add the prefix as well by adding a slash and then the name of the prefix.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But for now I'm good.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 35:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So I'm going to run this query and we need to have a trailing slash at the end.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 36:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So let's add a trailing slash and run this query again.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my table has now been created and you can see on the left hand side that we do have access to our table as well as all the fields we have created.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what I can do now is click on these three dots and then just click on preview table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And this is going to query 10 rows from my data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 40:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so if I scroll down, you can see here that I have 10 results and we can see the bucket owner, the bucket, the request date time, the IP, the requester, request ID, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 41:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: So this is very handy because while we get a lot of information directly coming from our data in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 42:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Admittedly it is way easier to use this than to look within all these files individually.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 43:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So Athena makes it super easy for us.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 44:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But so we can do more advanced queries.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 45:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: For example, I'm going to just create a new query sheet right here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 46:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You can do some aggregations.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 47:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So here we're going to count all the requests by HTP status and by request URI operation.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 48:
- Concepts: Pipeline and Ingestion Design
- Services: (none explicit)
- Key Insights: So this is this kind of analytics and statistics you may want to run on your table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 49:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: (none explicit)
- Key Insights: So we're going to run this query and it takes a bit more time because it looks at all your data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 50:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so it scans about 30 megabytes of data and as we can see, we see that we get 404 to B142, head 200 to B101.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 51:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: We have empty about 300,000 empty rows or 200,000 empty rows and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 52:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we get just the results of what we're interested into.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 53:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 54:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: This is the kind of analysis you would do by running these queries.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 55:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: You can also have a look at unauthorized query for two.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 56:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: For example, to see if someone is trying to get unauthorized access to to your bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 57:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I'm running this one because 403 is the unauthorized thing, and I'm looking at all these rows and look like, okay, indeed, a lot of these rows represent unauthorized access and I can look into them and see if that was made on purpose or what that means.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 58:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, that is all very interesting to you.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 59:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: The idea here is that I just used the Athena service to query my data in Amazon S3, very easily, without setting up any kind of server.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 60:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: It's all done serverless.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 61:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And all we had to do is to create our database first and then create our table within a database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 62:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: And we were good to go to use SQL language to query our data directly from within Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 63:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it's one of the easiest and greatest service of AWS.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 64:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/029_Amazon Athena - Troubleshooting.txt

Line 1:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon QuickSight
- Key Insights: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what could be happening?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon QuickSight, Amazon S3
- Key Insights: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Consumption and BI
- Services: Amazon QuickSight, Amazon S3
- Key Insights: So please make sure that QuickSight has the GetObject permission onto your S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 5:
- Concepts: Consumption and BI
- Services: Amazon ECR, Amazon QuickSight, Amazon S3
- Key Insights: The second thing is that if the data in the S3 bucket is encrypted using a KMS key, so using the SSE-KMS type of encryption, then you make sure the QuickSight IAM role must be granted access to decrypt with the key, to do a kms:Decrypt.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we'll see how to create a grant when we go into the last section, the last domain, to talk about KMS, we talk about KMS grants in details.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Consumption and BI
- Services: Amazon QuickSight, Amazon S3
- Key Insights: But you need to do a grant on what's called the IAM role of QuickSight to grant the role access to the underlying KMS key of the S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Consumption and BI
- Services: Amazon QuickSight
- Key Insights: And so there are two kinds of roles that QuickSight can be using.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: It doesn't really matter, you don't need to know them, okay?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But there is a service role and there is a consumer's role.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Consumption and BI
- Services: Amazon QuickSight
- Key Insights: And whatever role QuickSight is using should be the one you grant access to the KMS key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon ECR, Amazon QuickSight
- Key Insights: And after granting access then these roles can do a kms:Decrypt and you will have solved your insufficient permissions problem between QuickSight and Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/049_[SAA] OpenSearch.txt

Line 1:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So now, let's talk about the Amazon OpenSearch Service.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: An Amazon OpenSearch is a successor to something you may have heard before called, Amazon ElasticSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So the name change was due to some licensing issues.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Analytical Storage and Query
- Services: Amazon DynamoDB
- Key Insights: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: But with OpenSearch, you can actually, as the name indicates, search any fields, even for partial matches.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So it's very common to use OpenSearch to provide search to your application.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: And so you would use OpenSearch as a compliment to another database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Distributed Processing
- Services: Amazon OpenSearch
- Key Insights: So you have two modes to provision an OpenSearch Cluster.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 10:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: Either you use the managed cluster option and then actual physical instances will be provisioned for you and you will see them.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 11:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: Or you can go the serverless route and have a serverless cluster, where everything from scaling to operations is handled by AWS.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 12:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon OpenSearch
- Key Insights: And OpenSearch has its own query language, it does not natively support SQL, but you can enable SQL compatibility via a plugin.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Streaming State and Time
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis
- Key Insights: So you can ingest data from different places, such as Kinesis Data Firehose, IoT, CloudWatch Logs, or any of your custom-built application.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You have security provided through integration with Cognito, IAM, you get at rest encryption and in-flight encryption.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Consumption and BI, Pipeline and Ingestion Design
- Services: Amazon OpenSearch, Amazon RDS
- Key Insights: And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So here are some common patterns to use OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Data Engineering Operational Context
- Services: Amazon DynamoDB
- Key Insights: So you would have DynamoDB and it will contain your data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: This is where your users will insert and delete and update data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 19:
- Concepts: Pipeline and Ingestion Design
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: And then you send all the streams in a DynamoDB Stream, which is then picked up by a Lambda Function.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And that Lambda Function will insert the data into Amazon OpenSearch in real time.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 21:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And through this process, what happens that your application now has the ability to search for a specific item.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: For example, to do a partial search with the item name and then find the item ID out of it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: Amazon DynamoDB
- Key Insights: And then once the item ID is obtained, then it will call DynamoDB to actually retrieve the full item from your DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Consumption and BI
- Services: Amazon DynamoDB, Amazon OpenSearch
- Key Insights: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Data Engineering Operational Context
- Services: Amazon CloudWatch, Amazon OpenSearch
- Key Insights: There's also other ways you can ingest CloudWatch Logs into OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon CloudWatch
- Key Insights: So the first one is to use what's called a CloudWatch Log Subscription Filter, sending data in real time to a Lambda Function that is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And then the Lambda Function in real time sends all the data into Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: Amazon CloudWatch
- Key Insights: Or you can also use a CloudWatch Logs and then Subscription Filter.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 29:
- Concepts: Streaming State and Time
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: But this time Kinesis Data Firehose can read it from the Subscription Filter.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Data Engineering Operational Context
- Services: Amazon Data Firehose, Amazon OpenSearch
- Key Insights: And then near real time, because this is Data Firehose, data will be inserted in Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Pipeline and Ingestion Design, Streaming State and Time
- Services: Amazon Kinesis, Amazon OpenSearch
- Key Insights: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 32:
- Concepts: Streaming State and Time
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: The first one is to use Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: This is a near real time again type of service.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: You can optionally do some data transformation, using a Lambda Function and then send data into Amazon OpenSearch.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 35:
- Concepts: Pipeline and Ingestion Design, Streaming State and Time
- Services: AWS Lambda, Amazon Kinesis
- Key Insights: Or you can use Kinesis Data Streams again, but this time, you would create a Lambda Function that would read the data stream in real time.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 36:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And then you would write custom code to have the Lambda Function write to Amazon OpenSearch in real time.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/050_OpenSearch - Advanced.txt

Line 1:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So now let's talk about OpenSearch security.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Distributed Processing
- Services: Amazon OpenSearch
- Key Insights: We have two deployment modes and the first one is public access, so this makes your OpenSearch cluster accessible from the internet with a public endpoint.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So that means you can restrict access to OpenSearch using access policies identity-based policies, and IP-based policies.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So this is a kind of diagram of the authorization flow.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So the client will send a public request with HTTP basic credentials.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: They will check whether or not we require IAM signing of these credentials.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Then the signing, the credentials themselves are going to be verified whether or not they're valid.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And then if true, then the fine-grained access control will see if the user is allowed to perform the action or not.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: And then OpenSearch will actually return full or partial data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what you have to remember out of public access is that if you want to restrict by IP, for example, this is based on public IP, of course.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Distributed Processing
- Services: Amazon OpenSearch
- Key Insights: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 12:
- Concepts: Distributed Processing
- Services: Amazon OpenSearch
- Key Insights: And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 13:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You can then restrict the VPC access using access policies and identity-based policies and as well your security groups.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Consumption and BI
- Services: Amazon OpenSearch
- Key Insights: So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Distributed Processing
- Services: Amazon OpenSearch
- Key Insights: Then we'll check whether or not the IAM credentials are valid and then whether or not the access policy allows the client to access our OpenSearch cluster.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: Then the fine-grained access control will take action and then finally, OpenSearch will return the full or partial data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what are these policies that we can create?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Well, we have something called the domain access policy which we're going to specify only in VPC which actions the principal can can perform on the domain sub-resources, so the indexes or the specific APIs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And this policy right here only allows HTTP GET and HTTP PUT on the commerce data within the test domain.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So we can go very fine grained based on the domain access policy and that's how you manage security in OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/AWS Speciality/Security/09_Other Services/272_Redshift Security.txt

Line 1:
- Concepts: Analytical Storage and Query
- Services: Amazon Redshift
- Key Insights: So now let's talk about Amazon Redshift security.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Analytical Storage and Query
- Services: AWS SAM, Amazon Redshift
- Key Insights: And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon Redshift
- Key Insights: So for example, a superuser is the admin user, which is created automatically when you launch the Redshift cluster.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 4:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: To create superusers, you must be a superuser.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Then we have users.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Users can only be created and dropped by a superuser and users can own databases and database objects such as tables.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So the users can be granted permissions on these objects and they can also grant permission to other database users, groups, and schemas.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: The users will be granted permissions in two ways, either explicitly by having those permissions directly assigned to the account to the user, or implicitly, by being member of a group that is granted permissions.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So this should be of no surprise and everything should make sense so far.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Then we have groups.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So a group is a collection of users that can be collectively assigned permissions.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 12:
- Concepts: Pipeline and Ingestion Design
- Services: (none explicit)
- Key Insights: It's very good once you want to have streamlined security maintenance.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 13:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You have databases.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: A database is a collection of one or more schema.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 15:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so when a user creates a database, the user becomes the owner of the database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: The superusers though, will have also rights on the database because they are admins.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Then what is schema?
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: A schema is a collection of database tables and other database objects.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 19:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So schema is used to group these objects under a common name and then users can be granted access to a single schema or multiple schemas.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 20:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon Redshift
- Key Insights: So if we have a look, again as a diagram, we have the superusers of our Redshift cluster.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 21:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: We have several users that can be separated or grouped together.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And then we have databases that can be created by users that will be the owner of this database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And within it we have schemas and in schemas you may have tables and other things.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 24:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So hopefully this diagram makes sense and puts everything in perspective.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Now, how do we do authorization within the database in database security?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So the users commonly use a login to login into your database.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: It's a username and a password.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And you also have the option to not use this and instead to use IAM credentials to allow users to connect to your database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 29:
- Concepts: Distributed Processing
- Services: Amazon RDS
- Key Insights: So very similar to RDS, there is a GetClusterCredentials API operations to obtain temporary database user credentials.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 30:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So if a user has proper IAM permissions, then they can login as an existing database user and then you'll get a temporary username and password.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon Redshift
- Key Insights: And so we'll get the credentials, we'll get the temporary credentials out of it, and then we can connect to our Redshift cluster.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 32:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So this is to simplify security.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And then once you have temporary user credentials for an existing database user, we can choose to disable the user's password to force log in using the temporary password and therefore force IAM security.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: And alternatively, if you don't have the user that already exists, you can use the GetClusterCredentials Autocreate option to create a new user database every time you connect.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 35:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: If you want to create a read only user, you would add this user to a group that has read only privileges for the specified schema of your database.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and lineage signal.

Line 36:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But you still need to initially specify all of the schema names and then modify the group for any new schemas you may create.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 37:
- Concepts: Analytical Storage and Query
- Services: Amazon Redshift
- Key Insights: So that's it for Redshift permissions.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense and that may be one question at the exam maybe.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I don't wanna spend too much time on it but I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/435_Amazon OpenSearch Service - Overview.txt

Line 1:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So now, let's talk about the Amazon OpenSearch Service.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: An Amazon OpenSearch is a successor to something you may have heard before called, Amazon ElasticSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So the name change was due to some licensing issues.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Analytical Storage and Query
- Services: Amazon DynamoDB
- Key Insights: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: But with OpenSearch, you can actually, as the name indicates, search any fields, even for partial matches.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So it's very common to use OpenSearch to provide search to your application.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: And so you would use OpenSearch as a compliment to another database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Distributed Processing
- Services: Amazon OpenSearch
- Key Insights: So you have two modes to provision an OpenSearch Cluster.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 10:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: Either you use the managed cluster option and then actual physical instances will be provisioned for you and you will see them.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 11:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: Or you can go the serverless route and have a serverless cluster, where everything from scaling to operations is handled by AWS.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 12:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon OpenSearch
- Key Insights: And OpenSearch has its own query language, it does not natively support SQL, but you can enable SQL compatibility via a plugin.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Streaming State and Time
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis
- Key Insights: So you can ingest data from different places, such as Kinesis Data Firehose, IoT, CloudWatch Logs, or any of your custom-built application.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You have security provided through integration with Cognito, IAM, you get at rest encryption and in-flight encryption.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Consumption and BI, Pipeline and Ingestion Design
- Services: Amazon OpenSearch, Amazon RDS
- Key Insights: And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So here are some common patterns to use OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Data Engineering Operational Context
- Services: Amazon DynamoDB
- Key Insights: So you would have DynamoDB and it will contain your data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: This is where your users will insert and delete and update data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 19:
- Concepts: Pipeline and Ingestion Design
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: And then you send all the streams in a DynamoDB Stream, which is then picked up by a Lambda Function.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And that Lambda Function will insert the data into Amazon OpenSearch in real time.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 21:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And through this process, what happens that your application now has the ability to search for a specific item.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: For example, to do a partial search with the item name and then find the item ID out of it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: Amazon DynamoDB
- Key Insights: And then once the item ID is obtained, then it will call DynamoDB to actually retrieve the full item from your DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Consumption and BI
- Services: Amazon DynamoDB, Amazon OpenSearch
- Key Insights: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Data Engineering Operational Context
- Services: Amazon CloudWatch, Amazon OpenSearch
- Key Insights: There's also other ways you can ingest CloudWatch Logs into OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon CloudWatch
- Key Insights: So the first one is to use what's called a CloudWatch Log Subscription Filter, sending data in real time to a Lambda Function that is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And then the Lambda Function in real time sends all the data into Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: Amazon CloudWatch
- Key Insights: Or you can also use a CloudWatch Logs and then Subscription Filter.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 29:
- Concepts: Streaming State and Time
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: But this time Kinesis Data Firehose can read it from the Subscription Filter.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Data Engineering Operational Context
- Services: Amazon Data Firehose, Amazon OpenSearch
- Key Insights: And then near real time, because this is Data Firehose, data will be inserted in Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Pipeline and Ingestion Design, Streaming State and Time
- Services: Amazon Kinesis, Amazon OpenSearch
- Key Insights: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 32:
- Concepts: Streaming State and Time
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: The first one is to use Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: This is a near real time again type of service.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: You can optionally do some data transformation, using a Lambda Function and then send data into Amazon OpenSearch.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 35:
- Concepts: Pipeline and Ingestion Design, Streaming State and Time
- Services: AWS Lambda, Amazon Kinesis
- Key Insights: Or you can use Kinesis Data Streams again, but this time, you would create a Lambda Function that would read the data stream in real time.
- Hidden/Implicit Meaning: Dataflow and pipeline signal.

Line 36:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And then you would write custom code to have the Lambda Function write to Amazon OpenSearch in real time.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: Amazon OpenSearch
- Key Insights: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/436_Amazon Athena - Overview.txt

Line 1:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So now, let's talk about Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So Athena is a serverless query service to help you analyze the data stored in Amazon S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And to analyze this data, you're going to use the standard SQL language to query the files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Behind the scenes, Athena is built on the Presto engine, which uses the SQL language.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 5:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So Athena is serverless, and it analyzes directly your data living in your S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it supports different formats, such as CSV, JSON, ORC, Avro, and Parquet, and possibly others.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And the pricing is very simple.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You're just going to pay a fixed amount per terabytes of data scanned.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You don't need to provision any database again, because the whole service is serverless.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon QuickSight, Amazon RDS
- Key Insights: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon Athena, Amazon QuickSight, Amazon S3
- Key Insights: So we'll see Quicksight later in depth, but Amazon Quicksight connects to Athena, which connects to your S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Analytical Storage and Query, Consumption and BI, Pipeline and Ingestion Design
- Services: Amazon Athena
- Key Insights: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: AWS CloudTrail, Amazon VPC Flow Logs, Elastic Load Balancing
- Key Insights: So it could be your VPC flow logs, your load balancer logs, your CloudTrail trails, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So first of all, because you pay for the amount of data scanned per terabyte, you need to use a type of data where you're going to scan less data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Lakehouse Governance
- Services: AWS Glue
- Key Insights: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Distributed Processing, Lakehouse Governance
- Services: AWS Glue
- Key Insights: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Now, also because we want to scan less data, we need to compress data for smaller retrievals.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So there are different compression mechanisms you can use that have listed it right here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon S3
- Key Insights: Next, if you know you're going to query all the time on some specific columns, you can partition your datasets, and partition datasets means that in your S3 bucket, you're going to have the full path with slashes, and each slash will be a different column name with a specific value.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 25:
- Concepts: Analytical Storage and Query, Distributed Processing
- Services: Amazon S3
- Key Insights: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 26:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: So here's an example of data partitions.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we have flight data in Parquet formats, and then we do /year=1991.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: So we partition by year, and we'll have one folder for each year.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 29:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Then within each year we'll have month, so month equals one, and within each month we'll have days, this equals one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Distributed Processing
- Services: (none explicit)
- Key Insights: Therefore, we'll have really, really good partitioning.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 32:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: Finally, the last performance improvement you need to do, is to use bigger files, it's to minimize your overheads.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Another feature of Amazon Athena is the Federated Query.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 35:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 36:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: How?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Well, you use what's called a Data Source Connector.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: AWS Lambda
- Key Insights: It's a Lambda function, and that Lambda function is going to run the Federated Queries in other services.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: Amazon CloudWatch, Amazon DynamoDB, Amazon RDS
- Key Insights: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 40:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it's very powerful.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 41:
- Concepts: Analytical Storage and Query
- Services: AWS Lambda, Amazon Athena
- Key Insights: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 42:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon Aurora, Amazon DynamoDB, Amazon EMR, Amazon ElastiCache, Amazon Redshift
- Key Insights: And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 43:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: They're clear from Athena, as well as, of course, Amazon S3, and you can do your drawings, and you can do your competitions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 44:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: That's why it's called a Federated Query.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 45:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: And then the results of this query can be stored into your Amazon S3 buckets for later analysis.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 46:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So that's it for Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 47:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it's a very powerful service.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 48:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/31_AWS Other Services/437_Amazon Athena - Hands On.txt

Line 1:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So let's use the Athena service to query data from an S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: So I'm going to launch the query editor, and here we have access to our UI, and before we run our first query, we need to set up a query result location in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's edit the setting.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: In here you must enter an S3 bucket where you're going to put your query results.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: So I'm going to go into the S3 console and I'm going to create a bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So I'll call this one, AWS Athena Stephane, I am in EU Central One, V two.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Alright, so this should be a unique bucket name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'm going to just create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: Okay, so my bucket is now created, click on view details and I'm going to just copy this right here and paste it here, so S3.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: And you can make sure that you can browse S3?
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 12:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: And we can also type, for example, Athena here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we'll take this one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Consumption and BI
- Services: AWS SAM
- Key Insights: Same method, same result, but this is a bit safer to not make any typo.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: Alright, so I'm going to save this and this is where my query results are going to be saved.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Now in our editor, we're going to first run our queries and we're going to run our queries on the specific bucket, which is our access log.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Analytical Storage and Query
- Services: Amazon S3
- Key Insights: So I'm going to have my S3 access logs that I have bucket here and I want to query all my objects in this bucket, so as you can see, they're here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what I need to do is that I need to go into my code editor right here and then we first create a database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 19:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: So we here under S3 advanced Athena S3 Access Log that's SQL.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: We have created a database S3 access logs DB.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 21:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So this is going to create a database here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: And so, as you can see, on the left hand side now, I have the default database and now I have my S3 access logs DB.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So this is the one I want to select and we have created it from within Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: Next we run a query and this is a query to create a table in Athena to represent our access logs.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so here it is.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so I'm going to first remove the first line.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 27:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: Okay, so this query, I got it from the Amazon S3 and Athena documentation, which gives you this entire query.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And the only thing you have to modify is to actually change the location.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we need to have the target bucket name and the prefix in there.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So actually if you go in here and you go to properties, we have the bucket name right here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to paste this in, like this.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 32:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And for the prefix, we actually don't need anything right now because it seems that in my bucket, all my objects are at the top level.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But if you had a folder, you need to add the prefix as well by adding a slash and then the name of the prefix.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But for now I'm good.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 35:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So I'm going to run this query and we need to have a trailing slash at the end.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 36:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So let's add a trailing slash and run this query again.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my table has now been created and you can see on the left hand side that we do have access to our table as well as all the fields we have created.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So what I can do now is click on these three dots and then just click on preview table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And this is going to query 10 rows from my data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 40:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so if I scroll down, you can see here that I have 10 results and we can see the bucket owner, the bucket, the request date time, the IP, the requester, request ID, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 41:
- Concepts: Data Engineering Operational Context
- Services: Amazon S3
- Key Insights: So this is very handy because while we get a lot of information directly coming from our data in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 42:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Admittedly it is way easier to use this than to look within all these files individually.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 43:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: So Athena makes it super easy for us.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 44:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But so we can do more advanced queries.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 45:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: For example, I'm going to just create a new query sheet right here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 46:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You can do some aggregations.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 47:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So here we're going to count all the requests by HTP status and by request URI operation.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 48:
- Concepts: Pipeline and Ingestion Design
- Services: (none explicit)
- Key Insights: So this is this kind of analytics and statistics you may want to run on your table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 49:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: (none explicit)
- Key Insights: So we're going to run this query and it takes a bit more time because it looks at all your data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 50:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And so it scans about 30 megabytes of data and as we can see, we see that we get 404 to B142, head 200 to B101.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 51:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: We have empty about 300,000 empty rows or 200,000 empty rows and so on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 52:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we get just the results of what we're interested into.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 53:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 54:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: This is the kind of analysis you would do by running these queries.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 55:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: You can also have a look at unauthorized query for two.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 56:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: For example, to see if someone is trying to get unauthorized access to to your bucket.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 57:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I'm running this one because 403 is the unauthorized thing, and I'm looking at all these rows and look like, okay, indeed, a lot of these rows represent unauthorized access and I can look into them and see if that was made on purpose or what that means.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 58:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, that is all very interesting to you.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 59:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena, Amazon S3
- Key Insights: The idea here is that I just used the Athena service to query my data in Amazon S3, very easily, without setting up any kind of server.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 60:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: It's all done serverless.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 61:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And all we had to do is to create our database first and then create our table within a database.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 62:
- Concepts: Analytical Storage and Query
- Services: Amazon Athena
- Key Insights: And we were good to go to use SQL language to query our data directly from within Athena.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 63:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it's one of the easiest and greatest service of AWS.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 64:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Analytical Storage and Query
- Consumption and BI
- Data Engineering Operational Context
- Distributed Processing
- Lakehouse Governance
- Pipeline and Ingestion Design
- Streaming State and Time

### 2. Services List
- AWS CloudTrail
- AWS Glue
- AWS Lambda
- AWS SAM
- Amazon Athena
- Amazon Aurora
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon DynamoDB
- Amazon ECR
- Amazon EMR
- Amazon ElastiCache
- Amazon Kinesis
- Amazon OpenSearch
- Amazon QuickSight
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon VPC Flow Logs
- Elastic Load Balancing

### 3. Features List
- athena
- emr
- glue
- kinesis
- quicksight
- redshift

### 4. Use Cases
- 027_[SAA_DVA_SOA] Amazon Athena.txt:13: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:21: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:25: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:33: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:35: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:39: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:41: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:12: And we can also type, for example, Athena here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:45: For example, I'm going to just create a new query sheet right here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:53: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:56: For example, to see if someone is trying to get unauthorized access to to your bucket.
- 029_Amazon Athena - Troubleshooting.txt:1: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- 029_Amazon Athena - Troubleshooting.txt:6: And we'll see how to create a grant when we go into the last section, the last domain, to talk about KMS, we talk about KMS grants in details.
- 049_[SAA] OpenSearch.txt:22: For example, to do a partial search with the item name and then find the item ID out of it.
- 050_OpenSearch - Advanced.txt:10: So what you have to remember out of public access is that if you want to restrict by IP, for example, this is based on public IP, of course.
- 050_OpenSearch - Advanced.txt:19: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- 272_Redshift Security.txt:2: And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- 272_Redshift Security.txt:3: So for example, a superuser is the admin user, which is created automatically when you launch the Redshift cluster.
- 272_Redshift Security.txt:15: And so when a user creates a database, the user becomes the owner of the database.
- 272_Redshift Security.txt:28: And you also have the option to not use this and instead to use IAM credentials to allow users to connect to your database.
- 435_Amazon OpenSearch Service - Overview.txt:22: For example, to do a partial search with the item name and then find the item ID out of it.
- 436_Amazon Athena - Overview.txt:13: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- 436_Amazon Athena - Overview.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 436_Amazon Athena - Overview.txt:21: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- 436_Amazon Athena - Overview.txt:25: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- 436_Amazon Athena - Overview.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 436_Amazon Athena - Overview.txt:33: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- 436_Amazon Athena - Overview.txt:35: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- 436_Amazon Athena - Overview.txt:39: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- 436_Amazon Athena - Overview.txt:41: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- 437_Amazon Athena - Hands On.txt:12: And we can also type, for example, Athena here.
- 437_Amazon Athena - Hands On.txt:45: For example, I'm going to just create a new query sheet right here.
- 437_Amazon Athena - Hands On.txt:53: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- 437_Amazon Athena - Hands On.txt:56: For example, to see if someone is trying to get unauthorized access to to your bucket.

### 5. Constraints / Limitations
- 027_[SAA_DVA_SOA] Amazon Athena.txt:11: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:18: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:4: In here you must enter an S3 bucket where you're going to put your query results.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:7: Alright, so this should be a unique bucket name.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:28: And the only thing you have to modify is to actually change the location.
- 029_Amazon Athena - Troubleshooting.txt:3: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- 029_Amazon Athena - Troubleshooting.txt:5: The second thing is that if the data in the S3 bucket is encrypted using a KMS key, so using the SSE-KMS type of encryption, then you make sure the QuickSight IAM role must be granted access to decrypt with the key, to do a kms:Decrypt.
- 029_Amazon Athena - Troubleshooting.txt:11: And whatever role QuickSight is using should be the one you grant access to the KMS key.
- 049_[SAA] OpenSearch.txt:4: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- 050_OpenSearch - Advanced.txt:18: Well, we have something called the domain access policy which we're going to specify only in VPC which actions the principal can can perform on the domain sub-resources, so the indexes or the specific APIs.
- 050_OpenSearch - Advanced.txt:20: And this policy right here only allows HTTP GET and HTTP PUT on the commerce data within the test domain.
- 272_Redshift Security.txt:4: To create superusers, you must be a superuser.
- 272_Redshift Security.txt:6: Users can only be created and dropped by a superuser and users can own databases and database objects such as tables.
- 272_Redshift Security.txt:9: So this should be of no surprise and everything should make sense so far.
- 272_Redshift Security.txt:26: So the users commonly use a login to login into your database.
- 272_Redshift Security.txt:35: If you want to create a read only user, you would add this user to a group that has read only privileges for the specified schema of your database.
- 435_Amazon OpenSearch Service - Overview.txt:4: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- 436_Amazon Athena - Overview.txt:11: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- 436_Amazon Athena - Overview.txt:18: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- 436_Amazon Athena - Overview.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 436_Amazon Athena - Overview.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 437_Amazon Athena - Hands On.txt:4: In here you must enter an S3 bucket where you're going to put your query results.
- 437_Amazon Athena - Hands On.txt:7: Alright, so this should be a unique bucket name.
- 437_Amazon Athena - Hands On.txt:28: And the only thing you have to modify is to actually change the location.

### 6. Patterns / Architectures
- 049_[SAA] OpenSearch.txt:16: So here are some common patterns to use OpenSearch.
- 049_[SAA] OpenSearch.txt:24: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- 049_[SAA] OpenSearch.txt:31: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- 049_[SAA] OpenSearch.txt:37: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- 435_Amazon OpenSearch Service - Overview.txt:16: So here are some common patterns to use OpenSearch.
- 435_Amazon OpenSearch Service - Overview.txt:24: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- 435_Amazon OpenSearch Service - Overview.txt:31: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- 435_Amazon OpenSearch Service - Overview.txt:37: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.

## Step 3 - Deep Expansion (Data Engineering Concepts)

### Core Services in This Topic
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Aurora: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Data Firehose: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DynamoDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon ECR: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Analytical Storage and Query: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Consumption and BI: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Data Engineering Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Distributed Processing: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Lakehouse Governance: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Pipeline and Ingestion Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Streaming State and Time: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Distributed processing | EMR / Spark / Databricks on AWS | HDInsight / Azure Databricks / Synapse Spark | Dataproc |
| Streaming ingestion | Kinesis / Firehose / MSK / Flink | Event Hubs / Stream Analytics / Kafka ecosystems | Pub/Sub / Dataflow / Managed Kafka ecosystems |
| Serverless query | Athena | Synapse serverless SQL | BigQuery |
| Managed warehouse | Redshift | Synapse Dedicated SQL | BigQuery / BigLake warehouse patterns |
| Lake governance | Lake Formation / Glue Catalog | Purview / OneLake / Catalog patterns | Dataplex / Data Catalog |
| BI and dashboards | QuickSight | Power BI | Looker |

### Trade-offs and Decision Notes
- Data Engineering Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Data engineering starts with movement, shape, and time semantics before tool choice.
- Platform quality depends on repeatable ingestion, transformation, and governed access paths.

### Phase 2 - Core Services
- Implement processing engines, streaming paths, and analytical stores as complementary layers, not interchangeable services.
- Treat schema, lineage, and data quality as architectural controls rather than documentation tasks.

### Phase 3 - Advanced Patterns
- Use lakehouse and streaming state patterns carefully because throughput and correctness often trade against each other.
- Keep analyst-facing consumption separate from raw and operational data paths.

### Phase 4 - System Design
- Reference architecture: ingestion plane, processing plane, governed storage, and consumption interfaces.
- Scaling considerations: skew, backpressure, late data, catalog drift, and warehouse concurrency.
- Cost considerations: cluster idling, scan-heavy query patterns, redundant copies, and uncontrolled BI sprawl.
