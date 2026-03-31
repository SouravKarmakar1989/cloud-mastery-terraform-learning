# 06_Storage_Cost_Performance.md

## Scope
- Topic: S3 pricing, lifecycle economics, throughput patterns, and storage optimization
- Files processed: 18
- Extracted non-empty transcript lines: 835
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Storage Knowledge Base
- Cross-domain referrals: 1

## Real Material - Architect Learning Build (Storage: Storage Cost Performance)

This section is the study-first architecture guide for s3 pricing, lifecycle economics, throughput patterns, and storage optimization.

### Phase 1 - Foundations

#### Module: Storage Cost Performance Mental Model
- Use storage cost performance decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Storage Cost Performance Mental Model
- Primary transcript files:
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/113_Intro to Cost Management.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/112_Faster Uploads for Your Data with Transfer Acceleration.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/118_Tools That Can Help with Cost Management.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/031_Introduction to Amazon S3 Pricing.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/106_Amazon S3 Costs with Cost Explorer.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/032_Understanding Requests and Data Retrieval Fees.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/13_Advanced Amazon S3/144_S3 Requester Pays.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/115_Incomplete Multipart Uploads.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/108_Using Data Locality to Reduce Network Latency.txt
- Top concept clusters from transcript metadata:
- Cost and Performance Optimization
- Object Storage Patterns
- Storage Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 18
- Module-selected transcript files: 9
- Key insight candidates scanned (topic): 835
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- So storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- So in our discussion of Amazon S3 costs, I wanted to quickly point out to an attractive feature of S3 pricing.
- So you can kind of see month over month what my spend is directly in S3 Now, personally, I don't have a ton of stuff inside of my S3 buckets, so you can see I'm spending about an average of $2 a month and it's slowly been going up as I've added more and more stuff into S3 But this gives you a good idea on understanding what your monthly costs may be month over month using S3 You can, of course look at this data in a graph perspective like I'm looking at now, or you can choose a line chart or other things that help you better analyze this data.
- Of course, choosing the correct storage class is going to be paramount for saving costs if you are not accessing your data very frequently, well, it may make sense to start moving that data over towards the right on this screen as we move over towards the right, over to Glacier and things like that, Well, the costs per gigabyte go down to very, very minimum.
- For example, storing data in North Virginia, which is the typical default region for most folks, it might be cheaper than storing the same amount of data in Tokyo now, factors that impact costs of how much it costs to store data on S3 may be things like data sovereignty, latency, the cost to run those data centers in that particular region.
- It'll actually download a file locally and it'll upload to S3, I guess to an Amazon account so it doesn't incur any costs on your side, but it will upload using the standard endpoint and then it'll upload using the accelerated endpoint and it shows you the difference between the two.
- Now, when you look at the pricing of this for the first 50TB of data that you store and of course this is based upon each month you're going to be charged that rate that we just talked about of $0.023 per gigabyte per month, pretty easy, but that's for the first 50 terabyte.
- Now, once you enable those, what you can do is you can tag your different buckets or data using these cost allocation tags, and then you can run a new report to gather the costs and filter those results down to the S3 service and of course, those cost allocation tags.
- And then allowing you to go into the Cost Explorer dashboard and actually filtering down by S3 and then filtering down by your cost allocation tags in order to properly understand what you're spending for the application or for that team or business unit.
- If these native tools aren't necessarily meeting your standards or you find that it's kind of a pain to get what you need to effectively monitor your costs, maybe take a look at some of those third party tools and maybe they can give you what you need.

##### Polished Architect Notes
- Transcript signals that lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Transcript signals that now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- Transcript signals that so storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- Transcript signals that so in our discussion of Amazon S3 costs, I wanted to quickly point out to an attractive feature of S3 pricing.
- Transcript signals that so you can kind of see month over month what my spend is directly in S3 Now, personally, I don't have a ton of stuff inside of my S3 buckets, so you can see I'm spending about an average of $2 a month and it's slowly been going up as I've added more and more stuff into S3 But this gives you a good idea on understanding what your monthly costs may be month over month using S3 You can, of course look at this data in a graph perspective like I'm looking at now, or you can choose a line chart or other things that help you better analyze this data.
- Transcript signals that of course, choosing the correct storage class is going to be paramount for saving costs if you are not accessing your data very frequently, well, it may make sense to start moving that data over towards the right on this screen as we move over towards the right, over to Glacier and things like that, Well, the costs per gigabyte go down to very, very minimum.
- Transcript signals that for example, storing data in North Virginia, which is the typical default region for most folks, it might be cheaper than storing the same amount of data in Tokyo now, factors that impact costs of how much it costs to store data on S3 may be things like data sovereignty, latency, the cost to run those data centers in that particular region.
- Transcript signals that it'll actually download a file locally and it'll upload to S3, I guess to an Amazon account so it doesn't incur any costs on your side, but it will upload using the standard endpoint and then it'll upload using the accelerated endpoint and it shows you the difference between the two.
- Transcript signals that now, when you look at the pricing of this for the first 50TB of data that you store and of course this is based upon each month you're going to be charged that rate that we just talked about of $0.023 per gigabyte per month, pretty easy, but that's for the first 50 terabyte.
- Transcript signals that now, once you enable those, what you can do is you can tag your different buckets or data using these cost allocation tags, and then you can run a new report to gather the costs and filter those results down to the S3 service and of course, those cost allocation tags.
- Transcript signals that and then allowing you to go into the Cost Explorer dashboard and actually filtering down by S3 and then filtering down by your cost allocation tags in order to properly understand what you're spending for the application or for that team or business unit.
- Transcript signals that if these native tools aren't necessarily meeting your standards or you find that it's kind of a pain to get what you need to effectively monitor your costs, maybe take a look at some of those third party tools and maybe they can give you what you need.

##### Architect Synthesis (Transcript-Derived)
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Design implication: now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- Design implication: so storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- Design implication: so in our discussion of Amazon S3 costs, I wanted to quickly point out to an attractive feature of S3 pricing.
- Design implication: so you can kind of see month over month what my spend is directly in S3 Now, personally, I don't have a ton of stuff inside of my S3 buckets, so you can see I'm spending about an average of $2 a month and it's slowly been going up as I've added more and more stuff into S3 But this gives you a good idea on understanding what your monthly costs may be month over month using S3 You can, of course look at this data in a graph perspective like I'm looking at now, or you can choose a line chart or other things that help you better analyze this data.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/113_Intro to Cost Management.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/033_Demo - Using the Cost Calculator for Amazon S3.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/115_Incomplete Multipart Uploads.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/108_Using Data Locality to Reduce Network Latency.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/112_Faster Uploads for Your Data with Transfer Acceleration.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/118_Tools That Can Help with Cost Management.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/13_Advanced Amazon S3/144_S3 Requester Pays.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/110_Scale Your Applications for Higher Throughput.txt
- outputs/aws-certified-developer-associate-dva-c01/13_Advanced Amazon S3/139_S3 Performance.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/13_Advanced Amazon S3/147_S3 Performance.txt
- Top concept clusters from transcript metadata:
- Cost and Performance Optimization
- Object Storage Patterns
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 18
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 835
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- So in this case, maybe since it's a data analytics application, we want the highest performance.
- So just like the delete markers, you can use storage lens to look at multi-part uploads to see how much storage you are using and probably accumulating towards your bill on failed or incomplete multi-part uploads.
- Now, although S3 is a hosted service, there are many things that you can do or some of the features that you can take advantage to really increase the performance of reading or writing data to Amazon S3.
- So the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.
- Finally, network latency and the bandwidth between the client that's accessing the data that lives in your S3 bucket can definitely affect performance as well.
- So up until this point, we've really been talking about reading data from our Amazon S3 bucket, but it may be important to increase write performance as well.
- And of course you can see if you're uploading data to a region that's pretty far away, you get a substantial increase in performance when you're writing data.
- So storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- However, it's important to know that as you increase the object count, that can have cost implications in terms of monitoring analytics and storage size.
- So that is one way that we can increase performance of our applications that are accessing our data is simply make the data local to the application.
- This section is going to highlight a number of those features and considerations that you can use to increase performance when interacting with S3.

##### Polished Architect Notes
- Transcript signals that lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Transcript signals that so in this case, maybe since it's a data analytics application, we want the highest performance.
- Transcript signals that so just like the delete markers, you can use storage lens to look at multi-part uploads to see how much storage you are using and probably accumulating towards your bill on failed or incomplete multi-part uploads.
- Transcript signals that now, although S3 is a hosted service, there are many things that you can do or some of the features that you can take advantage to really increase the performance of reading or writing data to Amazon S3.
- Transcript signals that so the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.
- Transcript signals that finally, network latency and the bandwidth between the client that's accessing the data that lives in your S3 bucket can definitely affect performance as well.
- Transcript signals that so up until this point, we've really been talking about reading data from our Amazon S3 bucket, but it may be important to increase write performance as well.
- Transcript signals that and of course you can see if you're uploading data to a region that's pretty far away, you get a substantial increase in performance when you're writing data.
- Transcript signals that so storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- Transcript signals that however, it's important to know that as you increase the object count, that can have cost implications in terms of monitoring analytics and storage size.
- Transcript signals that so that is one way that we can increase performance of our applications that are accessing our data is simply make the data local to the application.
- Transcript signals that this section is going to highlight a number of those features and considerations that you can use to increase performance when interacting with S3.

##### Architect Synthesis (Transcript-Derived)
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Design implication: so in this case, maybe since it's a data analytics application, we want the highest performance.
- Design implication: so just like the delete markers, you can use storage lens to look at multi-part uploads to see how much storage you are using and probably accumulating towards your bill on failed or incomplete multi-part uploads.
- Design implication: now, although S3 is a hosted service, there are many things that you can do or some of the features that you can take advantage to really increase the performance of reading or writing data to Amazon S3.
- Design implication: so the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/113_Intro to Cost Management.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/112_Faster Uploads for Your Data with Transfer Acceleration.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/118_Tools That Can Help with Cost Management.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/108_Using Data Locality to Reduce Network Latency.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/031_Introduction to Amazon S3 Pricing.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/033_Demo - Using the Cost Calculator for Amazon S3.txt
- outputs/aws-certified-developer-associate-dva-c01/13_Advanced Amazon S3/139_S3 Performance.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/13_Advanced Amazon S3/147_S3 Performance.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/106_Amazon S3 Costs with Cost Explorer.txt
- outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/110_Scale Your Applications for Higher Throughput.txt
- Top concept clusters from transcript metadata:
- Cost and Performance Optimization
- Object Storage Patterns
- Storage Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 18
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 835
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- So the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.
- So storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- However, it's important to know that as you increase the object count, that can have cost implications in terms of monitoring analytics and storage size.
- For example, when you have an efficient S3 performance, it ensures that applications and your services that rely on the storage can run smoothly.
- So in our discussion of Amazon S3 costs, I wanted to quickly point out to an attractive feature of S3 pricing.
- Some of these monitoring and analytics costs may increase as you start analyzing a larger number of objects.
- So in this case, maybe since it's a data analytics application, we want the highest performance.
- Now, let's talk about S3 performance, how we can optimize it?
- All right, so that's it for S3 performance.
- So you can kind of see month over month what my spend is directly in S3 Now, personally, I don't have a ton of stuff inside of my S3 buckets, so you can see I'm spending about an average of $2 a month and it's slowly been going up as I've added more and more stuff into S3 But this gives you a good idea on understanding what your monthly costs may be month over month using S3 You can, of course look at this data in a graph perspective like I'm looking at now, or you can choose a line chart or other things that help you better analyze this data.

