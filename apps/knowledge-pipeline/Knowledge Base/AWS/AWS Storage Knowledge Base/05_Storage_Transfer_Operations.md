# 05_Storage_Transfer_Operations.md

## Scope
- Topic: DataSync, Storage Gateway, Transfer Family, and hybrid transfer operations
- Files processed: 9
- Extracted non-empty transcript lines: 308
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Storage Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Storage: Storage Transfer Operations)

This section is the study-first architecture guide for datasync, storage gateway, transfer family, and hybrid transfer operations.

### Phase 1 - Foundations

#### Module: Storage Transfer Operations Mental Model
- Use storage transfer operations decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Storage Transfer Operations Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/078_AWS DataSync - Solution Architecture.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/177_Storage Gateway Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/080_AWS Transfer Family.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/179_AWS Transfer Family.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/180_DataSync - Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/077_AWS DataSync.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/178_Storage Gateway Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/172_AWS Snow Family Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/173_AWS Snow Family Hands On.txt
- Top concept clusters from transcript metadata:
- Hybrid Transfer and Mobility
- Block and File Storage Design
- Lifecycle Operations
- Object Storage Patterns
- Cost and Performance Optimization
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 9
- Module-selected transcript files: 9
- Key insight candidates scanned (topic): 308
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- And finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- And finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- The transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.
- So you can run Snowcone on-premises, then it will pull your data, run the DataSync agents, then it will be shipped back into your AWS region and then synchronize your data to the storage resources of AWS.
- And for this, again, we will use the AWS DataSync service and it will copy the data of course, but also the metadata will be kept between the different AWS storage services, which is very important.
- So very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- But if you use any of these, for example, VMware, Microsoft Hyper-V, or Linux KVM, that means that you can set up the storage gateway directly on premises in your data center.
- So whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.

##### Polished Architect Notes
- Transcript signals that instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- Transcript signals that so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Transcript signals that and finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- Transcript signals that and finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- Transcript signals that so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Transcript signals that the transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.
- Transcript signals that so you can run Snowcone on-premises, then it will pull your data, run the DataSync agents, then it will be shipped back into your AWS region and then synchronize your data to the storage resources of AWS.
- Transcript signals that and for this, again, we will use the AWS DataSync service and it will copy the data of course, but also the metadata will be kept between the different AWS storage services, which is very important.
- Transcript signals that so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Transcript signals that but if you use any of these, for example, VMware, Microsoft Hyper-V, or Linux KVM, that means that you can set up the storage gateway directly on premises in your data center.
- Transcript signals that so whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- Transcript signals that also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.

##### Architect Synthesis (Transcript-Derived)
- Treat Hybrid Transfer and Mobility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- Design implication: so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Design implication: and finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- Design implication: and finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- Design implication: so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/080_AWS Transfer Family.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/179_AWS Transfer Family.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/172_AWS Snow Family Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/173_AWS Snow Family Hands On.txt
- Top concept clusters from transcript metadata:
- Hybrid Transfer and Mobility
- Cost and Performance Optimization
- Object Storage Patterns
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 9
- Module-selected transcript files: 4
- Key insight candidates scanned (topic): 308
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- And finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- And finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- The transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.
- So whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- And in terms of pricing, you're going to pay per provisioned endpoints per hour, plus a fee per gigabytes of data transferred in and out of the Transfer Family.
- And in terms of pricing, you're going to pay per provision end points per hour, plus a fee per gigabytes of data transferred in and out of the transfer family.
- You will receive a Snowball Edge device and you have to load your data onto it and then send it back to AWS thanks to the shipping label that's included.
- Or do you want to export, in which case you export data from Amazon S3 and it gets loaded into the Snowball device and then you receive it.
- And then you will be having an export process within AWS to take your data from the Snowball onto, for example, an Amazon S3 bucket.
- So we're going to order a Snow family device, or at least go through the process of ordering one to see what are the options.
- And if you use Snowball, well, you're going to receive a physical Snowball device, you, yourself in your own infrastructure.
- We can choose this one, the Snowball Edge Storage optimized with 210 terabytes, or the compute optimized device.

##### Polished Architect Notes
- Transcript signals that and finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- Transcript signals that and finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- Transcript signals that the transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.
- Transcript signals that so whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- Transcript signals that and in terms of pricing, you're going to pay per provisioned endpoints per hour, plus a fee per gigabytes of data transferred in and out of the Transfer Family.
- Transcript signals that and in terms of pricing, you're going to pay per provision end points per hour, plus a fee per gigabytes of data transferred in and out of the transfer family.
- Transcript signals that you will receive a Snowball Edge device and you have to load your data onto it and then send it back to AWS thanks to the shipping label that's included.
- Transcript signals that or do you want to export, in which case you export data from Amazon S3 and it gets loaded into the Snowball device and then you receive it.
- Transcript signals that and then you will be having an export process within AWS to take your data from the Snowball onto, for example, an Amazon S3 bucket.
- Transcript signals that so we're going to order a Snow family device, or at least go through the process of ordering one to see what are the options.
- Transcript signals that and if you use Snowball, well, you're going to receive a physical Snowball device, you, yourself in your own infrastructure.
- Transcript signals that we can choose this one, the Snowball Edge Storage optimized with 210 terabytes, or the compute optimized device.

