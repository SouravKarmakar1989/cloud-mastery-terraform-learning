# 01_EC2_Foundations.md

## Scope
- Topic: EC2 foundations, instances, metadata, access patterns, and runtime basics
- Files processed: 120+ AWS primary transcript files (spanning DVA-C01, SAA-C03, SAP-C02, SOA-C03, DOP-C02, Security Specialty, across EC2, EBS, AMI, ELB, ASG, SSM, CloudWatch, and CodeDeploy modules), plus Azure compute transcript supplements and GCP official Compute Engine references
- Extracted non-empty transcript lines: 3393 AWS primary lines, with later architect curation for Azure and GCP parity
- Processing mode: transcript-first, architect-curated, cross-cloud update
- Primary source ownership: AWS Compute Knowledge Base
- Cross-domain referrals: Azure compute transcript set and Google Cloud Compute Engine documentation

## Real Material - Architect Learning Build (Compute: EC2 Foundations)

### Foundations(Modules with Source Transcript Details)

#### Module: EC2 Foundations Mental Model
- Use ec2 foundations decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: EC2 Foundations Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/032_EC2 Basics.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/034_EC2 Instance Types Basics.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/035_Security Groups & Classic Ports Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/037_SSH Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/039_How to SSH using Windows.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/040_How to SSH using Windows 10.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/042_EC2 Instance Connect.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/043_EC2 Instance Roles Demo.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/05_EC2 Fundamentals/044_EC2 Instance Purchasing Options.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/032_EC2 Basics.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/033_Create an EC2 Instance with EC2 User Data to have a Website Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/034_EC2 Instance Types Basics.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/035_Security Groups & Classic Ports Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/036_Security Groups Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/037_SSH Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/038_How to SSH using Linux or Mac.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/039_How to SSH using Windows.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/040_How to SSH using Windows 10.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/042_EC2 Instance Connect.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/043_EC2 Instance Roles Demo.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/044_EC2 Instance Purchasing Options.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/045_Spot Instances & Spot Fleet.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/05_EC2 Fundamentals/046_EC2 Instances Launch Types Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/047_Private vs Public vs Elastic IP.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/048_Private vs Public vs Elastic IP Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/049_EC2 Placement Groups.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/050_EC2 Placement Groups - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/051_Elastic Network Interfaces (ENI) - Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/052_Elastic Network Interfaces (ENI) - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/054_EC2 Hibernate.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/06_EC2 - Solutions Architect Associate Level/055_EC2 Hibernate - Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/008_Launching an EC2 Instance.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/009_Changing EC2 Instance Type.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/010_[SAA] EC2 Placement Groups.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/011_[SAA] EC2 Placement Groups - Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/012_Troubleshooting EC2 SSH Issues.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/013_EC2 Instance Connect (EIC) Endpoint.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/019_[SAA] EC2 Hibernate.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/020_[SAA] EC2 Hibernate Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/021_Instance Scheduler on AWS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/040_EC2 Instance Connect.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/044_EC2.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/048_Spot Instances & Spot Fleet.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/057_EC2 Instance Connect.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/058_EC2 Serial Console.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/060_Lost EC2 Key Pair - Windows.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/061_EC2 Rescue Tool for Linux & Windows.txt

- Top concept clusters from transcript metadata:
- Compute Platform Design
- Operational Guardrails
- Deployment Automation
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.