##### Polished Architect Notes
- Transcript signals that lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Transcript signals that now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- Transcript signals that so the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.
- Transcript signals that so storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- Transcript signals that however, it's important to know that as you increase the object count, that can have cost implications in terms of monitoring analytics and storage size.
- Transcript signals that for example, when you have an efficient S3 performance, it ensures that applications and your services that rely on the storage can run smoothly.
- Transcript signals that so in our discussion of Amazon S3 costs, I wanted to quickly point out to an attractive feature of S3 pricing.
- Transcript signals that some of these monitoring and analytics costs may increase as you start analyzing a larger number of objects.
- Transcript signals that so in this case, maybe since it's a data analytics application, we want the highest performance.
- Transcript signals that now, let's talk about S3 performance, how we can optimize it?
- Transcript signals that all right, so that's it for S3 performance.
- Transcript signals that so you can kind of see month over month what my spend is directly in S3 Now, personally, I don't have a ton of stuff inside of my S3 buckets, so you can see I'm spending about an average of $2 a month and it's slowly been going up as I've added more and more stuff into S3 But this gives you a good idea on understanding what your monthly costs may be month over month using S3 You can, of course look at this data in a graph perspective like I'm looking at now, or you can choose a line chart or other things that help you better analyze this data.

##### Architect Synthesis (Transcript-Derived)
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Design implication: now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- Design implication: so the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.
- Design implication: so storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- Design implication: however, it's important to know that as you increase the object count, that can have cost implications in terms of monitoring analytics and storage size.