##### Architect Synthesis (Transcript-Derived)
- Treat Hybrid Transfer and Mobility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- Design implication: and finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- Design implication: the transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.
- Design implication: so whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- Design implication: and in terms of pricing, you're going to pay per provisioned endpoints per hour, plus a fee per gigabytes of data transferred in and out of the Transfer Family.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/180_DataSync - Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/077_AWS DataSync.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/080_AWS Transfer Family.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/078_AWS DataSync - Solution Architecture.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/177_Storage Gateway Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/179_AWS Transfer Family.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/172_AWS Snow Family Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/178_Storage Gateway Hands On.txt
- Top concept clusters from transcript metadata:
- Hybrid Transfer and Mobility
- Block and File Storage Design
- Lifecycle Operations
- Object Storage Patterns
- Storage Operational Context
- Cost and Performance Optimization
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 9
- Module-selected transcript files: 8
- Key insight candidates scanned (topic): 308
- Key insights inside selected files: 24
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- Finally, you need to learn about the Endpoint Types for the Transfer Family as, and their associated security.
- So here's a quick lecture around an architecture for DataSync.
- Instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- And finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- And finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- Maybe you have a long cloud migration, maybe you have security requirements or compliance requirements, maybe it's part of your strategy to only leverage a cloud for elastic workloads, but to keep a lot of stuff on-premises.
- So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- So here you get static private IPs to access your endpoints, and you can set up allow list because you can leverage now the security group feature or Network ACLs to get access and manage access into your endpoint.
- The transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.

##### Polished Architect Notes
- Transcript signals that so that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- Transcript signals that finally, you need to learn about the Endpoint Types for the Transfer Family as, and their associated security.
- Transcript signals that so here's a quick lecture around an architecture for DataSync.
- Transcript signals that instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- Transcript signals that so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Transcript signals that and finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- Transcript signals that and finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- Transcript signals that so when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- Transcript signals that maybe you have a long cloud migration, maybe you have security requirements or compliance requirements, maybe it's part of your strategy to only leverage a cloud for elastic workloads, but to keep a lot of stuff on-premises.
- Transcript signals that so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Transcript signals that so here you get static private IPs to access your endpoints, and you can set up allow list because you can leverage now the security group feature or Network ACLs to get access and manage access into your endpoint.
- Transcript signals that the transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.

##### Architect Synthesis (Transcript-Derived)
- Treat Hybrid Transfer and Mobility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Object Storage Patterns as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- Design implication: finally, you need to learn about the Endpoint Types for the Transfer Family as, and their associated security.
- Design implication: so here's a quick lecture around an architecture for DataSync.
- Design implication: instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- Design implication: so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.

### Phase 2 - Core Services
- AWS Snow Family should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- AWS Lambda should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon EFS should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Block and File Storage Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cost and Performance Optimization becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Protection and Immutability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Hybrid Transfer and Mobility becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lifecycle Operations becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design storage transfer operations with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when storage transfer operations decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

- No secondary referral sources were required for this topic.

## CloudOps / SysOps Exam Enrichments
> Source: aws-certified-cloudops-associate transcripts â€” 167_Storage Gateway for CloudOps.txt

### Storage Gateway â€” SysOps Operational Details

#### File Gateway: POSIX Compliance
- File Gateway is POSIX-compliant (Linux file system semantics).
- Object metadata â€” owner, permissions, timestamps â€” is stored in the S3 object's metadata alongside the content.

#### Gateway Reboot Procedures (exam-testable distinction)
- **File Gateway**: simply restart the Gateway VM. No service-stop step required.
- **Volume Gateway / Tape Gateway**: stop the Storage Gateway Service first (via Console, VM local console, or Storage Gateway API), then reboot the VM, then restart the Service.

#### Activation Key Methods
- Method 1 (CLI): Use the Gateway VM CLI on first start â†’ select "0: Get Activation Key" and paste the key into the Storage Gateway Console.
- Method 2 (HTTP): Make an HTTP GET request to the Gateway VM on Port 80 from the Console. Requires Port 80 open on the VM.

#### Activation Failure Causes
- Port 80 not open on the Gateway VM (required for HTTP method).
- Gateway VM clock drift â€” VM must synchronize time via NTP; excessive drift from the NTP server causes activation failure.