#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/045_EBS Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/046_EBS Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/047_EBS Snapshots.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/048_EBS Snapshots - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/049_AMI Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/050_AMI Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/051_EC2 Instance Store.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/052_EBS Volume Types.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/053_EBS Multi-Attach.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/054_Amazon EFS.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/056_EBS Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/057_EBS Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/058_EBS Snapshots.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/059_EBS Snapshots - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/060_AMI Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/061_AMI Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/062_EC2 Instance Store.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/063_EBS Volume Types.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/064_EBS Multi-Attach.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/065_EBS Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/066_Amazon EFS.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/067_Amazon EFS - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/068_EFS vs EBS.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/023_[CCP_SAA_DVA] AMI Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/024_[CCP_SAA_DVA] AMI Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/025_AMI No Reboot Option.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/026_EC2 Instance Migration using AMIs.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/027_[CCP] EC2 Image Builder.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/028_EC2 Image Builder Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/04_AMI - Amazon Machine Image/029_AMI In Production.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/09_EC2 Storage and Data Management - EBS and EFS/121_[CCP_SAA_DVA] EBS Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/09_EC2 Storage and Data Management - EBS and EFS/122_[CCP_SAA_DVA] EBS Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/09_EC2 Storage and Data Management - EBS and EFS/123_[SAA_DVA] EBS Volume Types Deep Dive.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/09_EC2 Storage and Data Management - EBS and EFS/124_EBS Operation_ Snapshots.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/09_EC2 Storage and Data Management - EBS and EFS/125_EBS Operation_ Snapshots Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/058_High Availability and Scalability.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/059_Elastic Load Balancing (ELB) Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/061_Application Load Balancer (ALB).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/064_Network Load Balancer (NLB).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/066_Gateway Load Balancer (GWLB).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/072_Auto Scaling Groups (ASG) Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/073_Auto Scaling Groups Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/074_Auto Scaling Groups - Scaling Policies.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/07_AWS Fundamentals_ ELB + ASG/076_Auto Scaling Groups - Instance Refresh.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/070_High Availability and Scalability.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/071_Elastic Load Balancing (ELB) Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/072_Application Load Balancer (ALB).txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/075_Network Load Balancer (NLB).txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/083_Auto Scaling Groups (ASG) Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/084_Auto Scaling Groups Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/085_Auto Scaling Groups - Scaling Policies.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/12_AWS CLI, SDK, IAM Roles & Policies/127_AWS EC2 Instance Metadata.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/12_AWS CLI, SDK, IAM Roles & Policies/128_AWS EC2 Instance Metadata - Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/144_EC2 Instance Metadata Overview.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/271_EC2 Image Builder - Troubleshooting.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/044_EC2.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/046_Auto Scaling.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/047_Auto Scaling Update Strategies.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/056_Elastic Load Balancers - Part 1.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/057_Elastic Load Balancers - Part 2.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/065_Comparison of Solutions Architecture.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/13_Cost Control/131_EC2 Launch Types & Savings Plan.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/13_Cost Control/136_EC2 Reserved Instance.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/17_Other Services/184_EC2 Image Builder.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/08_Domain 6_ Security and Compliance/233_[SOA] EC2 Instance Migration using AMIs.txt

- Top concept clusters from transcript metadata:
- Compute Platform Design
- Compute Operational Context
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/014_CloudWatch Metrics for EC2.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/015_CloudWatch - Unified CloudWatch Agent - Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/016_CloudWatch - Unified CloudWatch Agent - Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/017_EC2 Instance Status Checks.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/018_EC2 Instance Status Checks Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/03_EC2 for CloudOps/021_Instance Scheduler on AWS.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/031_Systems Manager Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/032_Start EC2 Instances with SSM Agent.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/033_AWS Tags & SSM Resource Groups.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/034_SSM Documents & SSM Run Command.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/035_SSM Automations.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/036_SSM Automations - Patch AMI & Update ASG.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/039_SSM Fleet Manager.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/040_SSM Default Host Management Configuration (DHMC).txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/041_SSM Default Host Management Configuration (DHMC) - Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/042_SSM Inventory & State Manager.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/043_SSM Patch Manager and Maintenance Windows.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/044_SSM Patch Manager and Maintenance Windows - Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/045_SSM Session Manager Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/046_SSM Session Manager Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/047_SSM Distributor.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/05_Managing EC2 at Scale - Systems Manager (SSM)/048_SSM OpsCenter.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/068_[SAA_DVA] Auto Scaling Groups (ASG) Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/069_[SAA_DVA] Auto Scaling Groups Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/070_[SAA_DVA] Auto Scaling Groups - Scaling Policies.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/071_[SAA_DVA] Auto Scaling Groups - Scaling Policies Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/072_Auto Scaling Groups - Instance Refresh.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/073_Auto Scaling Groups - Warm Pools.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/074_ASG for CloudOps.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/06_EC2 High Availability and Scalability/075_CloudWatch for ASG.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/03_Domain 1_ SDLC Automation/015_CodePipeline - CloudFormation Integration.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/03_Domain 1_ SDLC Automation/031_EC2 Image Builder.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/05_Domain 3_ Resilient Cloud Solutions/159_Auto Scaling Groups - Lifecycle Hooks.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/05_Domain 3_ Resilient Cloud Solutions/160_Auto Scaling Groups - Event Notifications.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/05_Domain 3_ Resilient Cloud Solutions/161_Auto Scaling Groups - Termination Policies.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/05_Domain 3_ Resilient Cloud Solutions/162_Auto Scaling Groups - Warm Pools.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/06_Domain 4_ Monitoring and Logging/177_[DVA] CloudWatch Logs - Metric Filters.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/06_Domain 4_ Monitoring and Logging/180_[SAA_DVA] CloudWatch Agent & CloudWatch Logs Agent.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/06_Domain 4_ Monitoring and Logging/181_[SAA_DVA_SOA] CloudWatch Alarms - Overview.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/07_Domain 5_ Incident and Event Response/196_[SOA] EC2 Instance Status Checks - Overview.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/07_Domain 5_ Incident and Event Response/197_[SOA] EC2 Instance Status Checks - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/12_AWS CLI, SDK, IAM Roles & Policies/127_AWS EC2 Instance Metadata.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/12_AWS CLI, SDK, IAM Roles & Policies/128_AWS EC2 Instance Metadata - Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/24_AWS CICD_ CodeCommit, CodePipeline, CodeBuild, CodeDeploy/371_CodeDeploy for EC2 and ASG.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/044_EC2.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/046_Auto Scaling.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/047_Auto Scaling Update Strategies.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/065_Comparison of Solutions Architecture.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/12_Deployment and Instance Management/125_AWS Systems Manager - SSM.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/057_EC2 Instance Connect.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/058_EC2 Serial Console.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/060_Lost EC2 Key Pair - Windows.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/061_EC2 Rescue Tool for Linux & Windows.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/063_[SOA] Systems Manager Overview.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/064_[SOA] Start EC2 Instances with SSM Agent.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/066_[SOA] SSM Documents & SSM Run Command.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/067_[SOA] SSM Automations.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/073_[SOA] SSM Session Manager Overview.txt
- outputs/AWS/AWS Speciality/Security/04_Domain 2 - Incident Response/074_[SOA] SSM Session Manager Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/144_EC2 Instance Metadata Overview.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/266_ASG Instance Refresh.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt

- Top concept clusters from transcript metadata:
- Compute Platform Design
- Operational Guardrails
- Container Runtime Operations
- Deployment Automation
- Elasticity and Availability
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.


## Key Operational Decisions
- Decide whether the VM is a cattle node, a snowflake node, or a temporary bridge to a more managed platform.
- Decide whether bootstrap belongs in first-boot scripts, image baking, or configuration management.
- Decide whether operator access should be direct SSH or mediated through identity-aware session services.
- Decide whether scaling logic should live in a fleet manager, load balancer target health, or both, and whether warm pools are required to meet burst latency targets.
- Decide whether credentials are delivered through instance identity, guest secrets, or an external broker, and whether lifecycle hooks are used for launch/terminate control points.


## Deep Expansion (Compute Concepts)

### Core Services

1. Compute: AWS: Amazon EC2 || Azure: Azure Virtual Machines || GCP: Compute Engine
2. Storage: AWS: Amazon EBS || Azure: Azure Managed Disks || GCP: Persistent Disk
3. Images and Build Pipelines: AWS: AMIs, EC2 Image Builder, AWS CodePipeline, AWS CloudFormation || Azure: Azure Compute Gallery || GCP: Custom Images, Image Families
4. Fleet Scaling and Orchestration: AWS: Auto Scaling Groups || Azure: Virtual Machine Scale Sets || GCP: Managed Instance Groups
5. Load Balancing and Traffic: AWS: ELB (ALB/NLB/GWLB) || Azure: Azure Load Balancer, Azure Application Gateway || GCP: Cloud Load Balancing
6. Instance Identity and Access: AWS: EC2 Instance Connect, AWS Systems Manager (Session Manager) || Azure: Managed Identity, Azure Bastion || GCP: OS Login
7. Operations and Management: AWS: AWS Systems Manager || Azure: Azure Update Manager || GCP: VM Manager
8. Monitoring and Eventing: AWS: Amazon CloudWatch, Amazon EventBridge, Amazon SNS || Azure: Azure Monitor || GCP: Cloud Monitoring
9. Metadata and Bootstrap: AWS: EC2 IMDS, User Data || Azure: Azure IMDS, Custom Data || GCP: Metadata Server, Startup Scripts


### Architect-Level Concept Expansion

#### 1. VM Fundamentals Are About Contracts, Not Consoles
- A VM is a contract: the cloud provider gives you compute, storage attachment, network attachment, metadata access, and control-plane APIs.
- You still own the guest OS state, package posture, application boot path, local firewall state, and most troubleshooting inside the machine.
- EC2, Azure VM, and Compute Engine differ in naming and adjacent tooling, but they all express the same responsibility boundary.