### Phase 2 - Core Services
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- Amazon Glacier should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- Amazon Lex should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Block and File Storage Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cost and Performance Optimization becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Protection and Immutability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lifecycle Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Object Storage Patterns becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design storage cost performance with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when storage cost performance decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt (owned by AWS Compute Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/031_Introduction to Amazon S3 Pricing.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In this section.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: We're going to talk all about Amazon S3 pricing.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, this is going to be an important aspect to understand for effective and cost effective management on Amazon S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So when we step back and take a look at high level with the basics are of Amazon S3 pricing, it's mainly contingent on three core elements here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now first, we have the amount of data you can store and that should be pretty obvious and straightforward.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The more data that you store in S3, well, the higher your costs are going to be.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 charges you for the total volume of data that you're storing in your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that, of course, is all measured in gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The second one is storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now we talked about storage class earlier, and when you upload your objects, you're going to choose a storage class that you want to store that object in.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And that storage class has a significant impact on the cost of storing that item on S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, of course, we talked about S3 offers like this wide range of classes designed for all these specific use cases, and each one of those vary in price.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for instance, if we have frequent access, data can be stored in our standard class, while our infrequently access data can go in our infrequent access class or something like a one zone infrequent class, those can be actually cheaper than storing it in traditional S3 standard.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Lifecycle Operations
- Services: Amazon Glacier
- Key Insights: Now there's also the glacier and the glacier deep archive classes for long term archival, and those are very, very cheap.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the trick here is to select the storage class that best matches your usage patterns and your needs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: Now, lastly, the region where you store your data is also important in regards to the cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, Amazon has data centers spread out through the entire world in all these different regions, and the cost of storing data can really vary depending on the region that you choose.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: For example, storing data in North Virginia, which is the typical default region for most folks, it might be cheaper than storing the same amount of data in Tokyo now, factors that impact costs of how much it costs to store data on S3 may be things like data sovereignty, latency, the cost to run those data centers in that particular region.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I think you'll find that anything in Northern California is probably going to be more expensive than Ohio because, well, it's just more expensive to run things in Northern California.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The electricity costs more.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The land to build data centers costs more.
- Hidden/Implicit Meaning: Storage economics signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So naturally, Amazon needs to charge a little bit more to make up for some of those costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So understanding these three factors, the amount of data we store, the storage class that we choose, and of course the region of where our data resides will definitely help you manage your S3 costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, it's imperative to regularly review and optimize all these factors to ensure cost efficiency for your data that you're storing.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at a cost comparison.
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now keep in mind these are the current costs of Amazon S3 and from my experience, I don't know, ten plus years of working with AWS.
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The cost for S3 have traditionally only gone down.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Very rarely does actually raise its prices.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: These should be fairly consistent depending on when you're watching this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if we look at S3 standard now, all these costs are per gigabyte, per month to store a gig on Amazon S3 Standard, it's going to cost you just over $0.02.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, keep in mind, these are all in US dollars or really in US cents.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you're looking at .02, three of a dollar, so $0.02 plus a little bit to store a gig that's still super cheap.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, as we continue moving to the right, we're going to skip Intelligent-tiering for right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: But if we go to S3 standard infrequent access, you can see that the cost is almost half.
- Hidden/Implicit Meaning: Storage economics signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's one and a quarter penny, so one penny plus a little bit more, 00.0125 of a dollar.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, just over a penny to store a gig each month on standard infrequent access.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: Now if we continue moving on S3 one Zone iAa now that is just a penny, so it is a little bit cheaper than standard iAa As we continue moving to the right glacier instant retrieval, it's even cheaper than a penny.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I don't know if you could believe that, but it is only 0.004 of a dollar.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's actually less than half of a penny.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So really, really cheap.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's per gig.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: If we go to flexible retrieval, we're even cheaper than that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So 003, six of a dollar.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: And then finally we get to Glacier Deep Archive, which is by far our cheapest.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Way to store our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's incredibly cheap.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: So you're looking at, I don't know, 100th of a penny or something like that for Glacier Deep archive from a dollar.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You got 0.00099.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: Incredibly cheap to store data in glacier deep archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 50:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: And so again based upon some of these slides that we've already seen before, now keep in mind that data more towards the left is really geared towards data that's going to be more frequently accessed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: And as we move towards the right, that's data that is less frequently accessed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as we get all the way down to deep archive, that's data that, well, we may touch once a year, maybe even less than that.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 53:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So super, super cheap to store that archival data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now if we take a step back and look at Intelligent-tiering, so we talked about Intelligent-tiering when we introduced our storage classes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 55:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now remember, S3 Intelligent-tiering has multiple tiers within it and that allows us to move our data between tiers depending on our access patterns.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, Intelligent-tiering actually uses the other classes that you already see on the screen, so the prices are going to be similar depending on the access tier that we're using within Intelligent-tiering.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: So if we have our fast access tier, that's going to be the same price as S3 standard because that's really where our data is living.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: It's an S3 standard, so that's where Intelligent-tiering is going to store that data for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So naturally the price is going to be the same.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: Now, if Intelligent-tiering moves our data to infrequently accessed, well, it's just going to live on S3 standard IA and of course it's the same price as standard IA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon Glacier
- Key Insights: And finally, as we get to more of our archive tier, we're going to have the same price as Glacier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to have less than half of a penny for that type of tier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So you can kind of see how Intelligent-tiering compares in terms of pricing.
- Hidden/Implicit Meaning: Storage economics signal.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can immediately see the benefits of using Intelligent-tiering by the cost savings as we move from our fast access tier, which is .023 for a gig.
- Hidden/Implicit Meaning: Storage economics signal.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then as we move down to IA, we're a 0.125, so almost half of that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then as we continue moving down, it's way, way cheaper than that as we move down to our archive tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So good comparison there just to kind of showcase how much it costs per gig per month for each one.
- Hidden/Implicit Meaning: Storage economics signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now let's showcase an example here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to calculate the cost per month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, it's just a simple math problem.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have 40 gig of data to store on Amazon S3 Standard.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, it's super easy.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: 40 gig times 0.23 equals $0.92.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: That's going to be our bill for storing 40 gig of data on Amazon S3 So super easy to do that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, keep in mind that if you're storing terabytes, if you're storing megs, you may actually have to do some conversion because most of the pricing is based upon gig.
- Hidden/Implicit Meaning: Storage economics signal.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you may have to do some conversion like, okay, I'm storing X amount of terabytes, how many gig is that?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or if I'm storing X amount of Meg, what percentage of that is a gig?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we can do the math there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Pretty easy to calculate costs per month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 80:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in our discussion of Amazon S3 costs, I wanted to quickly point out to an attractive feature of S3 pricing.
- Hidden/Implicit Meaning: Storage economics signal.

Line 81:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Now that is volume discounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Everyone loves a discount.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 83:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now these discounts are going to apply specifically to the S3 standard storage class, and that's going to be used for, of course, our general purpose storage of data, frequently accessed data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 84:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, when you look at the pricing of this for the first 50TB of data that you store and of course this is based upon each month you're going to be charged that rate that we just talked about of $0.023 per gigabyte per month, pretty easy, but that's for the first 50 terabyte.
- Hidden/Implicit Meaning: Storage economics signal.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for instance, if you're going to store ten terabytes of data, your cost would be about $230 for that month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 86:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, as we begin to store more data, as we push over that 50 terabyte bar, well, Amazon is going to start providing us a discount for data storage that ranges from like 50TB all the way up to just less than 500, 499TB.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 87:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're actually going to be charged at a slightly lower rate of $0.022 per gigabyte per month.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 88:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So not a huge difference, but hey, I'll take any discounts that I can get for storing my data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 89:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: Now, again, it may seem like a small decrease, but when you're dealing with very large quantities of data, again now we're talking about close to 500TB of data, this reduction can really start to lead to some significant savings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 90:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, finally, when you hit the 500 terabyte mark and beyond, your cost is going to drive further down to $0.21 per gigabyte per month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 91:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So once again, at this level of data storage, the reduced rate can look slightly small, but it can result in substantial cost reduction for you because again, we're charging per gigabyte per month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 92:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And now we're storing 500TB or more in S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 93:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, one thing I want to note that these discounts only apply to S3 Standard Storage class.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 94:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: While it's the most commonly used, we may be storing data on other storage classes that might better suit our needs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 95:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, if you look at the previous slide, you can see that if we decide that we're going to use other storage classes, well, we're already going to be saving a substantial amount of money below even the lowest rate that's shown on the slide here of 0.021.
- Hidden/Implicit Meaning: Storage economics signal.

Line 96:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So remember when we moved to Standard-ia, it was like 0.025, something like that, and even below.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 97:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So these discounts only apply to S3 Standard as we move to our other storage classes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 98:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Of course we're going to have much cheaper rates.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 99:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's pretty easy to understand how we can estimate our costs or determine our costs per gigabyte per month depending on the storage class that we choose, and then how much data that we're going to store in S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 100:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: However, if you kind of step back, unfortunately there's a lot more to determining S3 costs than just our typical gigabyte per month in our storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 101:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to go through all of those here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/032_Understanding Requests and Data Retrieval Fees.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one that I want to talk about is calculating puts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, a put is referring to the http verb of put meaning.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We're going to put or upload data to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now Amazon is going to charge you $0.005 per 1000 requests for any put copy post or list requests on Amazon S3 Standard.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now you may get different prices depending on the storage class, but I use Amazon S3 Standard as the baseline here, so you can kind of understand that.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what we're going to do is we're going to calculate our puts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, we have 40 gig of data that consists of 5000 files.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if we have 5000 files and we want to upload all 5000 of those files, well that's going to be 5000 puts or copies or posts because we need to upload each one of those individual files and ultimately that becomes an object inside of our S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So to calculate that we have 5000 divided by 1000.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have 5000 files, which is 5000 puts and we're going to charge per 1000 puts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we just do 5000 divided by 1000, which is five.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then we're going to multiply that by the cost per 1000 requests on S3 standard, which is 0.005.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that ultimately is going to lead to a upfront cost of just about two and a half cents.
- Hidden/Implicit Meaning: Storage economics signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's going to be our cost to upload our 5000 files.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now keep in mind, this is in addition to what Amazon S3 is going to charge us for the data storage of these 5000 files.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's that 40 gig of data that we're storing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We also now have to calculate our puts to understand how much it's going to cost to actually upload this stuff.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's an easy way to determine how much is going to cost for puts.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if we calculate our gets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: AWS SAM, Amazon EBS
- Key Insights: So if we have that same 40 gig of data, but maybe it's requested 1 million times a month, maybe it's part of a website where people download it or something like that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe it's a TikTok, maybe it's a YouTube video that people are accessing and watching on their mobile phone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So Amazon is going to charge us $0.0004 per 1000 requests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so in this case, we have 1 million requests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's access 1 million times.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to divide that by that 1000.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's how Amazon charges us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And ultimately we're going to times that by the cost and get our total monthly cost here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you look at the bottom, we have 1 million say app requests on the left.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We divide that by 1000 and then we're going to times that by the cost per 1000 request.
- Hidden/Implicit Meaning: Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And ultimately this is going to be $0.40.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Doesn't seem like a whole lot.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But again, these are the other charges that you need to be aware of when you're working with Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 So that's puts and then we have gets here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about life cycle transition requests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 charges us a small fee for requests to a different storage class during our life cycle transitions.
- Hidden/Implicit Meaning: Storage economics signal.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have life cycle rules that are moving data around forests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, AWS is going to charge us for that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for every 1000 requests that you have, Amazon charges us one penny.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for example, down here at the bottom, we've got our user, our user may be uploads or writes data or objects to Amazon S3 Standard.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to get charged for the puts that we just talked about before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: But now if we have a rule that says, okay, I want to move things 90 days later to a and then we have another rule that says, okay, now I want to move those files to Glacier in 180 days and then ultimately three years down the road, we're going to delete it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, Amazon's going to charge us for those life cycle transitions, and each file that gets moved is a request.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we have for every 1000 files or requests, Amazon is going to charge us that one penny.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just something else to keep in mind.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if we have a lot of life cycle rules or a lot of transitions in the place where we're moving data down to other tiers, quite often we may see an impact on our S3 bill here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's move over to data retrieval requests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon Glacier, Amazon Lex, Amazon S3
- Key Insights: So we talked about that before, but objects stored in certain classes will incur a charge for data retrieval, and these include S3 Standard IA, S3, one Zone iAa, and of course, our Glacier family of storage classes, instant retrieval, flexible retrieval and deep archive.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 48:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So if we do pull data out of these storage classes, we will have to pay for the data retrieval requests.
- Hidden/Implicit Meaning: Storage economics signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now these can vary depending on how fast you need your data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Similar to our analogy before, if I need to ship a package, the faster it needs to get their UPS, Fedex, DHL, they're going to charge me more money.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: The faster that you need to pull your data out of any of these storage classes, AWS is going to charge you more money.
- Hidden/Implicit Meaning: Storage economics signal.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The slower you need it, the less they're going to charge you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So keep that in mind.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So let's take a look at the pricing here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 55:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Again, these are current as of today, S3 standard, infrequent access, a penny per gig to pull it out.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon Glacier
- Key Insights: Same thing for one zone IA and then glacier instant retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can see it's a little bit more.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have $0.03 per gig when we pull data out of instant retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: Now for Glacier flexible retrieval, we have different price models depending on how fast we're going to pull our data out of glacier flexible retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You see, we have three options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have expedited standard and bulk.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: So we need to pull our data out really, really fast from flexible retrieval.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They're going to charge us just over $0.03 per gig plus a $12 flat fee, and that's per 1000 requests for standard, which is a little bit slower.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So naturally we're going to pay a little bit less here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to have just over a penny per 1000 requests plus $0.06 and then bulk.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: So if you want to pull data out of glacier flexible retrieval and you choose bulk, which can take a while to get your data, well, they don't actually charge for that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you don't need your data immediately, well, choose bulk and you can save on those retrieval fees.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: Amazon Glacier
- Key Insights: Now, if you look at deep archive here, so we have two options, two speeds, if you will, to pull data out of Glacier deep archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have standard which is just about two and a half cents per thousand requests plus $0.12.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we have bulk.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can see it's considerably cheaper.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's half of a penny plus $0.03 per 1000 requests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Object Storage Patterns
- Services: Amazon Lex, Amazon RDS, Amazon S3
- Key Insights: So again, I told you it can be kind of complex when you start thinking about other costs in regards to Amazon S3 When you start actually moving data around, retrieving data, life cycle transitions gets puts, all those kind of things.
- Hidden/Implicit Meaning: Storage economics signal.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: There's a lot more to it than just storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So when you do retrieve data from Amazon S3, what's going to happen is it's actually going to copy that data from the existing storage class that it's stored in.
- Hidden/Implicit Meaning: Storage economics signal.

Line 76:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: It's going to copy that over to Amazon S3 Standard for you so you can quickly access it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, keep in mind that when you do restore this archived object, you are going to pay for both the archive and the copy that you restored temporarily.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 78:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon S3
- Key Insights: If you restore data, then it's going to copy it to S3 You're still going to pay for that data stored in the archive or instant retrieval.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 79:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: But now, since you've created an object in Amazon S3 Standard, you're also going to pay for that object as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: If you are going to restore data there, then you need to go ahead and delete that data after it's being used so you don't actually pay for it twice.
- Hidden/Implicit Meaning: Durability and retention signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/033_Demo - Using the Cost Calculator for Amazon S3.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Welcome to this demonstration of the AWS pricing calculator.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in Chrome here, I've gone to calculator dot AWS and you can see we're presented with the screen where we can go ahead and start creating an estimate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go ahead and click on this Create estimate button in yellow.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what we can do is start adding different services to our estimate to understand how much is going to cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the first thing I'm going to do is select on search for all services.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: On the right, I'm going to click down here, I'm going to type in S three.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: Now I can scroll down here and find Amazon Simple Storage Service and I'm going to click on configure here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: So now what we can do is start configuring our estimate related to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, Maybe we have a particular workload that we want to figure out how much that's going to cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So up here, maybe we can type in data analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Application and then we can choose a location.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, us East two, which is Ohio, is selected.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course you can choose whatever region is closest to you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Scroll down a little bit more and now we can select the storage class and other features that we want to include in this estimate.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So in this case, maybe since it's a data analytics application, we want the highest performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we're going to leave S3 standard in play.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to scroll down a little bit more and now we're going to provide information about our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we have S3 standard storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: How much data are we going to put inside of our bucket, let's say, for example, 60TB.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to type in 60 here and go over here and drop in terabyte per month.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, immediately, if you look down here at the bottom, you have a total monthly cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 24:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You can see that monthly it's going to cost us $1,402.88 per month to store 60TB in S3 Standard.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, there's a little bit more to pricing here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We find how much data is going to be moved into S3 Standard.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Is the data already in S3 or are we going to have to move it?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we're going to use put copy post requests, we're going to choose that, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We're going to upload our data into S3 because it does not yet exist.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we're presented with this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: How big is the average object size?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Is it 16 Meg?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Is it bigger?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Is it smaller?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You would select that based upon your average object size, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In order to get an estimate, if you don't know it, you may need to either just leave the defaults or perform some calculations on your data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Say, for example, ours is 100 Meg per file, so you get an estimate down here, your total upfront cost of how much it would cost for all those puts into S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now how often are you going to update or put additional storage into your S3 bucket if you're only going to put this data up there one time and then consume it frequently, maybe not update it, you can just leave this as zero.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How often are you going to get this data?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Okay, maybe this data analytics is really important to our organization and we're going to run a number of calculations against it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's say 500,000 times we're going to perform, gets or selects against this data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So how much data is going to be turned by S3 select or data scanned by S3 Select?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're going to leave that blank for now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As we continue down, we can see we have additional costs around data transfer, inbound data transfer, right?
- Hidden/Implicit Meaning: Storage economics signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We already know the inbound is free to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you look at this, we have internet free and all other regions is free.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: However, outbound data transfer does cost us money.
- Hidden/Implicit Meaning: Storage economics signal.

Line 49:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if you're going to transfer data outside of our bucket, you can also add that to your estimate.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to leave that blank right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And at the bottom right, I'm going to click on Save and View Summary.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So now, based upon what we just added, our total yearly cost for storing 60TB in S3 standard may be $16,840.
- Hidden/Implicit Meaning: Storage economics signal.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can see that broken down as a monthly cost of $1,403.
- Hidden/Implicit Meaning: Storage economics signal.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, if you scroll down, you can see the estimates that we've added to our summary here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We've got one estimate and we've added 60TB of S3 standard storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe we've got another workload where we need to store, I don't know, 100TB in something like deep archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 57:
- Concepts: Object Storage Patterns
- Services: AWS Config, AWS SAM, Amazon Glacier, Amazon S3
- Key Insights: So we can click on Add service again, we can find S3 and we're going to go through the same process, configure, and this time, instead of choosing S3 Standard, we're going to go over here and choose S3 Glacier Deep Archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, I will go up and we'll select a description on this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Cost and Performance Optimization, Lifecycle Operations
- Services: (none explicit)
- Key Insights: Maybe this is going to be archival data for data analytics team.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this is going to be archival data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, we've selected our deep archive here.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we're going to add 100TB to our deep archive to get an understanding on how much that's going to cost.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for now, we're just going to leave everything else as blank.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, So I'm going to click on Save and View Summary.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now you can see our total yearly costs went up a little bit to $18,072.
- Hidden/Implicit Meaning: Storage economics signal.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you scroll down, you can see where that's broken down.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The first one is where we added 60TB into S3 Standard, which is right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: And the second estimate is where we added 100TB into S3 Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Deep archive, right?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can even see my descriptions right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So again, if you need to understand how much it's going to cost in order to store your data in S3, this is a great way to go ahead and get an estimate.
- Hidden/Implicit Meaning: Storage economics signal.

Line 73:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, keep in mind that unless you are very specific about your data transfers and your object sizes and all that stuff, this is an estimate, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's not going to be exactly this much, but at least you can get an understanding and an idea of what you're going to be charged each month for storing the amount of data that you think you're going to use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the cost calculator.
- Hidden/Implicit Meaning: Storage economics signal.

Line 77:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Hopefully you better understand how to use this and how to get an estimate on your data storage for S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/05_Amazon S3 Pricing/034_Determining Data Transfer Costs for Amazon S3.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the next topic I want to touch on is data transfer to S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, any time we're moving data between some other target or source, well, Amazon's probably going to charge us for it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: However, in the case of transferring data into S3 from the Internet, maybe that's from your house, maybe that's from your office or your data center and you're doing a data transfer objects into S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, Amazon actually doesn't charge you for that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: They want you to bring data into Amazon S3 So to entice you to do that, well, they don't charge you any data transfer fees to do that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: Amazon Lex, Amazon S3
- Key Insights: However, if you do decide to transfer data from Amazon S3, well, it can get a little bit complex in terms of how much they're going to charge you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it all depends on where you're going with that data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, to start off, the first 100 gig is free each month.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now that's a vast change of what Amazon used to provide back in the day.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: It used to be any data that came out of S3 is going to be charged some kind of fee.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now they actually give you 100 gigabyte for free each month to the Internet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And by the Internet, I mean from S3 across the Internet to something like your office or data center to your house to wherever.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, after that 100 gig, AWS does charge per gig that you pull out of S3 And again, it's one of those tiered structures.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for the first ten terabytes, they're going to charge you $0.09 per gig.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The next 40TB is going to be just over $0.08 per gig.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just a little bit cheaper.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The next 100TB is going to be $0.07.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if you're going to pull out more than 150TB, it's going to be $0.05 per gig.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So again, it depends on how much data you pull out or download from S3 and transfer that to some other target location.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, data transfer to other AWS services a little bit different before we were talking about to and from the Internet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So some other location outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now if you're transferring data within AWS with to and from other AWS services, there are different charges.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a lot cheaper there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if you are going to transfer data from Amazon S3 and you happen to use Amazon CloudFront in order to host those files, well, they don't actually charge you for that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is free.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, transfers to other AWS regions is actually just $0.02 a gig, but it can be considerably more depending on the source region that you're going to.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Remember before we talked about that different regions cost different prices because maybe it costs more to operate data centers there.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if you move data out of S3 that lives in Africa, which is Cape Town, it's actually going to be just over $0.14 per gigabyte.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's considerably more expensive than other regions that may just charge like a penny or two between different regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, keep that in mind.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Keep in mind where you're transferring that data to because other regions may cost a considerable amount more of money.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Don't forget that on top of that data transfer fee, well, the fee to store that data in that target location may be considerably more from where it's stored now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, again, if you're moving data from something like us East One to maybe Africa, Cape Town, the data storage fee per gig per month may be considerably less than US East one than it is in Cape Town.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And don't forget, you have to pay that data transfer fee in order to move it and copy it from one to another as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Something to keep in mind there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that wraps up the cost management section.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully these were helpful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And you better understand all the different costs that are associated with not only storing data on Amazon S3, but interacting, moving, copying and restoring data in Amazon S3 as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching the lecture and we'll see you in the next one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/10_S3 Monitoring and Alerts/106_Amazon S3 Costs with Cost Explorer.txt

Line 1:
- Concepts: Storage Operational Context
- Services: AWS Cost Explorer
- Key Insights: The next tool I want to discuss is Cost Explorer.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: AWS Cost Explorer
- Key Insights: Now, Cost Explorer is a separate service and it's going to help you understand and manage your costs and usage over time.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: AWS Cost Explorer, Amazon S3
- Key Insights: Specifically for S3, you can use Cost Explorer to analyze your S3 costs at a higher level month over month.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: AWS Cost Explorer, Amazon S3
- Key Insights: How much did I spend in Amazon S3 Or you can actually combine Cost Explorer with cost allocation tags to enable more fine grained reporting for your data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: AWS Cost Explorer, Amazon S3
- Key Insights: So you have a bunch of buckets down here on the left, you would use Cost Explorer to analyze all those buckets and you can create cost reports based upon how you're using S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look to see what one of these reports may look like.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in my account, I went ahead and ran a monthly cost by service.
- Hidden/Implicit Meaning: Storage economics signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And you can see over here on the right that I've filtered it down just by S3 costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So you can kind of see month over month what my spend is directly in S3 Now, personally, I don't have a ton of stuff inside of my S3 buckets, so you can see I'm spending about an average of $2 a month and it's slowly been going up as I've added more and more stuff into S3 But this gives you a good idea on understanding what your monthly costs may be month over month using S3 You can, of course look at this data in a graph perspective like I'm looking at now, or you can choose a line chart or other things that help you better analyze this data.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I mentioned cost allocation tags before.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now these cost allocation tags are just simple tags that you would add to some of your resources, but inside of the billing console, you would specify or enable these specific tags to be used for cost allocation.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now you may use something like application or team ID or business unit in order to group different resources together and understand, okay, how much is this application costing me?
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How much is this team spending in AWS?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Those are the reasons you want to create and use cost allocation tags.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, once you enable those, what you can do is you can tag your different buckets or data using these cost allocation tags, and then you can run a new report to gather the costs and filter those results down to the S3 service and of course, those cost allocation tags.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, one thing to note here is that tags are not immediately available after you create them or enable them in the billing console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it may take about 24 hours in order for that to take effect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Object Storage Patterns
- Services: AWS Cost Explorer, Amazon S3
- Key Insights: And then allowing you to go into the Cost Explorer dashboard and actually filtering down by S3 and then filtering down by your cost allocation tags in order to properly understand what you're spending for the application or for that team or business unit.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Object Storage Patterns
- Services: AWS Cost Explorer, Amazon S3
- Key Insights: So what we'll do is we'll jump into AWS and we will take a look at the Cost Explorer and we'll see how we can filter those results down by S3 and then filter it down by a tag that I've enabled inside of my account.
- Hidden/Implicit Meaning: Storage economics signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/108_Using Data Locality to Reduce Network Latency.txt

Line 1:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: In this section, we're going to discuss an important aspect of any cloud storage, and that's performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, although S3 is a hosted service, there are many things that you can do or some of the features that you can take advantage to really increase the performance of reading or writing data to Amazon S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: The performance of a storage service is essentially how quickly and efficiently data can be transferred to and from that storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, for something like a cloud based storage, that may seem pretty basic, but it does have pretty far reaching implications.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, when you have an efficient S3 performance, it ensures that applications and your services that rely on the storage can run smoothly.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, without bottlenecks, this is going to be crucial for data intensive applications that you might be running in your organization.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So imagine you're running some kind of big data analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You want to distribute this content to a pretty wide audience, or you want to handle backup and recovery processes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: In all of these scenarios, you're really dealing with a large volume of data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, high performance is going to be absolutely critical in order to process and manage all this data within an acceptable time frame.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you're thinking about backup and recovery processes, well, you want to make sure you can back up in a timely fashion.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But it's really, really important when you get to that recovery phase, if you have an outage and you need to recover data, well, time is of the essence.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You want to make sure that you can recover that data very, very quickly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So what really affects the performance of S3?
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a hosted service, you think?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, there's probably not a lot I can do.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, it's not really just a single element.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: There are, in fact, several factors in play when we think about performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: First, the way data is accessed, whether it's through high frequency, small reads or very, very large bulk retrievals, it can really make a difference.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Then there's the issue of how data is organized within your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Things like naming conventions of your S3 objects can surprisingly have a big impact.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: Moreover, the configuration of your S3 buckets such as enabling, transfer, acceleration or choosing the right storage class is also crucial.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 23:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Finally, network latency and the bandwidth between the client that's accessing the data that lives in your S3 bucket can definitely affect performance as well.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 24:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: This section is going to highlight a number of those features and considerations that you can use to increase performance when interacting with S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, the first one we're going to talk about is data locality.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And and hopefully this one should seem pretty evident.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: But say we have a bucket called Amazon S3 Deepdive and this bucket has objects in it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But more importantly, this bucket lives at us East one that is Northern Virginia in the US.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now in your accounts, maybe in your production accounts, you may be actually consuming services in multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, maybe we have workloads that run in US East one, US one AP, Northeast one and AP South two.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Maybe it's the same application, but we're processing data and all that data lives in our bucket in US East one.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we think about the process of accessing this data from us East one like we may be pretty good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: We're accessing data from the same region that the data lives in.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we think about AP Northeast one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, maybe we have a little bit of latency here, but it's still sufficient enough to process our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, as we move across Europe, maybe we increase latency and okay, maybe it's starting to be a problem and maybe even we move to AP South two, We have very high latency trying to access our data in our bucket and it's causing some issues.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So data locality, meaning where is the data and where is it being accessed from, can have an enormous impact on your performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what can we do to help?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Data Protection and Immutability, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, if we have all of our regions and we have our applications that are accessing our data and we had all of our data in US East one, well, we can use some of the features that we've already talked about in this course, namely replication to start replicating that data into buckets that live in other regions.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we replicate the data to EU West one, AP, South two and AP Northeast one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So now we have the same copy of data that lives in all four of our regions and now we can access all the data locally from our application so we have minimal latency to access the same data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: But we're relying on cross region replication to ensure that data lives in all of our regions.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 43:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So that is one way that we can increase performance of our applications that are accessing our data is simply make the data local to the application.
- Hidden/Implicit Meaning: Storage economics signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can use some of the features that we've already talked about in order to do that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/109_Using Parallelization for Better Read_Write Performance.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The next topic here is Parallelization.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that actually mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So if we have an application that's running in AWS and we want the application to process data that lives inside of our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, inside of our bucket, we may have a prefix called customers and that's where all of our objects live.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Our application is simply going to read data from our bucket and it's going to read from Amazon S3 Deepdyve slash customers.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, the downside to just using a single prefix here is that you have a maximum rate of 5500 reads per second.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if you exceed 5500 reads per second, you may actually get a 503 slowdown error returned back from the API.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So any time you read from a specific prefix in a bucket, you are limited to 5500 reads per second.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now that's a lot, 5500 reads per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you are processing a ton of ton of data through your application and you need to input all that data into your app, well, you may actually exceed that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So one thing you can do is you can increase the read and write performance by using Parallelization.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's see what that looks like.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How do we actually increase our data throughput?
- Hidden/Implicit Meaning: Storage economics signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, we've got our app and we've got our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But in this case, what we can do is we can reorganize our data and we can actually put individual customers into individual prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So instead of lumping them all together under a single prefix called customers, now we can break out customers into each individual prefix.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So we have customer one, two, three and four here and we have customers respective data in each one of these prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now what we can do is we can rewrite our application to start reading our data, but read it from the individual prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're reading from customer one, customer to customer three and customer four.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, we're doing this in parallel.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're not just going out and getting customer one and waiting till that's done and getting Customer two and waiting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: Until that's done, we can go grab all this data at the same time by reading individual prefixes.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now before I said we are limited to 5500 reads per second per prefix.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 24:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: And in this case, now we're actually reading from four different prefixes at the same time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what we get is a new maximum rate of 22,000 reads per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means 5500 reads per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if you do the math, that comes up to 22,000 reads per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: So by reading from multiple prefixes at the same time, in parallel, we can actually increase the maximum rate that we can read data from our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, that's one way we can increase, read or write performance for our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: Now this works the same way for writes as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, the example here is reads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: But if you are writing data to a bucket, if you write data to multiple prefixes at the same time, you do get a new higher maximum rate for writing data to a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: AWS SAM
- Key Insights: So that's parallelization, which means that instead of us reading from a single prefix or writing to a single prefix, now we're reading or writing from multiple prefixes at the same time.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/110_Scale Your Applications for Higher Throughput.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The next one I want to talk about is scaling your application.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Before we talked about how we scale our application by doing different kind of reads and writes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But this time we want to talk about is scaling your actual application.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have our app here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon EC2
- Key Insights: Maybe it's a database that's running on EC2 and this app is querying petabytes of data from our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Now, since this application is running on EC2, the maximum network throughput that we be able to get from an EC2 instance is 100 gig a second.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: That's a pretty substantial EC2 instance, but you can get up to 100 gig a second on EC2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now this means that you may be limited to the transfer rates of a single instance, even if you're reading from hundreds or thousands of prefixes where we think we're going to get hundreds or thousands of reads a second based upon parallelism that we just talked about, well now we actually may be limited to the network throughput of our instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal; Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So similar to what we talked about before, what we can do here is we can start scaling out our application rather than having a single application that's querying data from EC2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Maybe we scale out our application instead, we have four different apps and each one of those actually has its own 100 gig, a second throughput into S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now instead of being limited to 100 gig, we actually are limited to 400 gig.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: We've just got four times the performance by scaling out our application and now we can actually read and write data much faster to Amazon.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 Now by scaling out your application across multiple instances instead of using a single instance, we're using multiple instances, we can actually achieve multiple terabits per second in order to access our data that lives in our Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 Buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/111_Using CloudFront to Serve Data to Customers.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The next one I want to talk about is how we can serve data to customers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: In this case, maybe we're a streaming company and we're storing all of our assets inside of an S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, in this case, this S3 bucket lives in Us-east-1 and we've got all of our video assets that live inside of our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe this is a nine part series.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We've got all of our videos living in a single bucket inside of Us-east-1.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But we're a company that serves our videos across the United States.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we may have viewers in New York, viewers in Dallas, viewers in Los Angeles.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And of course, they're out there to watch the best Amazon S3 course out there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Maybe it's a nine part series on Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I don't know.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so our users in New York, they're accessing our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's pretty low latency because New York is on the East Coast and so is US East one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So not a lot of distance between them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Latency looks good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The users in New York have no problem watching our video.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we move to Dallas.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Dallas is kind of central us and we may have a little bit more latency from Dallas over to Virginia.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, these are probably exaggerated a little bit.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: You probably won't have 50 milliseconds latency from Dallas to Virginia, but for the sake of this video, Dallas may have a little bit more latency accessing our buckets on the East Coast.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, Los Angeles, which is actually on the West Coast, totally opposite coast of where our data is stored.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, they may be having problems accessing our video because they have a much higher latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They're going across the country in order to access our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we may have problems in Dallas and we may have problems in Los Angeles that they're buffering our videos when they're trying to watch and learn about Amazon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 So what can we do to increase performance for our users?
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: How can we increase the performance for our customers?
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, our video assets bucket lives in US East One, which is on the East Coast.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What we can do is actually introduce CloudFront and what we can do is distribute our content across all the edge locations across the United States.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now what happens is these edge locations actually live in all these different cities across the US.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And when our users across New York, Dallas and Los Angeles access our content, well, they're not having to go all the way to us East One in order to access the content, they would actually communicate with the local CloudFront edge location that's probably in their city.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: New York, Dallas and Los Angeles are large enough where they probably have one or more edge locations in that city.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now rather than going all the way over to the East Coast, the folks in Los Angeles can actually interact with the content using the CloudFront Edge location because it's now local and now they don't have any problem with accessing it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Users in New York access the content in New York, very low latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Dallas users access the content in Dallas, very low latency, right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And same thing for LA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They're accessing the content in LA that's been distributed and they have a great video experience as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So by using CloudFront, we can distribute our content across all of these edge locations and now our users don't have to go all the way to our bucket in Virginia.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They can actually access the data locally using CloudFront edge locations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/11_Amazon S3 Performance/112_Faster Uploads for Your Data with Transfer Acceleration.txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So up until this point, we've really been talking about reading data from our Amazon S3 bucket, but it may be important to increase write performance as well.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look to see what we have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, in this example, we're a streaming company and we're creating and editing videos and maybe we're working with video editors around the world where a US based company, but maybe we have video editors in Europe and of course, this video editor as they're working on our videos and editing them, making them look perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: They have all these edited videos that they need to upload into our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, in this case, since we're a US based company, maybe our bucket still lives in US East One.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If you think about the video editor location as compared to the Bucket and where it lives in US East one that's thousands of miles apart from Europe all the way back to the US across the Atlantic Ocean.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And our video editor well, may not have a great experience uploading it because it's so far apart and they may have slow upload times.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So our video editor is not happy in this case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what can we do?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, we can use a feature called transfer acceleration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So across the AWS infrastructure, not thinking about your account, but thinking about all the infrastructure that Amazon itself manages for AWS inside of their architecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Of course, they have all the services that support S3, in this case US East one, but throughout their infrastructure they also have these edge locations as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They may have an edge location in London, they may have a location in Hyderabad, and these edge locations have an AWS backbone to the rest of the architecture, a very fast private network backbone that Amazon can use to actually transfer data very, very fast.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're not thinking about the public Internet that's inherently unreliable.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is private connectivity that Amazon has laid down and they use between all their services.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, what our video editor can do is rather than upload those videos directly to us, one, a video editor can now upload using our edge locations and on the back end, Amazon's going to actually use that backbone to upload that data into our bucket that lives all the way in US East one.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So from a video editor perspective, they have a really great experience by uploading data because they're simply uploading data to a local edge location and then Amazon itself takes care of migrating that data from the edge location all the way over to our bucket, regardless of where that lives.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we really accelerate the upload for our user by using edge locations, very similar to how we accelerated the download for our users using CloudFront for content distribution.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now what we're doing is we're distributing edge locations where users can use to upload data as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take another look to see what this looks like on a map.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, we have the US over here on the left and we have Europe on the right.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Again, we have our video assets bucket that lives in the US on the East Coast and we've got our video editor in Europe now we've got our edge location in Europe and this video editor can simply upload using the edge location.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And now on the back end, Amazon's going to go ahead and migrate our data into our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The video editor has a great experience because they're working with a local edge location versus having to go all the way over to.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Usds one Directly across the internet you get much faster upload speeds for your data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, the great thing about all these edge locations is they are all over the place.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: AWS has created edge locations all around the world.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: There's hundreds of them everywhere.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you decide to add more video editors to your team, maybe in Norway or Sweden, this user up here can access a local edge location in Norway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then on the back end we accelerate the transfer of the data using that edge location.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: Same thing in Greenland.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: If you have a user up there that's editing videos that needs to upload that data, this user can simply upload using the local edge location and the data is going to be transferred over to our bucket using AWS private backbone.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 34:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So again, edge locations all around the world, no matter who you're working with, if you have a centralized bucket where you want folks to upload to, this is a great way that you can really accelerate your uploads to an AWS bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how do I actually use transfer acceleration?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Well, the first thing is you go into your bucket and you simply enable it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's simply edit And do I want to enable it or not enable it?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's really the only choice that you get now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: When you enable it, you actually get what's called an accelerated endpoint.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, the original or the default endpoint for our Amazon S3 Deep-dive bucket may look like this.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 Deepdive. amazon.com and now the accelerated endpoint is Amazon S3.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Deep dive dot S3 dash accelerate dot Amazon Aws.com.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have a different endpoint that we would use in order to upload our data.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now it's accelerated using AWS backbone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- Hidden/Implicit Meaning: Storage economics signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Does it really make a difference?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Does transfer acceleration really make a difference?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, it actually does.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In the middle here is a map of the US and the X is generally where I live, kind of central us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: Now there's a website that you can actually use to test whether it makes a difference, and it's going to test all kinds of different regions for you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, I ran this test and here are the results of some of these tests.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How fast is it if I use transfer acceleration versus a traditional endpoint going to Us-east-1, which is in Virginia?
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And by the way, on the map, you can see the red dot there with a V, just because I know a lot of folks taking this course may not be from the US.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I just want to make sure you understand where we're talking about here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, if I were to transfer data to Northern Virginia or Us-east-1 using transfer acceleration, I may get a 1% increase.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Not a whole lot.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: May not be worth the cost for that particular use case.
- Hidden/Implicit Meaning: Storage economics signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, I ran against San Francisco, which is US West one, and for some reason it was 4% slower.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So transfer acceleration may not be perfect and may also depend on your Internet connectivity where you're coming in from.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: ET cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In this case, it was 4% slower.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can see where San Francisco is on the map here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, Oregon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Oregon, you see on the map in the top left there, it was actually 4% faster for me to use transfer acceleration going to Oregon, which is US West two.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's the US.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What about outside of the US?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now Dublin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the test ran against Dublin, which is EU West one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It was actually 25% faster with me using transfer acceleration versus not using transfer acceleration quite a bit faster.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How about Frankfurt?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: 39% faster using transfer acceleration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, Mumbai was actually 76% faster using transfer acceleration versus not using transfer acceleration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So you can really see that transfer acceleration excels when you're moving data or uploading data to buckets to regions that are far away.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 74:
- Concepts: Cost and Performance Optimization
- Services: Amazon ECR
- Key Insights: When it's local, you get a little bit of performance increase or in my case, you get a performance decrease if I'm going to San Francisco.
- Hidden/Implicit Meaning: Storage economics signal.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But in this case, if I'm going from the US over to Europe, you can see it's considerably faster if I'm using transfer acceleration versus not using transfer acceleration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So down here at the bottom I post a link.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I've also included it as a resource.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: On this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can access this site and you can test it for yourself.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: It'll actually download a file locally and it'll upload to S3, I guess to an Amazon account so it doesn't incur any costs on your side, but it will upload using the standard endpoint and then it'll upload using the accelerated endpoint and it shows you the difference between the two.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I thought it would be really cool to showcase the difference between not using acceleration and using acceleration in a real world scenario here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And of course you can see if you're uploading data to a region that's pretty far away, you get a substantial increase in performance when you're writing data.
- Hidden/Implicit Meaning: Storage economics signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/113_Intro to Cost Management.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: In this section, we are going to talk all about cost management.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Obviously, storing your data on S3 is important, but of course we all want to do it in the most cost effective manner as possible.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So this section we're going to go over all the different tools and ways that you can save costs when you're using Amazon S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, we've already talked about how Amazon S3 is a highly available and cost effective cloud storage solution, but let's dive into the main cost factors here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So storage data transfer, APIs and monitoring.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now storage really refers to the data that you're going to store in your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Amazon S3 offers virtually unlimited storage capacity, and that allows you to store retrieve any amount of data at any time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: However, it's really important to consider the costs associated with the amount of storage that you utilize, especially if you are footing the bill.
- Hidden/Implicit Meaning: Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If your organization is not obviously in an organization, it's important, but it may be a little bit more important to you if it's coming out of your own wallet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Obviously, the more data you store, the higher the costs will be.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if you have files that you don't need in your S3 bucket, well, the easiest way to save costs is just going to be delete that data from your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, the next cost factor here is going to be data transfer.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: This includes data transfer between different storage classes within Amazon, S3 and any outbound data transfer from your buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 14:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now when you move data between storage classes or retrieve data from your buckets, you're probably seeing additional costs associated with that data transfer.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, of course, it's essential to keep track of these costs, to optimize and usage and minimize your expenses in S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Keep in mind that frequent changes between your storage classes could really increase your costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you might need to take a closer look at your data and better understand your access patterns to place it in the correct storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That way, it's not constantly being moved around.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: API requests are another crucial consideration for Amazon S3 APIs represent the number of API calls that you're going to make, such as things like gets, which is like retrieving data or just puts, which is uploading data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: S3 charges for your API costs as we've talked about already and each API call ultimately going to incur a small cost.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So therefore the number of API calls can really add up over time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Understanding your API usage patterns can help you optimize your costs and really minimize all these unnecessary calls that are going to increase your bill.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's really important to evaluate the benefits that you're getting out of these tools versus the cost impact when you're using some of these features.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So in summary, the primary costs that we're looking at here in Amazon S3 really include our storage, our data transfer, our API calls and our monitoring solutions.
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So by being mindful of some of these cost factors, you can really start to optimize your usage, minimize your expenses in S3 and obviously ensure efficient management of your data storage in the cloud.
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we've seen this slide before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon RDS
- Key Insights: Of course, choosing the correct storage class is going to be paramount for saving costs if you are not accessing your data very frequently, well, it may make sense to start moving that data over towards the right on this screen as we move over towards the right, over to Glacier and things like that, Well, the costs per gigabyte go down to very, very minimum.
- Hidden/Implicit Meaning: Storage economics signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, monitor your access pattern for a lot of your data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you're not accessing it very often you want to start moving it across of this list to save on costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at some other considerations for cost here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We're going to take a look at some of these main cost factors, including access rates, object size, object count and duration of storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, the first is access rates, which really refers to how often you're going to access your data that's stored in S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's important to choose the storage class that really aligns with your access patterns as frequent access or retrieval of the data may incur additional costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, analyze your access rates will help you optimize your costs and allow you to select the most cost effective storage class for that particular data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 36:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Object size is another cost factor to consider when using Amazon S3 and we really haven't talked about it a whole lot.
- Hidden/Implicit Meaning: Storage economics signal.

Line 37:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So while there are charges based upon the size of your object, there are minimum charges for objects smaller than 128 K So if you have a lot of small objects in your bucket, it's really essential to evaluate the overall cost impact of those.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you have a bunch of smaller files, you might.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Actually benefit from compressing them into a single larger file, and that actually may save some costs on S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 40:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: The next one is object count, and that really refers to the total number of objects that you're storing in S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We already know that we can store an infinite amount of objects inside of our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We don't have a limit in terms of the number of objects.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: However, it's important to know that as you increase the object count, that can have cost implications in terms of monitoring analytics and storage size.
- Hidden/Implicit Meaning: Storage economics signal.

Line 44:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Some of these monitoring and analytics costs may increase as you start analyzing a larger number of objects.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And storing more objects naturally increases your overall storage costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 46:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So it's going to be crucial for you to evaluate the trade off between the benefits of an object count and the associated costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 47:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: So the more objects that you have in your bucket, the more it's going to cost for monitoring analytics and of course moving those objects between different tiers or classes.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 48:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: If you have things like lifecycle rules or intelligent tiering.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 49:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And finally, duration should be a consideration when you're using certain storage classes in S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 50:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now remember that some of the storage classes charge a minimum duration fee.
- Hidden/Implicit Meaning: Storage economics signal.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you retrieve your data before the minimum number of days, it's essential to assess your data access requirements and choose the appropriate storage class based upon your expected retrieval patterns.
- Hidden/Implicit Meaning: Storage economics signal.

Line 52:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So if you're going to put some backup or archive data on some of these storage classes, make sure you understand and be realistic about how often or when you're going to retrieve that data.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if it's just a copy of a backup file, most likely you won't need that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the extra cost, if you have to retrieve that may be worth it in that scenario.
- Hidden/Implicit Meaning: Storage economics signal.

Line 55:
- Concepts: Storage Operational Context
- Services: AWS Budgets
- Key Insights: So by understanding the duration costs, you can make better informed decisions that align with your budget and your usage needs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The next topic for considerations for cost is obviously moving your data to the right storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That one should be pretty obvious in terms of saving costs here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now of course we can use intelligent tiering, which is really designed to help us remove the uncertainty of which storage class to choose from or for data that we have unknown access patterns for.
- Hidden/Implicit Meaning: Storage economics signal.

Line 59:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: Keep in mind that Intelligent-tiering does have a monitoring pricing and it only monitors objects that are greater than 128.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: K says they have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Customers have saved $1 billion using intelligent tiering.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it could be an option for you if you're unsure of what your access patterns may be for some of your data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if you have data in S3 and maybe Intelligent-tiering doesn't necessarily work well for your use case, well, we can simply use lifecycle rules in order to migrate our data for us.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 64:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So if we have predefined time frames that we want to move our data, we can simply use lifecycle rules to do that instead of relying on intelligent-tiering to do that for us.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 65:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now remember that lifecycle rules only tiered data down and not back up.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 66:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So it's not like intelligent tiering where I can move it back up to say, S3 standard if the data is being accessed more frequently.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Lifecycle rules only go downward.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you think you may be accessing your data more frequently, it might cost you more for frequent retrieval of that data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 69:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: If lifecycle rules have moved it into a tier such as Glacier, if you're not sure of which storage class to use, or maybe the workload is consistent or requires frequent access, then you can simply just do direct puts to like S3 standard and have your data live on that storage class.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you understand what your access pattern is, then you can go straight to that storage class without having to pay for intelligent tiering or risk putting it on a lower tier and having to pay retrieval fees and minimum storage fees.
- Hidden/Implicit Meaning: Storage economics signal.

Line 71:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the next way that we can save money is using the right retrieval mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Cost and Performance Optimization
- Services: Amazon Glacier
- Key Insights: So if you recall, some of our storage classes have retrieval fees, especially when you're considering the glacier family of storage classes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 73:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So if we have an S3 bucket here, we have a storage admin and we need to get an object, we need to choose the data retrieval speed.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And just like Fedex or UPS or whatever, the faster we need our data, well, the more it's going to cost us.
- Hidden/Implicit Meaning: Storage economics signal.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have our retrieval fees of things like standard AIA and one zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: AIA is just a penny per gig.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: We go to Glacier, it's $0.03 per gig, and then we move to Glacier flexible and deep archive and you can see that the price keeps on going up.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 78:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The faster that we need our data and it goes down, the slower that we require our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: Amazon Glacier, Amazon Lex
- Key Insights: So if you need to retrieve data from, say, Glacier Flexible, but you don't necessarily.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Need it right away.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to work on it sometime this week.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's not necessarily urgent.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 83:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then you can choose something like standard or bulk and save quite a bit on your retrieval costs if you don't need that data right away.
- Hidden/Implicit Meaning: Storage economics signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, if it's something like a backup or something like that where you need it immediately, it may be worth the cost to go ahead and get that expedited.
- Hidden/Implicit Meaning: Storage economics signal.

Line 85:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So you have that data right away and you can restore that for the requester.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 86:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is another way that you can save on costs using the right retrieval mode for your particular use case.
- Hidden/Implicit Meaning: Storage economics signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/115_Incomplete Multipart Uploads.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in the next part I want to talk about in cost savings is incomplete, multi-part uploads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we already know what multi-part uploads are.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We take the original object, we're going to take parts of the object and we're going to upload all of them separately.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And ultimately, what's going to happen is, as all those parts are uploaded, we complete our multi-part upload and the objects written to the S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But what happens in the multi-part upload if some of our parts actually fail, you're actually paying for incomplete multi-part uploads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: If you do nothing about this, all those extra little parts that already live there, you're going to actually pay for them and the parts remain and count towards your storage bill.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Cost and Performance Optimization
- Services: Amazon RDS
- Key Insights: So just like the delete markers, you can use storage lens to look at multi-part uploads to see how much storage you are using and probably accumulating towards your bill on failed or incomplete multi-part uploads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's another place to look if you're looking for some cost savings.
- Hidden/Implicit Meaning: Storage economics signal.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/116_Other Ways to Save on Costs.txt

Line 1:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So a couple other ways that we can save on S3 costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can of course, move our data to a different region with a lower price.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Remember, not all regions are priced equally.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Some are cheaper, some are more expensive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you happen to be storing your data in a more expensive region, well, consider moving that data to a different region that's cheaper.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's immediate cost savings there.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: The next thing we can look at is our replication.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: What we can do is take a look at all of our data and determine does all of our data actually need to be replicated to another S3 bucket or can we only replicate some of that data to save on costs?
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal; Storage economics signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Remember, it does cost money to move data between regions.
- Hidden/Implicit Meaning: Storage economics signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you don't necessarily need all that data to be moved between regions, maybe you only need a subset of that data in the event of a disaster recovery or something like that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: Well, then you can actually just migrate some of your data and not all of your data to decrease your costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the last one here is to use native tools to query your data rather than downloading the contents to import into another tool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Object Storage Patterns
- Services: Amazon Athena, Amazon S3
- Key Insights: Keep in mind that AWS does integrate S3 with a lot of different services, so if you need to query the data that's already living in S3, take a look at something like Athena that can actually query your data in S3 rather than download that data from S3 and import into another tool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Remember, anytime we're downloading the contents from an S3 bucket, we're paying the outbound fee in order to download that.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So check out some of the native tools that are available in AWS to make sure that they can meet your use cases and you could save on your bill there as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/117_Realizing Costs Benefits of Consolidated Billing.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The last part I want to touch on here is consolidated billing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, most organizations don't just have a single account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Most organizations will have a lot of accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Some have hundreds of accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And each one of those accounts may be storing data inside of S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you take a look at this example here, I've got eight different accounts and I've got examples of what maybe some of these accounts may be storing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Account one has 100 terabyte in S3 account three has ten terabyte.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: ET cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And these are all the costs that are associated with storing that much data in S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a pretty hefty bill, $29,000 a month.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: But if you look at we're storing a lot of data in S3 now, this is the cost per month, assuming S3 standard if you are using all these accounts separately.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at this a little bit more detail.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If we break this out a little bit further.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Again, we have our account one, two, three, four, five on the left, and we've got the amount of storage that we're storing down here in green.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you break that apart in the monthly costs, you can see that, well, we're paying, I don't know, around $0.37, $0.35 is the cheapest here, but a lot of them are 39, 37.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Ultimately, what we would love is that we would love to be able to pay this cheaper price for all of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Obviously, the cheaper the better.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is really our ideal cost rate because that's the cheapest that we're going to find at this particular storage class.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, one thing that we can do for our accounts, and I would say most organizations are already doing this, but if you're not, I wanted to bring it up to showcase the benefits of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So one way that we can help save on costs is we can ensure that our accounts follow a proper structure.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, most organizations, I would say, are doing this today, but they take all of their accounts and they put them into what's called an AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, when you enable an AWS organization, you get a management account, and one of the features that you can enable in the management account is consolidated billing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what consolidated billing provides you is a single bill for all of your accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case we have account one through eight.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as we consume resources in all of these accounts, well, the bill goes directly to our management account here and we get a single bill for all the resources that we consume throughout all eight accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, it does break that down per account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And of course, you can use things like tags or other things to identify where the costs are coming from.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But essentially all of these accounts underneath of your organization are going to roll up into this one management account and you're going to get a single bill here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then once you get that bill, obviously, then you would pay AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's check out some of the benefits that consolidated billing would give us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we look at our accounts one more time here again, we break down how much we're storing in each account and the costs per gig and our total bill here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now what happens when you add consolidated billing?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, that bill sees all of these combined.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It doesn't see 100 terabyte, ten terabyte, 30 terabyte, 250 terabyte and builds them separately.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That one bill says, you know what, Across all of my accounts, I'm consuming 1300 terabytes of storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what happens is Amazon then applies the cheaper rates because that's over our 450 terabyte, which is the cheaper rate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it applies that cheaper rate to our total here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that gives us a new bill which is almost $1,000 less just by consolidating our accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we get the cheaper rates because we're consolidating our billing into a single bill there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's one of the benefits of consolidated billing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can take advantage of these economies of scale as you scale up and use more resources, then you actually get cheaper rates and when you consolidate them into a single account, you can actually realize those benefits on your bill.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS Storage and DB/amazon-s3-deep-dive/12_Cost Management/118_Tools That Can Help with Cost Management.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's take a look at cost management here.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now we have a lot of tools that are native to AWS that can provide us a lot of good information that we can use to monitor our costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Storage Operational Context
- Services: AWS Cost Explorer
- Key Insights: So the first one here is Cost Explorer.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a completely free tool that's offered by AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now it allows you to visualize your data and start gaining insights into your AWS costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: AWS Cost Explorer
- Key Insights: Now, Cost Explorer allows you to filter data based on dimensions such as like service, region type, all that fun stuff, and you can start filtering your data to understand where your costs are coming from.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: AWS Budgets, Amazon S3
- Key Insights: It does provide a user friendly interface for cost analysis and budgeting, and of course you can use it directly with S3.
- Hidden/Implicit Meaning: Storage economics signal.

Line 8:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now storage lens, of course, that's going to be one of our main tools specifically for S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It really combines data from multiple tools and presents them on a dashboard for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It does offer things like advanced metrics for in-depth analysis, including metrics like gets, puts, bytes, offloaded, etcetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It does provide a good breakdown of status codes if you want to get that deep 204 versus a 206 versus a 200.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It also helps us monitor and optimize our storage costs effectively.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So storage lens is probably going to be your main tool for trying to break down your costs associated with S3 and better understand where you can save money.
- Hidden/Implicit Meaning: Storage economics signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now of course we have our AWS cost and usage report.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Storage Operational Context
- Services: AWS Cost Explorer
- Key Insights: It really acts as a data version of Cost Explorer.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Cost and Performance Optimization
- Services: Amazon Athena
- Key Insights: It provides us raw data for performing analytics, such as using Athena to get exported data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: Amazon Lex
- Key Insights: It does offer us more flexibility and analyzing cost data in detail, and it does also enable deeper cost optimization and custom reporting for us.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: A great tool to use for Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Object Storage Patterns
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: Now we have Cloudwatch S3 metrics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you want to get really deep in terms like looking at the logs to better understand your costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: Cloudwatch is going to offer us like monitoring capabilities specifically for S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It provides two default metrics total bucket size and the number of items in the bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But you can also track metrics related to gets puts and our Http status codes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: Amazon CloudWatch
- Key Insights: So one of the benefits of using Cloudwatch there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now we also have service logs which allow you to access very granular level of S3 bucket activity.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have two different types of logs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have S3 server access logs, which record access requests made to your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 28:
- Concepts: Storage Operational Context
- Services: AWS CloudTrail
- Key Insights: And then we also have our Cloudtrail log data events which captures detailed API activity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now these logs need to be enabled to view and analyze, but again, if you really need to get deeper into analyzing your usage of Amazon S3 service logs could be an option for you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And finally, we have our S3 inventory reports, so this can help obtain a comprehensive list of every single object inside of your bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: It can provide details and attributes of each of those objects.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: It also will allow you to export the inventory report to an S3 bucket for further analysis.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, this is particularly useful for identifying objects that are smaller than 128 K so you can use the inventory report to report on that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So as you can see, like AWS offers a very wide range of native tools to monitor the costs of your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So by leveraging any of these tools or combination of these tools, you can really optimize your spending, improve your efficiency of your data and gain insights into your environment.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, one thing I wanted to also mention is beyond the native tools that we have, we also have tons and tons of third party tools that are available in the market.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, I'm not going to list any on here because I don't want to play favorites.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: There are lots of open source and paid versions of tools that you can use to do cost analysis on both S3 and of course, across your entire cloud environment.
- Hidden/Implicit Meaning: Storage economics signal.

Line 39:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: If these native tools aren't necessarily meeting your standards or you find that it's kind of a pain to get what you need to effectively monitor your costs, maybe take a look at some of those third party tools and maybe they can give you what you need.
- Hidden/Implicit Meaning: Storage economics signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's going to wrap up our cost management section.
- Hidden/Implicit Meaning: Storage economics signal.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Hopefully that was beneficial to you and provided a lot of data and how you can analyze all your S3 usage and your data and make sure that you can get the best bang for your buck when you're using Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching and we'll see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/13_Advanced Amazon S3/139_S3 Performance.txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, we have to talk about the S3 Baseline performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, by default, Amazon S3 automatically scales to a very, very high number of requests, and has a very, very low S3 between 100 and 200 milliseconds to get the first byte out of S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, this is quite fast.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in terms of how many requests per second you can get, you can get 3,500 PUT/COPY/POST/DELETE, per second, per prefix, and 5,500 GET/HEAD requests per second per prefix in the buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: So, this is something you can get on the website and I think it's not very clear, so I'll explain to you what per second per prefix means.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: But what that means in viral is that it's really, really high performance and, there's no limits to the number of prefixes in your bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal; Storage economics signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, let's take an example of four objects named file, and let's analyze the prefix for that object.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The first one is in your bucket, in folder one, sub folder one slash file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: In this case, the prefix is going to be anything between the bucket and the file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, in this case it is slash folder one, slash sub one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, that means that for this file in this prefix, you can get 3,500 Puts and 5,500 Gets per second.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, if we have another folder one and then sub two, the prefix is anything between buckets and file, so slash folder one slash sub two, and so we get also 3,500 Puts and 5,500 Gets for that one prefix, and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, if I have one and two we have different prefixes, and so it's easy now to understand what a prefix is, and so it's easy to understand the rule of 3,500 Puts and 5,500 Gets per second per prefix in a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, that means that if you spread reads across all the four prefixes above evenly, you can achieve 22,000 requests per second for Head and Gets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, let's talk about S3 performance, how we can optimize it?
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is multi-part upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, it is recommended to use multi-part upload for files that are over 100 megabytes, and it must be used for files that are over five gigabytes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what multi-part upload does is that it parallelize uploads and that will help us speed up the transfers to maximize the bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, as a diagram, it always makes more sense.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, we have a byte file, and we want to upload that file into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We will divide it in parts, so smaller chunks of that files and each of these files will be uploaded in parallel to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: In Amazon S3, once all the parts have been uploaded, it's smart enough to put them together back into the big file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, very important.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, we have S3 transfer acceleration, which is for upload and download and it is to increase the transfer speed by transferring a file to an AWS edge location, which will forward the data to the S3 bucket in the target region.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, edge locations there are more than regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: There are about over 200 edge locations today, and it's growing, and let me show you in the graph what that means?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And that's S3 transfer acceleration is compatible with multi-part upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have a file in the United States of America, and we want to upload it to S3 bucket in Australia.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, what this will do is that we will upload that file through an edge location in the United States, which will be very, very quick, and then we'll be using the public internet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then from that edge location to the Amazon S3 bucket in Australia, the edge location will transfer it over the fast, private AWS network.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, this is called transfer acceleration, because we minimized the amount of public internet that we go through and we maximized the amount of private AWS network that we go through.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, transfer acceleration is a great way to speed up transfers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, now how about getting files?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How about reading the file in the most efficient way?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have something called an S3 Byte Range Fetches, and so it is to paralyze Gets, by getting specific byte ranges for your files.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, it's also in case you have a failure to get a specific byte range, then you can retry a smaller byte range and you have better resilience in case of failures.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, it can be used to speed up downloads this time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, let's try a file in S3, it's really, really big and this is the file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to request the first part, which is the first few bytes of the file, then the second part and then the end parts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, we request all these parts as specific bytes range fetches, that's why it's called byte range, because we only request a specific range of the file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all these requests can be made in parallel.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, the idea is that we can parallelize the Gets and speed up the downloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The second use case is to only retrieve a partial amount of the file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, if you know that the first 50 bytes of the file in S3 are a header and give you some information about the file, then you can just issue a header request to byte range request for the headers using the first say 50 bytes, and you would get that information very quickly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: All right, so that's it for S3 performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We've seen how to speed up uploads-downloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: We've seen the baseline performance and we've seen the KMS limits.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, make sure you know those going into the exam and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/13_Advanced Amazon S3/144_S3 Requester Pays.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is a feature that you may get tested on at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And this is called S3 Requester Pays.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the name is quite obvious.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, in general, from what we've seen, the bucket owners will pay for all of the Amazon S3 storage and also the data-transfer costs associated with their buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: We have a set of buckets, we're storing some objects in it, and then a requester, so, a user will download a file from our bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And then what happens is that the networking cost is also being billed to the owner of the bucket and the objects, okay?
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: But, in case you are having a lot of heavy files and some of the customers want to download them, maybe you want to enable Requester Pays buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in that case, the requester will pay instead of the bucket owner for the data download of the objects.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example again.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The owner still will pay for the storage costs of the objects within the bucket, but now the requester will download the object and the requester will be the one paying for the networking costs associated with that download.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The idea is that this is very helpful if you want to start sharing large data sets with other accounts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for it to do so, the requester must not be anonymous, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The requester must be authenticated in AWS because when it is authenticated with AWS, then AWS knows to bill the requester of that request for that specific download of the object, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it, just a feature to remember.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It can come up in the exam in a scenario.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/13_Advanced Amazon S3/147_S3 Performance.txt

Line 1:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, we have to talk about the S3 Baseline performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 2:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, by default, Amazon S3 automatically scales to a very, very high number of requests, and has a very, very low S3 between 100 and 200 milliseconds to get the first byte out of S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, this is quite fast.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: And in terms of how many requests per second you can get, you can get 3,500 PUT/COPY/POST/DELETE, per second, per prefix, and 5,500 GET/HEAD requests per second per prefix in the buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 5:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EBS
- Key Insights: So, this is something you can get on the website and I think it's not very clear, so I'll explain to you what per second per prefix means.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: (none explicit)
- Key Insights: But what that means in viral is that it's really, really high performance and, there's no limits to the number of prefixes in your bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal; Storage economics signal.

Line 7:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, let's take an example of four objects named file, and let's analyze the prefix for that object.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 8:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: The first one is in your bucket, in folder one, sub folder one slash file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 9:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: In this case, the prefix is going to be anything between the bucket and the file.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, in this case it is slash folder one, slash sub one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, that means that for this file in this prefix, you can get 3,500 Puts and 5,500 Gets per second.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 12:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: Now, if we have another folder one and then sub two, the prefix is anything between buckets and file, so slash folder one slash sub two, and so we get also 3,500 Puts and 5,500 Gets for that one prefix, and so on.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, if I have one and two we have different prefixes, and so it's easy now to understand what a prefix is, and so it's easy to understand the rule of 3,500 Puts and 5,500 Gets per second per prefix in a bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: (none explicit)
- Key Insights: So, that means that if you spread reads across all the four prefixes above evenly, you can achieve 22,000 requests per second for Head and Gets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 15:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, let's talk about S3 performance, how we can optimize it?
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is multi-part upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, it is recommended to use multi-part upload for files that are over 100 megabytes, and it must be used for files that are over five gigabytes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what multi-part upload does is that it parallelize uploads and that will help us speed up the transfers to maximize the bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, as a diagram, it always makes more sense.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, we have a byte file, and we want to upload that file into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We will divide it in parts, so smaller chunks of that files and each of these files will be uploaded in parallel to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: In Amazon S3, once all the parts have been uploaded, it's smart enough to put them together back into the big file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, very important.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, we have S3 transfer acceleration, which is for upload and download and it is to increase the transfer speed by transferring a file to an AWS edge location, which will forward the data to the S3 bucket in the target region.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, edge locations there are more than regions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: There are about over 200 edge locations today, and it's growing, and let me show you in the graph what that means?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And that's S3 transfer acceleration is compatible with multi-part upload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have a file in the United States of America, and we want to upload it to S3 bucket in Australia.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, what this will do is that we will upload that file through an edge location in the United States, which will be very, very quick, and then we'll be using the public internet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And then from that edge location to the Amazon S3 bucket in Australia, the edge location will transfer it over the fast, private AWS network.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, this is called transfer acceleration, because we minimized the amount of public internet that we go through and we maximized the amount of private AWS network that we go through.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, transfer acceleration is a great way to speed up transfers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, now how about getting files?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How about reading the file in the most efficient way?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: We have something called an S3 Byte Range Fetches, and so it is to paralyze Gets, by getting specific byte ranges for your files.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, it's also in case you have a failure to get a specific byte range, then you can retry a smaller byte range and you have better resilience in case of failures.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, it can be used to speed up downloads this time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So, let's try a file in S3, it's really, really big and this is the file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to request the first part, which is the first few bytes of the file, then the second part and then the end parts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, we request all these parts as specific bytes range fetches, that's why it's called byte range, because we only request a specific range of the file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And all these requests can be made in parallel.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, the idea is that we can parallelize the Gets and speed up the downloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The second use case is to only retrieve a partial amount of the file.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: For example, if you know that the first 50 bytes of the file in S3 are a header and give you some information about the file, then you can just issue a header request to byte range request for the headers using the first say 50 bytes, and you would get that information very quickly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: All right, so that's it for S3 performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We've seen how to speed up uploads-downloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: We've seen the baseline performance and we've seen the KMS limits.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, make sure you know those going into the exam and I will see you in the next lecture.
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
- AWS Budgets
- AWS CloudTrail
- AWS Config
- AWS Cost Explorer
- AWS SAM
- Amazon Athena
- Amazon CloudWatch
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
- performance
- pricing
- replication
- s3
- storage classes

### 4. Use Cases
- 031_Introduction to Amazon S3 Pricing.txt:4: So when we step back and take a look at high level with the basics are of Amazon S3 pricing, it's mainly contingent on three core elements here.
- 031_Introduction to Amazon S3 Pricing.txt:10: Now we talked about storage class earlier, and when you upload your objects, you're going to choose a storage class that you want to store that object in.
- 031_Introduction to Amazon S3 Pricing.txt:12: Now, of course, we talked about S3 offers like this wide range of classes designed for all these specific use cases, and each one of those vary in price.
- 031_Introduction to Amazon S3 Pricing.txt:18: For example, storing data in North Virginia, which is the typical default region for most folks, it might be cheaper than storing the same amount of data in Tokyo now, factors that impact costs of how much it costs to store data on S3 may be things like data sovereignty, latency, the cost to run those data centers in that particular region.
- 031_Introduction to Amazon S3 Pricing.txt:29: These should be fairly consistent depending on when you're watching this.
- 031_Introduction to Amazon S3 Pricing.txt:54: Now if we take a step back and look at Intelligent-tiering, so we talked about Intelligent-tiering when we introduced our storage classes.
- 031_Introduction to Amazon S3 Pricing.txt:84: Now, when you look at the pricing of this for the first 50TB of data that you store and of course this is based upon each month you're going to be charged that rate that we just talked about of $0.023 per gigabyte per month, pretty easy, but that's for the first 50 terabyte.
- 031_Introduction to Amazon S3 Pricing.txt:89: Now, again, it may seem like a small decrease, but when you're dealing with very large quantities of data, again now we're talking about close to 500TB of data, this reduction can really start to lead to some significant savings.
- 031_Introduction to Amazon S3 Pricing.txt:90: Now, finally, when you hit the 500 terabyte mark and beyond, your cost is going to drive further down to $0.21 per gigabyte per month.
- 031_Introduction to Amazon S3 Pricing.txt:96: So remember when we moved to Standard-ia, it was like 0.025, something like that, and even below.
- 032_Understanding Requests and Data Retrieval Fees.txt:7: So for example, we have 40 gig of data that consists of 5000 files.
- 032_Understanding Requests and Data Retrieval Fees.txt:32: But again, these are the other charges that you need to be aware of when you're working with Amazon.
- 032_Understanding Requests and Data Retrieval Fees.txt:39: So for example, down here at the bottom, we've got our user, our user may be uploads or writes data or objects to Amazon S3 Standard.
- 032_Understanding Requests and Data Retrieval Fees.txt:58: We have $0.03 per gig when we pull data out of instant retrieval.
- 032_Understanding Requests and Data Retrieval Fees.txt:73: So again, I told you it can be kind of complex when you start thinking about other costs in regards to Amazon S3 When you start actually moving data around, retrieving data, life cycle transitions gets puts, all those kind of things.
- 032_Understanding Requests and Data Retrieval Fees.txt:75: So when you do retrieve data from Amazon S3, what's going to happen is it's actually going to copy that data from the existing storage class that it's stored in.
- 032_Understanding Requests and Data Retrieval Fees.txt:77: Now, keep in mind that when you do restore this archived object, you are going to pay for both the archive and the copy that you restored temporarily.
- 033_Demo - Using the Cost Calculator for Amazon S3.txt:21: How much data are we going to put inside of our bucket, let's say, for example, 60TB.
- 033_Demo - Using the Cost Calculator for Amazon S3.txt:38: Say, for example, ours is 100 Meg per file, so you get an estimate down here, your total upfront cost of how much it would cost for all those puts into S3.
- 108_Using Data Locality to Reduce Network Latency.txt:5: For example, when you have an efficient S3 performance, it ensures that applications and your services that rely on the storage can run smoothly.
- 108_Using Data Locality to Reduce Network Latency.txt:12: But it's really, really important when you get to that recovery phase, if you have an outage and you need to recover data, well, time is of the essence.
- 108_Using Data Locality to Reduce Network Latency.txt:18: There are, in fact, several factors in play when we think about performance.
- 108_Using Data Locality to Reduce Network Latency.txt:24: This section is going to highlight a number of those features and considerations that you can use to increase performance when interacting with S3.
- 111_Using CloudFront to Serve Data to Customers.txt:24: So we may have problems in Dallas and we may have problems in Los Angeles that they're buffering our videos when they're trying to watch and learn about Amazon.
- 111_Using CloudFront to Serve Data to Customers.txt:30: And when our users across New York, Dallas and Los Angeles access our content, well, they're not having to go all the way to us East One in order to access the content, they would actually communicate with the local CloudFront edge location that's probably in their city.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:39: When you enable it, you actually get what's called an accelerated endpoint.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:45: Now keep in mind this does incur costs if you use transfer acceleration and make sure you check out the pricing to make sure that it's going to be worth it for your use case.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:57: May not be worth the cost for that particular use case.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:73: So you can really see that transfer acceleration excels when you're moving data or uploading data to buckets to regions that are far away.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:74: When it's local, you get a little bit of performance increase or in my case, you get a performance decrease if I'm going to San Francisco.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:82: And of course you can see if you're uploading data to a region that's pretty far away, you get a substantial increase in performance when you're writing data.
- 113_Intro to Cost Management.txt:3: So this section we're going to go over all the different tools and ways that you can save costs when you're using Amazon S3.
- 113_Intro to Cost Management.txt:14: Now when you move data between storage classes or retrieve data from your buckets, you're probably seeing additional costs associated with that data transfer.
- 113_Intro to Cost Management.txt:15: Now, of course, it's essential to keep track of these costs, to optimize and usage and minimize your expenses in S3.
- 113_Intro to Cost Management.txt:23: Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- 113_Intro to Cost Management.txt:24: So it's really important to evaluate the benefits that you're getting out of these tools versus the cost impact when you're using some of these features.
- 113_Intro to Cost Management.txt:26: So by being mindful of some of these cost factors, you can really start to optimize your usage, minimize your expenses in S3 and obviously ensure efficient management of your data storage in the cloud.
- 113_Intro to Cost Management.txt:36: Object size is another cost factor to consider when using Amazon S3 and we really haven't talked about it a whole lot.
- 113_Intro to Cost Management.txt:49: And finally, duration should be a consideration when you're using certain storage classes in S3.
- 113_Intro to Cost Management.txt:52: So if you're going to put some backup or archive data on some of these storage classes, make sure you understand and be realistic about how often or when you're going to retrieve that data.

### 5. Constraints / Limitations
- 031_Introduction to Amazon S3 Pricing.txt:5: Now first, we have the amount of data you can store and that should be pretty obvious and straightforward.
- 031_Introduction to Amazon S3 Pricing.txt:27: The cost for S3 have traditionally only gone down.
- 031_Introduction to Amazon S3 Pricing.txt:29: These should be fairly consistent depending on when you're watching this.
- 031_Introduction to Amazon S3 Pricing.txt:38: I don't know if you could believe that, but it is only 0.004 of a dollar.
- 031_Introduction to Amazon S3 Pricing.txt:93: Now, one thing I want to note that these discounts only apply to S3 Standard Storage class.
- 031_Introduction to Amazon S3 Pricing.txt:94: While it's the most commonly used, we may be storing data on other storage classes that might better suit our needs.
- 031_Introduction to Amazon S3 Pricing.txt:97: So these discounts only apply to S3 Standard as we move to our other storage classes.
- 033_Demo - Using the Cost Calculator for Amazon S3.txt:39: Now how often are you going to update or put additional storage into your S3 bucket if you're only going to put this data up there one time and then consume it frequently, maybe not update it, you can just leave this as zero.
- 034_Determining Data Transfer Costs for Amazon S3.txt:39: And you better understand all the different costs that are associated with not only storing data on Amazon S3, but interacting, moving, copying and restoring data in Amazon S3 as well.
- 108_Using Data Locality to Reduce Network Latency.txt:26: And and hopefully this one should seem pretty evident.
- 109_Using Parallelization for Better Read_Write Performance.txt:8: So any time you read from a specific prefix in a bucket, you are limited to 5500 reads per second.
- 109_Using Parallelization for Better Read_Write Performance.txt:23: Now before I said we are limited to 5500 reads per second per prefix.
- 110_Scale Your Applications for Higher Throughput.txt:8: Now this means that you may be limited to the transfer rates of a single instance, even if you're reading from hundreds or thousands of prefixes where we think we're going to get hundreds or thousands of reads a second based upon parallelism that we just talked about, well now we actually may be limited to the network throughput of our instance.
- 110_Scale Your Applications for Higher Throughput.txt:11: So now instead of being limited to 100 gig, we actually are limited to 400 gig.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:38: That's really the only choice that you get now.
- 113_Intro to Cost Management.txt:7: Amazon S3 offers virtually unlimited storage capacity, and that allows you to store retrieve any amount of data at any time.
- 113_Intro to Cost Management.txt:23: Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- 113_Intro to Cost Management.txt:42: We don't have a limit in terms of the number of objects.
- 113_Intro to Cost Management.txt:49: And finally, duration should be a consideration when you're using certain storage classes in S3.
- 113_Intro to Cost Management.txt:57: That one should be pretty obvious in terms of saving costs here.
- 113_Intro to Cost Management.txt:59: Keep in mind that Intelligent-tiering does have a monitoring pricing and it only monitors objects that are greater than 128.
- 113_Intro to Cost Management.txt:65: Now remember that lifecycle rules only tiered data down and not back up.
- 113_Intro to Cost Management.txt:67: Lifecycle rules only go downward.
- 116_Other Ways to Save on Costs.txt:8: What we can do is take a look at all of our data and determine does all of our data actually need to be replicated to another S3 bucket or can we only replicate some of that data to save on costs?
- 116_Other Ways to Save on Costs.txt:10: So if you don't necessarily need all that data to be moved between regions, maybe you only need a subset of that data in the event of a disaster recovery or something like that.
- 139_S3 Performance.txt:6: But what that means in viral is that it's really, really high performance and, there's no limits to the number of prefixes in your bucket.
- 139_S3 Performance.txt:17: So, it is recommended to use multi-part upload for files that are over 100 megabytes, and it must be used for files that are over five gigabytes.
- 139_S3 Performance.txt:41: So, we request all these parts as specific bytes range fetches, that's why it's called byte range, because we only request a specific range of the file.
- 139_S3 Performance.txt:44: The second use case is to only retrieve a partial amount of the file.
- 139_S3 Performance.txt:48: We've seen the baseline performance and we've seen the KMS limits.
- 144_S3 Requester Pays.txt:13: And for it to do so, the requester must not be anonymous, okay?
- 144_S3 Requester Pays.txt:14: The requester must be authenticated in AWS because when it is authenticated with AWS, then AWS knows to bill the requester of that request for that specific download of the object, okay?
- 147_S3 Performance.txt:6: But what that means in viral is that it's really, really high performance and, there's no limits to the number of prefixes in your bucket.
- 147_S3 Performance.txt:17: So, it is recommended to use multi-part upload for files that are over 100 megabytes, and it must be used for files that are over five gigabytes.
- 147_S3 Performance.txt:41: So, we request all these parts as specific bytes range fetches, that's why it's called byte range, because we only request a specific range of the file.
- 147_S3 Performance.txt:44: The second use case is to only retrieve a partial amount of the file.
- 147_S3 Performance.txt:48: We've seen the baseline performance and we've seen the KMS limits.

### 6. Patterns / Architectures
- 031_Introduction to Amazon S3 Pricing.txt:12: Now, of course, we talked about S3 offers like this wide range of classes designed for all these specific use cases, and each one of those vary in price.
- 031_Introduction to Amazon S3 Pricing.txt:15: So the trick here is to select the storage class that best matches your usage patterns and your needs.
- 031_Introduction to Amazon S3 Pricing.txt:55: Now remember, S3 Intelligent-tiering has multiple tiers within it and that allows us to move our data between tiers depending on our access patterns.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:11: So across the AWS infrastructure, not thinking about your account, but thinking about all the infrastructure that Amazon itself manages for AWS inside of their architecture.
- 112_Faster Uploads for Your Data with Transfer Acceleration.txt:13: They may have an edge location in London, they may have a location in Hyderabad, and these edge locations have an AWS backbone to the rest of the architecture, a very fast private network backbone that Amazon can use to actually transfer data very, very fast.
- 113_Intro to Cost Management.txt:17: So you might need to take a closer look at your data and better understand your access patterns to place it in the correct storage class.
- 113_Intro to Cost Management.txt:22: Understanding your API usage patterns can help you optimize your costs and really minimize all these unnecessary calls that are going to increase your bill.
- 113_Intro to Cost Management.txt:23: Lastly, monitoring and analytics costs should be considered when you're using Amazon S3 features like Intelligent-tiering or storage lens while they provide valuable insights to your storage usage, performance and access patterns, they may have associated costs, especially if you enable some of these advanced features.
- 113_Intro to Cost Management.txt:29: So again, monitor your access pattern for a lot of your data.
- 113_Intro to Cost Management.txt:34: So it's important to choose the storage class that really aligns with your access patterns as frequent access or retrieval of the data may incur additional costs.
- 113_Intro to Cost Management.txt:51: If you retrieve your data before the minimum number of days, it's essential to assess your data access requirements and choose the appropriate storage class based upon your expected retrieval patterns.
- 113_Intro to Cost Management.txt:58: Now of course we can use intelligent tiering, which is really designed to help us remove the uncertainty of which storage class to choose from or for data that we have unknown access patterns for.
- 113_Intro to Cost Management.txt:62: So it could be an option for you if you're unsure of what your access patterns may be for some of your data.
- 113_Intro to Cost Management.txt:70: So if you understand what your access pattern is, then you can go straight to that storage class without having to pay for intelligent tiering or risk putting it on a lower tier and having to pay retrieval fees and minimum storage fees.

## Step 3 - Deep Expansion (Storage Concepts)

### Core Services in This Topic
- AWS Budgets: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Cost Explorer: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
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