#### Volume Gateway Cached Mode â€” Cache Efficiency Monitoring
- Only the most recently accessed data is stored locally on the Volume Gateway; the rest remains in S3.
- **CacheHitPercent** (CloudWatch): target HIGH (e.g., â‰¥80%). High value = cache serving reads efficiently, low latency. Low value = too many cache misses.
- **CachePercentUsed** (CloudWatch): watch this â€” if too high, cache is near capacity and may evict useful data.
- Remediation for an over-full or inefficient cache: clone the current cache volume to a larger size disk, then assign the new disk as the cache volume on the Volume Gateway.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/172_AWS Snow Family Overview.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: Okay, so now let's talk about AWS Snowball.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a highly secure and portable device that allows you to collect and process data at the edge and migrate data in and out of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So if you have a migration of say, petabytes of data, Snowball may be a good use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So we have two kind of Snowball edge devices.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: One is called the Edge Storage Optimized, and the other one is called the Edge Compute Optimized.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the difference lies in their storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one has 210 terabytes and the other one has 28 terabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So obviously one is for storage and the other one is only used for computer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me tell you about data migrations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it takes a lot of time to transfer some data over a specific bandwidth speed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to transfer a hundred terabytes over one gigabytes per second connection, it would take you 12 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 13:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So the idea is that if you upload directly to Amazon S3, it's simple, but it may use all your bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: And if you use Snowball, well, you're going to receive a physical Snowball device, you, yourself in your own infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a physical machine, and then you load it with the data you need, and then finally you ship it back to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Hybrid Transfer and Mobility, Object Storage Patterns
- Services: AWS Snow Family, Amazon S3
- Key Insights: And then you will be having an export process within AWS to take your data from the Snowball onto, for example, an Amazon S3 bucket.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So this is the main use case of a Snowball device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The other one is a edge computing use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you wanna process data while it's being created on an edge location.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, it's a truck on the road or a ship on the sea, or a mining station on the ground.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And these locations may have no internet access or limited access to internet or compute power.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So here again, we order one of these big Snowball edge devices and we do edge computing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so that means that we have the Compute Optimized, this is dedicated for that use case for the search optimized devices.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: AWS Lambda, Amazon EC2
- Key Insights: And then because they have computing capability, we can actually run EC2 instances or Lambda functions directly on these devices.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The idea is that once the data is created and processed, we can send it back again to AWS, but by using an edge computing device, we can pre-process the data or we can do machine learning at the edge or directly transcode media at the edge.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's the use case for edge computing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: The Snowball service is really just something that is used for data migrations and edge computing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/173_AWS Snow Family Hands On.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So let's have a look at the AWS Snow family.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So we're going to order a Snow family device, or at least go through the process of ordering one to see what are the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So first we have a job name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is my import job, and then you choose a job title.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So do you want to import into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's going to be a very good use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: So Amazon will ship a Snowball device to you and then you send it back to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Hybrid Transfer and Mobility, Object Storage Patterns
- Services: AWS Snow Family, Amazon S3
- Key Insights: Or do you want to export, in which case you export data from Amazon S3 and it gets loaded into the Snowball device and then you receive it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or if you want to just do edge computing, you do local compute and storage only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So let's do import from Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we have Snow devices, so we can choose two of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: We can choose this one, the Snowball Edge Storage optimized with 210 terabytes, or the compute optimized device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Obviously over time, some of these devices may change, but don't worry.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: I just wanna show the idea behind Snow family, so don't worry.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, a lot of devices previously have been discontinued.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So these are the two options I have right now, but from an exam perspective, this should be more than enough for you to know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Alright, so next, you choose the pricing option.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So on-demand per day pricing, the storage transfer, so S3 data transfer, and then the buckets that you want to transfer data back into, for example, this one.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then no features and options, and then security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how do you encrypt your data?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How do you access service types?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you need to choose a service role.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And this service role will have access to Amazon S3 to allow to create this ServiceLink role and make sure that our Snow device has the right to write to our S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the shipping address, so where you want the snow device to be shipped to, because you're going to receive it, and then the shipping speed is a one-day shipping or two day shipping, and then notifications to see your job status.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you have the job summary, and that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: You will receive a Snowball Edge device and you have to load your data onto it and then send it back to AWS thanks to the shipping label that's included.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Snow Family
- Key Insights: You've seen how the Snow family works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Obviously we're not going to order one, because that would be way too complicated, but I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/177_Storage Gateway Overview.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So AWS is starting to push for hybrid cloud, and what is hybrid cloud?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means that part of your infrastructure is going to be on the cloud of AWS, and part of your infrastructure is going to stay on-premises, and this can be due to multiple reasons.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Maybe you have a long cloud migration, maybe you have security requirements or compliance requirements, maybe it's part of your strategy to only leverage a cloud for elastic workloads, but to keep a lot of stuff on-premises.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: So we have some services that we really like in AWS, such as Amazon S3, which is a proprietary storage technology, which is unlike EFS, which is an NFS compliance file system, so how would you expose, for example, the S3 data on-premises?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Hybrid Transfer and Mobility, Object Storage Patterns
- Services: AWS Storage Gateway, Amazon S3
- Key Insights: And the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So if we look at the storage cloud-native options on AWS, we have block storage, which is Amazon EBS, or the EC2 instance store.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon Glacier, Amazon S3
- Key Insights: We have file systems, such as Amazon EFS or Amazon FSX, and we have object-level storage, such as Amazon S3 or Amazon Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: So now, let's talk about the AWS Storage Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: So very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, that looks simple, but we have different use cases for this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: The first one is to do disaster recovery, so to back up your on-premise data into the cloud, or you can also do backup and restore, so to do a cloud migration or to extend your storage from on-premises to the cloud, and for example, your cloud has colder data, and your on-premises data has more warmer, more frequently used data.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design, Hybrid Transfer and Mobility, Object Storage Patterns
- Services: AWS Storage Gateway, Amazon S3
- Key Insights: So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will be explaining all of those in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So first, we have the Amazon S3 File Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So we have an S3 bucket, and we can use whatever storage class we want, for example, S3 Standard, S3 Standard-IA, S3 One Zone-IA, or S3 Intelligent-Tiering, but not Glacier, and we want to connect this S3 bucket to an on-premises application server, but we want to use a standard network file system.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: Amazon S3, Amazon Translate
- Key Insights: So for this, we're going to create an S3 File Gateway, which is going to allow our application server to use the NFS or the SMB protocol, and by using these protocols, behind the scene, the S3 File Gateway is going to translate those requests into HTTPS requests for your Amazon S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 18:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So from an application server perspective, it looks like it's accessing a normal file share, but in fact, behind the scenes, it is using an Amazon S3 buckets, and this is how you expose S3 objects onto on-premises application servers.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 19:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: Then if you wanted to archive some of these objects, you could create a lifecycle policy for your S3 bucket to transition objects after a while to S3 Glacier in order to have them archived.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 20:
- Concepts: Object Storage Patterns
- Services: AWS Config, Amazon S3
- Key Insights: So whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 21:
- Concepts: Cost and Performance Optimization, Lifecycle Operations, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So as I said, it supports different storage classes for your S3 buckets, and you can transition to S3 Glacier using a lifecycle policy.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal; Storage economics signal.