#### 2. Access Design Is Part of Architecture
- A public IP plus open SSH or RDP is the simplest access path and usually the weakest long-term model.
- Better patterns move toward mediated access: Session Manager, EC2 Instance Connect Endpoint, Azure Bastion, or OS Login-backed SSH.
- The real design question is not “can I log in?” It is “what identity path, audit trail, and network exposure do I accept for day-2 operations?”

#### 3. Metadata Is a Local Control Plane
- Metadata lets a VM discover who it is, where it lives, what credentials or bootstrap inputs it should consume, and whether the platform is about to interrupt it.
- AWS IMDS, Azure IMDS, and GCP metadata all enable powerful automation.
- They also create a security boundary: if an untrusted process can read metadata carelessly, it may gain configuration details or short-lived credentials.

#### 4. Bootstrap vs Image Baking Is a False Binary
- First-boot scripts are great for small environment-specific changes such as hostname registration, package updates, or pulling configuration.
- Golden images are better for slow, repeated, or compliance-heavy setup steps such as base packages, agents, hardening, and application runtimes.
- Mature fleets combine both: image baking for the heavy baseline, startup scripts for light environment injection.

#### 5. Single Instance Thinking Breaks Early
- A single VM can host a workload, but it cannot teach you fleet behavior, safe rollout, or production repair loops.
- As soon as uptime matters, you need to think in sets: ASG, VMSS, or MIG.
- The fleet abstraction is where autoscaling, replacement, version rollout, zonal spread, and drain behavior become manageable.

#### 6. Health Is Layered
- Platform health answers whether the VM is alive enough for the provider to manage.
- Load balancer health answers whether the application should receive traffic.
- Autohealing health answers whether the node should be recreated.
- Mixing these together creates either noisy churn or false confidence.

#### 7. Storage Is Part of Compute Architecture
- The boot disk determines how quickly and predictably a node starts.
- Separate data disks change persistence and replacement strategy.
- Performance classes matter: EBS gp3 or io2, Azure Premium SSD tiers, and GCP Persistent Disk classes change throughput ceilings and workload fit.
- A good architect treats storage attachment and instance shape as a joint decision.

#### 8. Identity on the Instance Should Be Dynamic
- Static secrets copied into a VM decay into hidden operational debt.
- IAM roles on EC2, managed identity on Azure VMs, and attached service accounts on GCP provide short-lived and revocable service identity.
- This is foundational for secure automation, not just a nice enhancement.

#### 9. Failure Domains Must Be Designed Before Failure Happens
- A zonal VM is not resilient by default.
- Resilience comes from spreading a fleet across availability zones or equivalent constructs, keeping state external where possible, and making node replacement cheap.
- If rebuilding a node is scary, the architecture is too dependent on mutable pets.

#### 10. Observability and Patching Are Not Optional Extras
- Basic CPU metrics are not enough. You need guest logs, disk pressure, memory signals where available, application health, and deployment markers.
- Patch policy also needs a design: immediate, deferred, canary-first, or immutable replacement.
- Systems Manager, Azure Update Manager, and GCP VM management features help, but they do not remove the need for explicit operational policy.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Virtual machine compute | EC2 | Azure Virtual Machines | Compute Engine |
| Machine template / reusable image | AMI | Azure Compute Gallery image / managed image | Custom image / image family |
| First-boot bootstrap | User data | Custom data / cloud-init path | Startup scripts via metadata |
| Metadata service | Instance Metadata Service | Azure Instance Metadata Service | Metadata server |
| Service identity on the VM | IAM role via instance profile or instance identity patterns | Managed Identity | Attached service account |
| Secure operator access | Session Manager, EC2 Instance Connect, EC2 Instance Connect Endpoint | Azure Bastion, JIT access | OS Login, IAP-oriented access patterns |
| Managed fleet abstraction | Auto Scaling Group | Virtual Machine Scale Set | Managed Instance Group |
| Block storage | EBS | Managed Disks | Persistent Disk |
| Traffic distribution | ALB / NLB / GWLB | Azure Load Balancer / Application Gateway | Cloud Load Balancing |
| Fleet maintenance | Systems Manager, Patch Manager, State Manager | Update Manager, Azure Policy, Azure Automation patterns | VM Manager, OS policy and automation patterns |
| Health replacement loop | ASG health checks plus ELB target health | VMSS health extension and load balancer health | MIG autohealing and load balancer health checks |
| Failure-domain spread | Multi-AZ design, placement controls | Availability Sets and Availability Zones | Zonal or regional MIGs |