Line 22:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon S3
- Key Insights: Now, to access your bucket, you need to create IAM roles for each File Gateway, and then if you were to use the SMB protocol, because it is more native for Windows file systems, you have integration with Active Directory for user authentication, so that means that your users can be authentified with your S3 File Gateway before accessing it, and then therefore accessing your S3 buckets.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So that's the Amazon S3 File Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Block and File Storage Design, Lifecycle Operations, Object Storage Patterns
- Services: Amazon EBS, Amazon S3
- Key Insights: Next. we have the Volume Gateway, and this is block storage using the iSCSI protocol backed by Amazon S3, and the idea is that you will have your volumes being backed up by EBS snapshots, which can, in turn, help you restore on-premises volumes in case you need to.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 25:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So you have two types of Volume Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have the cached volumes to get low-latency access to the most recent volume data, or stored volume, where the entire dataset is on-premises, and there is a scheduled backup to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Block and File Storage Design, Lifecycle Operations, Object Storage Patterns
- Services: Amazon EBS, Amazon S3
- Key Insights: So here, our application server needs to be backed up, and so using this protocol, we're going to get a Volume Gateway, and the Volume Gateway will create Amazon EBS snapshots backed by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Block and File Storage Design
- Services: AWS SAM
- Key Insights: So the same logic here, but here, the goal of the Volume Gateway really is to back up your volumes of your on on-premises servers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Object Storage Patterns
- Services: AWS SAM, Amazon Glacier, Amazon S3
- Key Insights: Tape Gateway is that if you have some companies that have, for example, a tape backup system using physical tapes, then with the Tape Gateway, you do the same process, but the tapes are going to be backed up in the cloud, and so this virtual tape library, or VTL, is going to be backed by Amazon S3 and Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to back up existing data using tape-based process and using the iSCSI interface, and then this is going to work with leading backup software vendors.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So diagram you can expect, the corporate data center has a backup server, which is tape-based.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: The Tape Gateway will do the interface into the cloud by storing the tapes into Amazon S3 or in Amazon Glacier.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Finally, as you can see in all these diagrams from before, the gateway has to be installed on your corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It has to run within your corporate data center, but sometimes, you do not have virtual servers to run this additional gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: So let's try to summarize the Storage Gateway service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: So we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we want to have a File Gateway with a local cache, this is the use case, where we have a user group file share, and we want to access it over the NFS or the SMB protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: Option number one, we connect this into directly an S3 File Gateway, so therefore, your data is going to be backed by Amazon S3, and that includes many storage tiers except Glacier and Glacier Deep Archive. but we can create a lifecycle policy to send this into any storage class on Amazon S3, including S3 Glacier.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal; Storage economics signal.

Line 39:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Now, the other use case for a Volume Gateway is to have application servers mount volumes over the iSCSI protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Block and File Storage Design, Hybrid Transfer and Mobility, Lifecycle Operations, Object Storage Patterns
- Services: AWS Storage Gateway, Amazon EBS, Amazon S3
- Key Insights: So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 41:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: Next, we have your backup applications, connecting over the iSCSI VTL protocol to a Tape Gateway, and the Tape Gateway is connected to Amazon S3 as a tape library, and then we can transition these tapes into the Glacier and Glacier Deep Archive tier to create an archive of your tapes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, that summarizes everything we've seen in this lecture and you understand it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/178_Storage Gateway Hands On.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: So let's go into Storage Gateway and we'll have a look at just how to create a gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here we have a gateway name.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll call this one Demo Gateway, and let's look at the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So we have the Amazon S3 file gateway, which is to access files in Amazon S3 directly through NFS or SMB file protocol and has local caching.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: We have FSX, but this is grayed out because this is going away, so forget about it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Then, we have tape gateway and volume gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I just wanna show you the quick options of all of these.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So for Amazon S3 file gateway, we can host it in several different ways.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: We can host it on VMware, on Microsoft Hyper-V, on Linux KVM, or on Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And if you launch on Amazon EC2, that means that your caching and your gateway is going to be within your accounts of AWS, which may or may not be desirable.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: But if you use any of these, for example, VMware, Microsoft Hyper-V, or Linux KVM, that means that you can set up the storage gateway directly on premises in your data center.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: And so therefore, the Amazon S3 data is going to live closer to your servers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this may be more desirable or less based on your use case.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For the other options, we have tape gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: Again, we have different platform options, and this is to confirm to have a tape archive using ISCI-VTL, and to store these tapes in Amazon S3 Glacier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 16:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And finally, volume gateway to have block storage volume, but backed by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here we can see the two options that we like.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have cached volume and stored volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon S3
- Key Insights: So cache volume is your primary data is stored in Amazon S3, and your frequently accessed data is retained locally in the cache for low-latency access.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon S3
- Key Insights: And stored volume, where your entire dataset is stored locally, and then it's synced asynchronously to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you have to choose, and for these, you have different options, like waffle platforms.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Storage Gateway
- Key Insights: But that's it, all the options I wanted to show you for Storage Gateway.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/179_AWS Transfer Family.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: Now let's talk about the AWS transfer family.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: So the idea is that you want to send data in and out of Amazon S3 or EFS but you don't want to use the S3 APIs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: You don't want to use the EFS network file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You just want to use the FTP protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: In this case, you need to use the transfer family service from AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it supports three kinds of protocols.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It supports AWS transfer for FTP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the file transfer protocol, FTP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: FTPS, which is the file transfer protocol over SSL, so encrypted form.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or SFTP, which is a secure file transfer protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now you don't want you to be an expert on those.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just know that FTP is unencrypted whereas FTPS and SFTP are encrypted in flight.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: Now, the idea is that using the FTP protocol, you can upload to S3 or EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: The transfer family is fully managed infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's scalable, reliable, and highly available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you manage at all that capability.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Cost and Performance Optimization, Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: And in terms of pricing, you're going to pay per provision end points per hour, plus a fee per gigabytes of data transferred in and out of the transfer family.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can store and manage a user's credentials for that service within the service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or you can also integrate with existing authentication system, such as Microsoft Active Directory, LDAP, Okta, Amazon Cognito or any custom source.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: The usage of this is obviously to have an FTP interface into Amazon S3 or EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as to share files, to share public datasets, to do CRM, ERP, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just the diagram for you to understand.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: The transfer family has three flavors and the users can access directly using the end points of the FTP or optional, you can use a GNS called route 53 to provide your own the host name into the FTP service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: And then the FTP service thus so the transfer for FTP service will have an IAM role that will be assumed to send or read through the files from Amazon S3 or Amazon EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is done transparently.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You don't have to set any many things up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: And finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's say, just that you know, this feature as a high level, I hope you liked it. and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/180_DataSync - Overview.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So now, let's talk about AWS DataSync.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And DataSync is a service that is appearing now quite a lot at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a very simple one, but you need to know what it does and its core.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the idea as an image, to indicate is to synchronize data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, move large amount of data to, and from places.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And these places can be for example, on-premises or other cloud locations into AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you would connect to your server using the NFS, the SMB, the HDFS, or other protocols, and it needs an agent to run on-premises or on the other cloud to do that connection.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can, for example, do other types of migrations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, you can move data from one AWS service to another AWS service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this requires no agent.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will show you what it means.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So the idea is that you can synchronize data to Amazon S3 including any storage classes, even Glacier.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Block and File Storage Design
- Services: Amazon EFS, Amazon FSx
- Key Insights: Amazon EFS, to store into your network file system, or Amazon FSx, and it supports all of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now, the replication tasks are not continuous.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 15:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: They are scheduled, so you can make DataSync run hourly, daily, or weekly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there's a lag, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But the data is going to be synchronized on a schedule.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: On top of it, DataSync has the ability to keep the file permissions and the metadata.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means the security and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So that means that it's compliance with the NFS POSIX file system and the SMB permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is very important because at the exam, this will be the unique option that will preserve the metadata of your file when moving them from one location to another.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: One DataSync agent can be quite powerful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It can run one task, can use up to 10 gigabits of data per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Although, if you don't want to max out your network you can set up a bandwidth limits.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at what it means in the diagram.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is the use case of synchronizing your on-premises files using the SMB or NFS protocol into AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: And that could be S3, EFS or FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So you have your on-premises and then your AWS region where DataSync is running.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is your NFS or SMB server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And what you have to do is to install on-premises the AWS DataSync agent, and you will tell it to connect to your NFS or SMB server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And then the DataSync agent will establish a connection and also connect in an encrypted fashion into the DataSync service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: From there, you can tell it to go wherever you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: That could be any storage class for your Amazon S3 buckets or it could be AWS, EFS, or it could be Amazon FSx.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the synchronization can happen one way from on-premises to AWS, but you can also synchronize from AWS back into on-premises.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: This is why it's called DataSync.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It can work any way.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: Now, sometimes at the exam we will tell you that we want to use DataSync, but we don't have the network capacity to do so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: Therefore, what you have to think about is to use the AWS Snowcone device specifically because the Snowcone device comes with the DataSync agent pre-install on it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So you can run Snowcone on-premises, then it will pull your data, run the DataSync agents, then it will be shipped back into your AWS region and then synchronize your data to the storage resources of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: But you can also use DataSync to just synchronize between different AWS storage services.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: For example, do you want synchronize between Amazon S3, or Amazon EFS, or Amazon FSx, back into Amazon S3, Amazon EFS, or Amazon FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And for this, again, we will use the AWS DataSync service and it will copy the data of course, but also the metadata will be kept between the different AWS storage services, which is very important.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So to remind you, DataSync can pretty much synchronize between anything, but it is not continuous.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is scheduled task that can be happening hourly, daily, weekly, and also it will preserve metadata and your file permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And finally, you need to run the DataSync agents if you are connecting to an NFS or SMB server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/077_AWS DataSync.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So now, let's talk about AWS DataSync.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And DataSync is a service that is appearing now quite a lot at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a very simple one, but you need to know what it does and its core.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the idea as an image, to indicate is to synchronize data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Therefore, move large amount of data to, and from places.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And these places can be for example, on-premises or other cloud locations into AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you would connect to your server using the NFS, the SMB, the HDFS, or other protocols, and it needs an agent to run on-premises or on the other cloud to do that connection.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can, for example, do other types of migrations.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, you can move data from one AWS service to another AWS service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this requires no agent.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will show you what it means.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Cost and Performance Optimization, Object Storage Patterns
- Services: Amazon Glacier, Amazon S3
- Key Insights: So the idea is that you can synchronize data to Amazon S3 including any storage classes, even Glacier.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Block and File Storage Design
- Services: Amazon EFS, Amazon FSx
- Key Insights: Amazon EFS, to store into your network file system, or Amazon FSx, and it supports all of them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: Now, the replication tasks are not continuous.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 15:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: They are scheduled, so you can make DataSync run hourly, daily, or weekly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there's a lag, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But the data is going to be synchronized on a schedule.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: On top of it, DataSync has the ability to keep the file permissions and the metadata.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means the security and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So that means that it's compliance with the NFS POSIX file system and the SMB permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is very important because at the exam, this will be the unique option that will preserve the metadata of your file when moving them from one location to another.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: One DataSync agent can be quite powerful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It can run one task, can use up to 10 gigabits of data per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Although, if you don't want to max out your network you can set up a bandwidth limits.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at what it means in the diagram.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is the use case of synchronizing your on-premises files using the SMB or NFS protocol into AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: And that could be S3, EFS or FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So you have your on-premises and then your AWS region where DataSync is running.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here is your NFS or SMB server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And what you have to do is to install on-premises the AWS DataSync agent, and you will tell it to connect to your NFS or SMB server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And then the DataSync agent will establish a connection and also connect in an encrypted fashion into the DataSync service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: From there, you can tell it to go wherever you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: That could be any storage class for your Amazon S3 buckets or it could be AWS, EFS, or it could be Amazon FSx.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the synchronization can happen one way from on-premises to AWS, but you can also synchronize from AWS back into on-premises.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: This is why it's called DataSync.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It can work any way.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: Now, sometimes at the exam we will tell you that we want to use DataSync, but we don't have the network capacity to do so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: Therefore, what you have to think about is to use the AWS Snowcone device specifically because the Snowcone device comes with the DataSync agent pre-install on it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So you can run Snowcone on-premises, then it will pull your data, run the DataSync agents, then it will be shipped back into your AWS region and then synchronize your data to the storage resources of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: But you can also use DataSync to just synchronize between different AWS storage services.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: For example, do you want synchronize between Amazon S3, or Amazon EFS, or Amazon FSx, back into Amazon S3, Amazon EFS, or Amazon FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And for this, again, we will use the AWS DataSync service and it will copy the data of course, but also the metadata will be kept between the different AWS storage services, which is very important.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And again, something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So to remind you, DataSync can pretty much synchronize between anything, but it is not continuous.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is scheduled task that can be happening hourly, daily, weekly, and also it will preserve metadata and your file permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: And finally, you need to run the DataSync agents if you are connecting to an NFS or SMB server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/078_AWS DataSync - Solution Architecture.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So here's a quick lecture around an architecture for DataSync.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: So how do you access DataSync service if you have a Direct Connect connection and you wanna access it privately?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: Well, to do it, we need to go through the VPC, so the DataSync agent connects to Direct Connect and here we have two options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: If we were to use a public VIF, then we would go around the VPC and use the public URL of the DataSync service, so this may not be what we want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS DataSync
- Key Insights: Instead, what we have to do is to create a VPC interface endpoint and a private link, so that you can establish a private VIF between Direct Connect and the private link, so that the DataSync agent can go through Direct Connect to your VPC, to the interface VPC endpoint into the DataSync service.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/080_AWS Transfer Family.txt

Line 1:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: Now let's talk about the AWS Transfer Family.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: So the idea is that you want to send data in and out of Amazon S3 or EFS, but you don't wanna use the S3 APIs, you don't want to use the EFS network file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You just wanna use the FTP protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: In this case, you need to use the Transfer Family service from AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it supports three kinds of protocols.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It supports AWS Transfer for FTP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the File Transfer Protocol, FTP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: FTPS, which is the File Transfer Protocol over SSL, so encrypted form.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or SFTP, which is a Secure File Transfer Protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now you don't need to be an expert on those.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just know that FTP is unencrypted, whereas FTPS and a SFTP are encrypted in flight.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: Now the idea is that using the FTP protocol, you can upload to S3 or EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: The Transfer Family has a fully managed infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's scalable, reliable, and highly available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you'd want to manage at all that capability.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Cost and Performance Optimization, Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: And in terms of pricing, you're going to pay per provisioned endpoints per hour, plus a fee per gigabytes of data transferred in and out of the Transfer Family.
- Hidden/Implicit Meaning: Access-path and data-plane signal; Storage economics signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You can store and manage the users' credentials for that service within the service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or you can also integrate with existing authentication system, such as Microsoft Active Directory, LDAP, Okta, Amazon Cognito, or any custom source.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: The usage of this is you have an FTP interface into Amazon S3 or EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's to share files, to share public datasets, to do CRM, ERP, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just a diagram for you to understand.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: The Transfer Family has three flavors, and the users can access directly using the endpoints of the FTP.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or optionally, you can use a DNS called Route 53 to provide your own host name into the FTP service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon EFS, Amazon S3
- Key Insights: And then the FTP service, so the transfer for FTP service will have an IAM Role that will be assumed to send or receive the files from Amazon S3 or Amazon EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is done transparently.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You don't have to set many things up.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: And finally, if you wanted to secure the Transfer Family services, then you could authenticate your users using an external authentication system, such as Active Directory LDAP or all the things that I just said in the previous slide, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Hybrid Transfer and Mobility
- Services: AWS Transfer Family
- Key Insights: Finally, you need to learn about the Endpoint Types for the Transfer Family as, and their associated security.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the Public Endpoint looks like this.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So with the endpoint in our Cloud.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the internet is going to be able to access this point.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, what is going to happen is that the public IP of this endpoint is going to be managed by AWS.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that is something that can be changing over time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the IP can change over time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so the recommendation is for you to use the DNS name, the public DNS name of your endpoint.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that means also that with this setup, you cannot set up allow lists to filter by source IP addresses from the network security.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You still get security from within the endpoint, but you cannot have a firewall that will only allow specific IPs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The other option is to use a VPC Endpoint with Internal Access.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 39:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So in this case, your SFTP, for example is going to be deployed within your VPC and your EC2 instances within your VPC are able to access privately your endpoint and your Corporate Data Center, if connected via VPN or direct connect, can also access your internal endpoint.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here you get static private IPs to access your endpoints, and you can set up allow list because you can leverage now the security group feature or Network ACLs to get access and manage access into your endpoint.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So these two make sense but you can get a hybrid version, called the VPC Endpoint with Internet-Facing Access.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 42:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: So in this case, while we get the same VPC deploying and we can have the EC2 instances within our VPC, or any server in our Corporate Data Center to access privately our endpoints.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But also we can set up public IPs for our endpoints using an elastic IP.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have full control over the elastic IP because we attach it ourselves and therefore the internet can access again our Endpoint using the elastic IP.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But because we manage everything, then we can set up security groups to actually control who from the internet can access our SFTP, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very important for you to understand the different endpoint types.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The exam will ask you to choose the correct one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And hopefully that makes sense from an architectural decision, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Block and File Storage Design
- Cost and Performance Optimization
- Data Protection and Immutability
- Hybrid Transfer and Mobility
- Lifecycle Operations
- Object Storage Patterns
- Storage Operational Context

### 2. Services List
- AWS Config
- AWS DataSync
- AWS Lambda
- AWS SAM
- AWS Snow Family
- AWS Storage Gateway
- AWS Transfer Family
- Amazon EBS
- Amazon EC2
- Amazon EFS
- Amazon FSx
- Amazon Glacier
- Amazon S3
- Amazon Translate

### 3. Features List
- datasync
- ebs
- efs
- fsx
- glacier
- lifecycle
- pricing
- replication
- s3
- storage classes
- storage gateway
- transfer family

### 4. Use Cases
- 172_AWS Snow Family Overview.txt:3: So if you have a migration of say, petabytes of data, Snowball may be a good use case.
- 172_AWS Snow Family Overview.txt:11: For example, if you want to transfer a hundred terabytes over one gigabytes per second connection, it would take you 12 days.
- 172_AWS Snow Family Overview.txt:12: So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- 172_AWS Snow Family Overview.txt:13: So whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- 172_AWS Snow Family Overview.txt:17: And then you will be having an export process within AWS to take your data from the Snowball onto, for example, an Amazon S3 bucket.
- 172_AWS Snow Family Overview.txt:18: So this is the main use case of a Snowball device.
- 172_AWS Snow Family Overview.txt:19: The other one is a edge computing use case.
- 172_AWS Snow Family Overview.txt:21: For example, it's a truck on the road or a ship on the sea, or a mining station on the ground.
- 172_AWS Snow Family Overview.txt:24: And so that means that we have the Compute Optimized, this is dedicated for that use case for the search optimized devices.
- 172_AWS Snow Family Overview.txt:27: And that's the use case for edge computing.
- 173_AWS Snow Family Hands On.txt:6: It's going to be a very good use case.
- 173_AWS Snow Family Hands On.txt:18: So on-demand per day pricing, the storage transfer, so S3 data transfer, and then the buckets that you want to transfer data back into, for example, this one.
- 173_AWS Snow Family Hands On.txt:23: And this service role will have access to Amazon S3 to allow to create this ServiceLink role and make sure that our Snow device has the right to write to our S3 buckets.
- 173_AWS Snow Family Hands On.txt:25: And then when you're done, you have the job summary, and that's it.
- 177_Storage Gateway Overview.txt:4: So we have some services that we really like in AWS, such as Amazon S3, which is a proprietary storage technology, which is unlike EFS, which is an NFS compliance file system, so how would you expose, for example, the S3 data on-premises?
- 177_Storage Gateway Overview.txt:10: Now, that looks simple, but we have different use cases for this.
- 177_Storage Gateway Overview.txt:11: The first one is to do disaster recovery, so to back up your on-premise data into the cloud, or you can also do backup and restore, so to do a cloud migration or to extend your storage from on-premises to the cloud, and for example, your cloud has colder data, and your on-premises data has more warmer, more frequently used data.
- 177_Storage Gateway Overview.txt:12: Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- 177_Storage Gateway Overview.txt:13: So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- 177_Storage Gateway Overview.txt:16: So we have an S3 bucket, and we can use whatever storage class we want, for example, S3 Standard, S3 Standard-IA, S3 One Zone-IA, or S3 Intelligent-Tiering, but not Glacier, and we want to connect this S3 bucket to an on-premises application server, but we want to use a standard network file system.
- 177_Storage Gateway Overview.txt:17: So for this, we're going to create an S3 File Gateway, which is going to allow our application server to use the NFS or the SMB protocol, and by using these protocols, behind the scene, the S3 File Gateway is going to translate those requests into HTTPS requests for your Amazon S3 buckets.
- 177_Storage Gateway Overview.txt:29: Tape Gateway is that if you have some companies that have, for example, a tape backup system using physical tapes, then with the Tape Gateway, you do the same process, but the tapes are going to be backed up in the cloud, and so this virtual tape library, or VTL, is going to be backed by Amazon S3 and Glacier.
- 177_Storage Gateway Overview.txt:37: So if we want to have a File Gateway with a local cache, this is the use case, where we have a user group file share, and we want to access it over the NFS or the SMB protocol.
- 177_Storage Gateway Overview.txt:39: Now, the other use case for a Volume Gateway is to have application servers mount volumes over the iSCSI protocol.
- 178_Storage Gateway Hands On.txt:11: But if you use any of these, for example, VMware, Microsoft Hyper-V, or Linux KVM, that means that you can set up the storage gateway directly on premises in your data center.
- 178_Storage Gateway Hands On.txt:13: So this may be more desirable or less based on your use case.
- 179_AWS Transfer Family.txt:27: And finally, if you wanted to secure the transfer family services then you could authenticate your users using an external authentication system such as Active Directory, LDAP or all the things I've just said in the previous slide.
- 180_DataSync - Overview.txt:6: And these places can be for example, on-premises or other cloud locations into AWS.
- 180_DataSync - Overview.txt:8: And you can, for example, do other types of migrations.
- 180_DataSync - Overview.txt:9: For example, you can move data from one AWS service to another AWS service.
- 180_DataSync - Overview.txt:21: This is very important because at the exam, this will be the unique option that will preserve the metadata of your file when moving them from one location to another.
- 180_DataSync - Overview.txt:26: So here is the use case of synchronizing your on-premises files using the SMB or NFS protocol into AWS.
- 180_DataSync - Overview.txt:40: So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- 180_DataSync - Overview.txt:42: For example, do you want synchronize between Amazon S3, or Amazon EFS, or Amazon FSx, back into Amazon S3, Amazon EFS, or Amazon FSx.
- 077_AWS DataSync.txt:6: And these places can be for example, on-premises or other cloud locations into AWS.
- 077_AWS DataSync.txt:8: And you can, for example, do other types of migrations.
- 077_AWS DataSync.txt:9: For example, you can move data from one AWS service to another AWS service.
- 077_AWS DataSync.txt:21: This is very important because at the exam, this will be the unique option that will preserve the metadata of your file when moving them from one location to another.
- 077_AWS DataSync.txt:26: So here is the use case of synchronizing your on-premises files using the SMB or NFS protocol into AWS.
- 077_AWS DataSync.txt:40: So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.

### 5. Constraints / Limitations
- 172_AWS Snow Family Overview.txt:8: So obviously one is for storage and the other one is only used for computer.
- 172_AWS Snow Family Overview.txt:12: So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- 172_AWS Snow Family Overview.txt:22: And these locations may have no internet access or limited access to internet or compute power.
- 173_AWS Snow Family Hands On.txt:9: Or if you want to just do edge computing, you do local compute and storage only.
- 173_AWS Snow Family Hands On.txt:16: So these are the two options I have right now, but from an exam perspective, this should be more than enough for you to know.
- 177_Storage Gateway Overview.txt:3: Maybe you have a long cloud migration, maybe you have security requirements or compliance requirements, maybe it's part of your strategy to only leverage a cloud for elastic workloads, but to keep a lot of stuff on-premises.
- 180_DataSync - Overview.txt:24: Although, if you don't want to max out your network you can set up a bandwidth limits.
- 077_AWS DataSync.txt:24: Although, if you don't want to max out your network you can set up a bandwidth limits.
- 080_AWS Transfer Family.txt:36: And that means also that with this setup, you cannot set up allow lists to filter by source IP addresses from the network security.
- 080_AWS Transfer Family.txt:37: You still get security from within the endpoint, but you cannot have a firewall that will only allow specific IPs.

### 6. Patterns / Architectures
- 180_DataSync - Overview.txt:40: So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- 077_AWS DataSync.txt:40: So that is to show the architecture of synchronization from on-premises to AWS, or it could be for example, another cloud to AWS using the DataSync agents.
- 078_AWS DataSync - Solution Architecture.txt:1: So here's a quick lecture around an architecture for DataSync.

## Step 3 - Deep Expansion (Storage Concepts)

### Core Services in This Topic
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS DataSync: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Snow Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Storage Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Transfer Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EFS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Block and File Storage Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cost and Performance Optimization: treat this as a design lever that changes topology, risk posture, or operational workflow.
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
