# 06_Specialized_Compute_Operations.md

## Scope
- Topic: Batch, HPC, Outposts, Beanstalk, and specialized compute operations
- Files processed: 16
- Extracted non-empty transcript lines: 812
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Compute Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Compute: Specialized Compute Operations)

This section is the study-first architecture guide for batch, hpc, outposts, beanstalk, and specialized compute operations.

### Phase 1 - Foundations

#### Module: Specialized Compute Operations Mental Model
- Use specialized compute operations decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Specialized Compute Operations Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/045_High Performance Computing (HPC).txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/29_More Solution Architectures/367_High Performance Computing (HPC) on AWS.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/184_Elastic Beanstalk Overview (High level).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/185_Beanstalk First Environment.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/187_Beanstalk Deployment Modes.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/30_Other Services/380_AWS Batch.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/188_Beanstalk Deployment Modes Hands On.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/186_Beanstalk Second Environment.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/198_S3 Batch Encryption.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/191_Beanstalk Extensions.txt
- Top concept clusters from transcript metadata:
- Compute Operational Context
- Compute Platform Design
- Elasticity and Availability
- Deployment Automation
- Container Runtime Operations
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 812
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- They will be managed by the batch service, so batch is a very popular choice for HPC.
- So batch is a very popular choice for HPC.
- It's great for development purposes, but then if you wanted to scale a real Elastic Beanstalk mode, then you would go for high available with a load balancer, which is great for production environments, in which case, you can have a load balancer distributing the loads across multiple EC2 instances that are managed for an auto scaling group and multiple available zones.
- We have presets, and Beanstalk can be quite complicated for the configuration, and as such, we can set recommended values for either a single instance, which is free tier eligible, or high availability, where we have a load balancer for example, or custom configuration, if you wanted to customize everything.
- So what I recommend for you is to just explore this link, have a read through, and make sure the table makes sense, because the exam will give you one or two scenario questions around the kind of deployment mechanism for Beanstalk based on the constraints and requirements of the deployment itself.
- So we've seen all that Beanstalk has created, including my auto scanning group, my EC2 instance, the Elastic IP, and so on, and so if you are in a course that has more Beanstalk lectures, so for example the Certified Developer Course, then do not delete your application.
- So to reason about it, Beanstalk is centered around code, and environments for your code, whereas, if you wanted to look at CloudFormation, the service we had seen before, CloudFormation is used to deploy stacks arbitrarily with any kind of infrastructure.
- So to summarize, HPC is something that comes up more and more in the exam, and it's not a service, it's a combination of service and different options, and need to make sure you understand all, of those to maximize the potential of computation within AWS.
- So if I click on this domain name and open it in a new tab, I get, actually, access to my Beanstalk environment and my single EC2 instance, and it says, "Congratulations, you are now running Elastic Beanstalk on this EC2 instance," which is amazing.
- So Beanstalk supports many programming languages, such as Go, Java SE, Java with Tomcat, .NET Core on Linux, .NET on Windows Server, Node.js, PHP, Python, Ruby, Packer Builder, Single Docker Container, Multi Docker Container, Pre-configured Docker.
- And then if you click on configuration, you can actually have a look at all the configuration of your Beanstalk environment, modify them and apply them, which are quite well-rounded, but we don't need to know about this right now.
- And because it automatically scales the right number of ECS2 instances or Spot Instances, to do these jobs, then you get lots of cost optimizations and you focus a lot less on the infrastructure, you just focus on your batch jobs.

##### Polished Architect Notes
- Transcript signals that they will be managed by the batch service, so batch is a very popular choice for HPC.
- Transcript signals that so batch is a very popular choice for HPC.
- Transcript signals that it's great for development purposes, but then if you wanted to scale a real Elastic Beanstalk mode, then you would go for high available with a load balancer, which is great for production environments, in which case, you can have a load balancer distributing the loads across multiple EC2 instances that are managed for an auto scaling group and multiple available zones.
- Transcript signals that we have presets, and Beanstalk can be quite complicated for the configuration, and as such, we can set recommended values for either a single instance, which is free tier eligible, or high availability, where we have a load balancer for example, or custom configuration, if you wanted to customize everything.
- Transcript signals that so what I recommend for you is to just explore this link, have a read through, and make sure the table makes sense, because the exam will give you one or two scenario questions around the kind of deployment mechanism for Beanstalk based on the constraints and requirements of the deployment itself.
- Transcript signals that so we've seen all that Beanstalk has created, including my auto scanning group, my EC2 instance, the Elastic IP, and so on, and so if you are in a course that has more Beanstalk lectures, so for example the Certified Developer Course, then do not delete your application.
- Transcript signals that so to reason about it, Beanstalk is centered around code, and environments for your code, whereas, if you wanted to look at CloudFormation, the service we had seen before, CloudFormation is used to deploy stacks arbitrarily with any kind of infrastructure.
- Transcript signals that so to summarize, HPC is something that comes up more and more in the exam, and it's not a service, it's a combination of service and different options, and need to make sure you understand all, of those to maximize the potential of computation within AWS.
- Transcript signals that so if I click on this domain name and open it in a new tab, I get, actually, access to my Beanstalk environment and my single EC2 instance, and it says, "Congratulations, you are now running Elastic Beanstalk on this EC2 instance," which is amazing.
- Transcript signals that so Beanstalk supports many programming languages, such as Go, Java SE, Java with Tomcat, .NET Core on Linux, .NET on Windows Server, Node.js, PHP, Python, Ruby, Packer Builder, Single Docker Container, Multi Docker Container, Pre-configured Docker.
- Transcript signals that and then if you click on configuration, you can actually have a look at all the configuration of your Beanstalk environment, modify them and apply them, which are quite well-rounded, but we don't need to know about this right now.
- Transcript signals that and because it automatically scales the right number of ECS2 instances or Spot Instances, to do these jobs, then you get lots of cost optimizations and you focus a lot less on the infrastructure, you just focus on your batch jobs.

##### Architect Synthesis (Transcript-Derived)
- Treat Compute Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Elasticity and Availability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: they will be managed by the batch service, so batch is a very popular choice for HPC.
- Design implication: so batch is a very popular choice for HPC.
- Design implication: it's great for development purposes, but then if you wanted to scale a real Elastic Beanstalk mode, then you would go for high available with a load balancer, which is great for production environments, in which case, you can have a load balancer distributing the loads across multiple EC2 instances that are managed for an auto scaling group and multiple available zones.
- Design implication: we have presets, and Beanstalk can be quite complicated for the configuration, and as such, we can set recommended values for either a single instance, which is free tier eligible, or high availability, where we have a load balancer for example, or custom configuration, if you wanted to customize everything.
- Design implication: so what I recommend for you is to just explore this link, have a read through, and make sure the table makes sense, because the exam will give you one or two scenario questions around the kind of deployment mechanism for Beanstalk based on the constraints and requirements of the deployment itself.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/29_More Solution Architectures/367_High Performance Computing (HPC) on AWS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/066_AWS Outposts.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/045_High Performance Computing (HPC).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/185_Beanstalk First Environment.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/186_Beanstalk Second Environment.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/193_Beanstalk Cloning.txt
- Top concept clusters from transcript metadata:
- Compute Operational Context
- Compute Platform Design
- Deployment Automation
- Container Runtime Operations
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 812
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So to summarize, HPC is something that comes up more and more in the exam, and it's not a service, it's a combination of service and different options, and need to make sure you understand all, of those to maximize the potential of computation within AWS.
- And this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- So there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- And then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- And Outposts are server racks that offer the same AWS infrastructure services, API, and tools to build your own application on-premises, just like in the cloud.
- And with Outposts for now, you can launch a lot of services, such as Amazon EC2, Amazon EBS, Amazon S3, Amazon EKS, Amazon ECS, Amazon RDS, and Amazon EMR.
- So EFA on the cluster, and the impact of that is to improve the network performance and therefore have a higher performance HPC cluster.
- So what this means that they will come and set up and manage Outposts racks, which are servers, within your on-premises infrastructure.
- It's easy, for example, to start a migration from on-premises to Outposts, and then when you're ready from Outposts to the cloud.
- Or we can use something called AWS ParallelCluster which is an open source cluster management tool to deploy HPC on AWS.
- So this platform is going to be managed and I will choose no JS, and then I will just choose the default options.
- So AWS said, okay, we do recognize that some companies will run a hybrid cloud, therefore let's create Outposts.

##### Polished Architect Notes
- Transcript signals that so to summarize, HPC is something that comes up more and more in the exam, and it's not a service, it's a combination of service and different options, and need to make sure you understand all, of those to maximize the potential of computation within AWS.
- Transcript signals that and this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- Transcript signals that so there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- Transcript signals that and then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- Transcript signals that and Outposts are server racks that offer the same AWS infrastructure services, API, and tools to build your own application on-premises, just like in the cloud.
- Transcript signals that and with Outposts for now, you can launch a lot of services, such as Amazon EC2, Amazon EBS, Amazon S3, Amazon EKS, Amazon ECS, Amazon RDS, and Amazon EMR.
- Transcript signals that so EFA on the cluster, and the impact of that is to improve the network performance and therefore have a higher performance HPC cluster.
- Transcript signals that so what this means that they will come and set up and manage Outposts racks, which are servers, within your on-premises infrastructure.
- Transcript signals that it's easy, for example, to start a migration from on-premises to Outposts, and then when you're ready from Outposts to the cloud.
- Transcript signals that or we can use something called AWS ParallelCluster which is an open source cluster management tool to deploy HPC on AWS.
- Transcript signals that so this platform is going to be managed and I will choose no JS, and then I will just choose the default options.
- Transcript signals that so AWS said, okay, we do recognize that some companies will run a hybrid cloud, therefore let's create Outposts.

##### Architect Synthesis (Transcript-Derived)
- Treat Compute Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so to summarize, HPC is something that comes up more and more in the exam, and it's not a service, it's a combination of service and different options, and need to make sure you understand all, of those to maximize the potential of computation within AWS.
- Design implication: and this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- Design implication: so there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- Design implication: and then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- Design implication: and Outposts are server racks that offer the same AWS infrastructure services, API, and tools to build your own application on-premises, just like in the cloud.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/30_Other Services/380_AWS Batch.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/29_More Solution Architectures/367_High Performance Computing (HPC) on AWS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/066_AWS Outposts.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/184_Elastic Beanstalk Overview (High level).txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/045_High Performance Computing (HPC).txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/195_Beanstalk Cleanup.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/185_Beanstalk First Environment.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/187_Beanstalk Deployment Modes.txt
- Top concept clusters from transcript metadata:
- Compute Platform Design
- Container Runtime Operations
- Compute Operational Context
- Deployment Automation
- Elasticity and Availability
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 8
- Key insight candidates scanned (topic): 812
- Key insights inside selected files: 24
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- And because it automatically scales the right number of ECS2 instances or Spot Instances, to do these jobs, then you get lots of cost optimizations and you focus a lot less on the infrastructure, you just focus on your batch jobs.
- And this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- So there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- And then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- This is the architecture number one with Beanstalk and the architecture number two with Beanstalk is going to be around a worker environment.
- So EFA on the cluster, and the impact of that is to improve the network performance and therefore have a higher performance HPC cluster.
- They will be managed by the batch service, so batch is a very popular choice for HPC.
- And this is an improved ENA dedicated for HPC for high performance computing.
- Finally, there are two deployment modes you need to know for Beanstalk.
- Which is called High-Performance Computing or HPC.
- So batch is a very popular choice for HPC.
- This will delete all the underlying environments, so behind the scenes for everything to be deleted, well, the CloudFormation stacks that were deployed are now in delete in progress, and so everything that has been created by CloudFormation, including the load balancers, the auto scaling groups, the security groups, et cetera, et cetera, et cetera, is going to be deleted, which is the beauty of using CloudFormation under the hood.

##### Polished Architect Notes
- Transcript signals that and because it automatically scales the right number of ECS2 instances or Spot Instances, to do these jobs, then you get lots of cost optimizations and you focus a lot less on the infrastructure, you just focus on your batch jobs.
- Transcript signals that and this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- Transcript signals that so there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- Transcript signals that and then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- Transcript signals that this is the architecture number one with Beanstalk and the architecture number two with Beanstalk is going to be around a worker environment.
- Transcript signals that so EFA on the cluster, and the impact of that is to improve the network performance and therefore have a higher performance HPC cluster.
- Transcript signals that they will be managed by the batch service, so batch is a very popular choice for HPC.
- Transcript signals that and this is an improved ENA dedicated for HPC for high performance computing.
- Transcript signals that finally, there are two deployment modes you need to know for Beanstalk.
- Transcript signals that which is called High-Performance Computing or HPC.
- Transcript signals that so batch is a very popular choice for HPC.
- Transcript signals that this will delete all the underlying environments, so behind the scenes for everything to be deleted, well, the CloudFormation stacks that were deployed are now in delete in progress, and so everything that has been created by CloudFormation, including the load balancers, the auto scaling groups, the security groups, et cetera, et cetera, et cetera, is going to be deleted, which is the beauty of using CloudFormation under the hood.

##### Architect Synthesis (Transcript-Derived)
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Elasticity and Availability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and because it automatically scales the right number of ECS2 instances or Spot Instances, to do these jobs, then you get lots of cost optimizations and you focus a lot less on the infrastructure, you just focus on your batch jobs.
- Design implication: and this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- Design implication: so there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- Design implication: and then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- Design implication: this is the architecture number one with Beanstalk and the architecture number two with Beanstalk is going to be around a worker environment.

### Phase 2 - Core Services
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- AWS Batch should be understood in terms of request path, control plane, and operational boundary.
- Amazon Athena should be understood in terms of request path, control plane, and operational boundary.
- AWS Elastic Beanstalk should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Compute Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Compute Platform Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Container Runtime Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Deployment Automation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Elasticity and Availability becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design specialized compute operations with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when specialized compute operations decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So to reason about it, Beanstalk is centered around code, and environments for your code, whereas, if you wanted to look at CloudFormation, the service we had seen before, CloudFormation is used to deploy stacks arbitrarily with any kind of infrastructure.
- Signal 2: So if I click on this domain name and open it in a new tab, I get, actually, access to my Beanstalk environment and my single EC2 instance, and it says, "Congratulations, you are now running Elastic Beanstalk on this EC2 instance," which is amazing.
- Signal 3: And then if you click on configuration, you can actually have a look at all the configuration of your Beanstalk environment, modify them and apply them, which are quite well-rounded, but we don't need to know about this right now.
- Signal 4: Transcript signals that so to reason about it, Beanstalk is centered around code, and environments for your code, whereas, if you wanted to look at CloudFormation, the service we had seen before, CloudFormation is used to deploy stacks arbitrarily with any kind of infrastructure.
- Signal 5: Transcript signals that so if I click on this domain name and open it in a new tab, I get, actually, access to my Beanstalk environment and my single EC2 instance, and it says, "Congratulations, you are now running Elastic Beanstalk on this EC2 instance," which is amazing.
- Signal 6: Transcript signals that and then if you click on configuration, you can actually have a look at all the configuration of your Beanstalk environment, modify them and apply them, which are quite well-rounded, but we don't need to know about this right now.
- Signal 7: And with Outposts for now, you can launch a lot of services, such as Amazon EC2, Amazon EBS, Amazon S3, Amazon EKS, Amazon ECS, Amazon RDS, and Amazon EMR.
- Signal 8: Or we can use something called AWS ParallelCluster which is an open source cluster management tool to deploy HPC on AWS.
- Signal 9: So AWS said, okay, we do recognize that some companies will run a hybrid cloud, therefore let's create Outposts.
- Signal 10: Transcript signals that and with Outposts for now, you can launch a lot of services, such as Amazon EC2, Amazon EBS, Amazon S3, Amazon EKS, Amazon ECS, Amazon RDS, and Amazon EMR.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for Batch, HPC, Outposts, Beanstalk, and specialized compute operations
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

### Activity 2: Elastic Load Balancing Lab for Batch, HPC, Outposts, Beanstalk, and specialized compute operations
- AWS console path: AWS Console -> EC2 -> Load Balancers
- Azure equivalent: Azure Load Balancer or Application Gateway
- GCP equivalent: Cloud Load Balancing
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Load Balancers.
3. Build: Create an application load balancer with one target group.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check target health and ALB DNS response.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete ALB, listeners, and target group.

### Activity 3: AWS Lambda Lab for Batch, HPC, Outposts, Beanstalk, and specialized compute operations
- AWS console path: AWS Console -> Lambda -> Functions
- Azure equivalent: Azure Functions
- GCP equivalent: Cloud Functions or Cloud Run
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Lambda -> Functions.
3. Build: Create a hello-world function from blueprint.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Run a test event and inspect CloudWatch logs.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete function and related log group if needed.

### Activity 4: Amazon VPC Lab for Batch, HPC, Outposts, Beanstalk, and specialized compute operations
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

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study Batch, HPC, Outposts, Beanstalk, and specialized compute operations in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |

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

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/198_S3 Batch Encryption.txt

Line 1:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Okay, so another short lecture on how to update many objects at a time in an S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon S3
- Key Insights: So first, we use S3 Batch, and this will allow us to perform bulk operations on existing S3 objects in a single request.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for example, what we want to do is to encrypt unencrypted objects.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To get the list of all the objects we must encrypt, we must first get the list of all the objects and their associated metadata.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And for this we use S3 Inventory and there is a field called encryption status in the optional fields we can use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we want to filter that list and only return on the encrypted objects.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: Amazon Athena
- Key Insights: So for this, we can use Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then finally, while these fit together, we'll be able to encrypt everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon Athena, Amazon S3
- Key Insights: So to summarize, we have S3 Inventory giving us an object list that we filter with Athena, and then we send that object list into our S3 Batch service to do encryption of all the objects and get them processed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon S3
- Key Insights: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/183_AWS Elastic Beanstalk - Section Introduction.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now, we know all the fundamentals, and we know how to programmatically access AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How about we start deploying the applications, the right way?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: You may have noticed, there was a lot of manual work going on in the past sections, but in this section, we're going to learn Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Elastic Beanstalk will allow us to deploy our applications easily, in a skeletal way, and in a safe way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is actually one of the most difficult exam section, and I wanna do it right now, because I think you will be strongly empowered by knowing it right away.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's get started, and learn how to deploy an application, the right way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/184_Elastic Beanstalk Overview (High level).txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, so now let's talk about Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So so far in this course when we've been deploying an application, we've had the same architecture.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Amazon RDS, Auto Scaling, Elastic Load Balancing
- Key Insights: So we have a load balancer that is taking all the requests from our users and then we have an auto scaling group with multiple available zones and in each AZ there will be some EC2 instances being deployed there and then in the backend, we have maybe some data subnets, so we have an RDS database to take the reads and writes, maybe we have replicas and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon ElastiCache
- Key Insights: And if you're in the caching layer, in the caching layer, we need to look at ElastiCache, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon ECR
- Key Insights: So if there are so many applications for us to deploy and they follow the same architecture, it may be a pain to recreate it every single time.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Elasticity and Availability
- Services: AWS Config, Elastic Load Balancing
- Key Insights: So as a developer, it's complicated to manage infrastructure, to deploy code, we don't want to be configuring all the databases, the load balancers, et cetera, et cetera.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 7:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: And of course we want everything to be scaling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS SAM, Auto Scaling, Elastic Load Balancing
- Key Insights: So as we can see, most of the web applications will have the same architecture with a load balancer and an auto scaling group and as a developer, all I want to do is for my code run, okay?
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I don't want to worry about everything else.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So also, if I develop in different programming languages and have different applications and environments, I possibly want a single way of deploying my application and this is where Beanstalk comes into play.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So Beanstalk gives a developer centric view of deploying an application on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Amazon RDS, Auto Scaling, Elastic Load Balancing
- Key Insights: The idea is that from one single interface, it's going to reuse all the components we've seen before, such as EC2, ASG, ELB, RDS, but it's going to be a managed service that will deploy all these things for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Config, Elastic Load Balancing
- Key Insights: So it will handle the capacity provisioning, it will handle all the configuration of the load balancer, the scaling, the application health monitoring, the instance configuration and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the only responsibility for you as a developer is going to be the code itself, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Compute Operational Context
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: You still have full control over the configuration of each component, but at least they come bundled as one single interface in Beanstalk and the idea is that Beanstalk also has a really cool way of updating applications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk, Auto Scaling, Elastic Load Balancing
- Key Insights: So the Beanstalk service is free on its own, but you're going to pay for the underlying instances that are going to be leveraged by Beanstalk or your ASG or your ELB, those kinds of things.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: So components of Beanstalk consist of an application, which is a collection of Beanstalk components, such as environments, versions and configurations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: A version of the application itself is an iteration of your application code.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can have version one, version two, version three, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then an environment, it's just a collection of your resources running the specific application version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can only have one application version at a time in an environment, where we can see we can actually update an application version within an environment from version one to version two.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have tiers, so we can have two different tiers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: In Beanstalk, we have the web server environment tier and the worker environment tier.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll see those very quickly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And we can also create multiple environments in Beanstalk, such as dev, test and prod and whatever environment you have in mind really.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the process is to create an application, then we upload a version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Then we are going to launch an environment and then we're going to manage an environment lifecycle and if we wanted to iterate on that, we could update the version by uploading a new version and then deploy that new version again in our environment to update our application stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Container Runtime Operations
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: So Beanstalk supports many programming languages, such as Go, Java SE, Java with Tomcat, .NET Core on Linux, .NET on Windows Server, Node.js, PHP, Python, Ruby, Packer Builder, Single Docker Container, Multi Docker Container, Pre-configured Docker.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So the idea is that on Beanstalk you should be able to deploy pretty much anything.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now to finish, what do I mean by server tier and worker tier?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, the web tier is looking like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Auto Scaling, Elastic Load Balancing
- Key Insights: This is the traditional architecture that we know, where we have a load balancer and then it's sending traffic to an auto scaling group that has multiple EC2 instances that are going to be your web server.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 33:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: This is the architecture number one with Beanstalk and the architecture number two with Beanstalk is going to be around a worker environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So this time there is no clients accessing directly your EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We're going to use an SQS queue, which is a message queue and the message will be sent into the SQS queue and the EC2 instances are going to be workers, because they're going to pull messages from the SQS queue to process them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in this case, the worker environment is going to scale based on the number of SQS messages.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the more messages, the more EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the cool is that you can put the web environment and the work environment together by having the web environment push some messages into the SQS queue of the worker environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: Finally, there are two deployment modes you need to know for Beanstalk.
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: The first one is a single instance, which is great for development purposes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Amazon RDS
- Key Insights: In this case, you'll have one EC2 instance which will have an Elastic IP, potentially it can also launch an RDS database and so on, but it's all based on one instance with an Elastic IP.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Elastic Beanstalk, Amazon EC2, Auto Scaling, Elastic Load Balancing
- Key Insights: It's great for development purposes, but then if you wanted to scale a real Elastic Beanstalk mode, then you would go for high available with a load balancer, which is great for production environments, in which case, you can have a load balancer distributing the loads across multiple EC2 instances that are managed for an auto scaling group and multiple available zones.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 43:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And finally, you may have an RDS database that's also multi AZ with a master and a standby.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/185_Beanstalk First Environment.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, so let's go ahead and practice using the Beanstalk service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So I'm gonna go into the Elastic Beanstalk console and we're going to create our first application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have an option to choose either a web server environment or a worker environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon EBS
- Key Insights: So right now we want to run a website, so we'll choose web server environment, but if we wanted to process tasks off of a queue, then we would choose a worker environment.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we will only do web server.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's create an application, and this one is called My Application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So next we scroll down and we have environment information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the environment is sort of filled, but I'm just going to call this one My Application Dev, because this is going to represent my development environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: A domain name is going to be automatically generated for my application, and this is how I will access my web servers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we scroll down and now we need to choose a platform.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this platform is going to be managed and I will choose no JS, and then I will just choose the default options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You may see something different than me, but by using the latest defaults, you should be fine and good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we need to choose some application code.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So I'll use a sample application.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: We can definitely approve our own code, but we don't have that right now, and so this sample application will be matching the environment I have right here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Config, AWS Elastic Beanstalk, Elastic Load Balancing
- Key Insights: We have presets, and Beanstalk can be quite complicated for the configuration, and as such, we can set recommended values for either a single instance, which is free tier eligible, or high availability, where we have a load balancer for example, or custom configuration, if you wanted to customize everything.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now to keep things simple, we're going to go over single instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Next you have to configure the service access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So right now, no roles are available for me here, so I'm going to just create a role for a service role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's for a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: This is for a Beanstalk environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have these permission policies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Operational Guardrails
- Services: AWS Elastic Beanstalk
- Key Insights: We click on Next, and the name is AWS Elastic Beanstalk service role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is all pre-filled for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So now this role is created, and I can refresh and select it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: Now for the EC2 instance profile, this is the same thing.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 33:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: AWS Elastic Beanstalk
- Key Insights: We're going to create a role, and now this is for Beanstalk Compute.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: We have all these things already added to this role, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Click on Next, scroll down, click on Create Role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: The role is not created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Back in here, we refresh and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is optional, so we will leave it empty.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: And finally, we could configure networking, and so on, step three, four, five, but we don't need to, so we're just going to skip to review and click on it to go straight to the review page, because we just want to use the defaults that were set for the single instance mode.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So make sure under service access that you do have the service role and the EC2 instance profile selected.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when you're good to go, you can definitely look at those, but they're complicated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Click on Submit, and this will go and create our first Beanstalk environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now if we scroll down under Events, as we can see, some events are happening, and these events actually come from a service, called CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: So if you go into the CloudFormation console, we can see our Elastic Beanstalk stack right here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to just go on the right hand side and make it bigger.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So under Events, if you're clicking fast enough, you will still see that stuff is being created in progress, and then once stuff is done being created, it goes to Create Complete.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this is the line of events of all the things happening within your CloudFormation template, and all the things that is being created by CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 49:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS CloudFormation, Auto Scaling
- Key Insights: CloudFormation is a service we'll see later on, but here under Resources, we can see we have created a auto scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 50:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: We have created a launch configuration, and so on, and Elastic IP, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One thing you can look at is under templates, you can view the templates in Application Composer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And the cool thing about it is that we can visually see what is being created by a CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 53:
- Concepts: Operational Guardrails
- Services: AWS Config
- Key Insights: So we can see, for example, that we have a launch configuration, we have security groups, we have an elastic IP, a weight condition, and a condition handle.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So this is very handy to start visualizing what Elastic Beanstalk is creating for us behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So now let's go back into Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in the Events tab, as we can see now, we have some information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For example, a security group was created, and then an Elastic IP was created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then we wait for the EC2 instances to launch, and then the instances will be created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if I switch now and I go under EC2, the EC2 console, and look at my instances running, actually yes, one of my instances is running, it's using a T-3 micro.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as we can see, this instance has a public IP address, right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if I go on the left hand side under Elastic IPs, we can see that this elastic IP address was created and is allocated to our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Auto Scaling
- Key Insights: And if I go under auto scaling groups, we can see that an auto scaling group was created, and this auto scaling group, under Instance Management, is managing my only EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal; Elasticity and resilience signal.

Line 63:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That's why it's called a single EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So all of this makes sense, and that's what Beanstalk is created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And at the end of it, when everything is launched, you'll say, okay, successfully launched, and it will be okay for health.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when we get out of it is a domain name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: So if I click on this domain name and open it in a new tab, I get, actually, access to my Beanstalk environment and my single EC2 instance, and it says, "Congratulations, you are now running Elastic Beanstalk on this EC2 instance," which is amazing.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk, AWS SAM
- Key Insights: So you can see very simply, Beanstalk was creating for us, just from the code, the sample code that we were using, it generated all the infrastructure to start successfully my application, my web server, which is very, very good.
- Hidden/Implicit Meaning: Platform automation signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look at a couple of options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if we wanted to upload a new version, we click on here, we could upload a new version, and automatically, it would be deployed to my EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we don't have that, but just to give you an overview.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Health gives you some information around the health checks of all your instances, if you had many.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can go under logs to view the logs of your application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can go on monitoring to have a look at all the metrics for your application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we get really like some view-centric around all my application itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: The alarms manage updates, which is when Beanstalk, the sets you update, our entire environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: And then if you click on configuration, you can actually have a look at all the configuration of your Beanstalk environment, modify them and apply them, which are quite well-rounded, but we don't need to know about this right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, more importantly, if we go under My Application, as we can see right here, there's My Application Dev.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's one environment, but I could go ahead and create a second environment, for example, My Application Prod, and that will allow us to really think about environments overall.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So that's it for an overview of Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: So to reason about it, Beanstalk is centered around code, and environments for your code, whereas, if you wanted to look at CloudFormation, the service we had seen before, CloudFormation is used to deploy stacks arbitrarily with any kind of infrastructure.
- Hidden/Implicit Meaning: Platform automation signal.

Line 82:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: So we've seen all that Beanstalk has created, including my auto scanning group, my EC2 instance, the Elastic IP, and so on, and so if you are in a course that has more Beanstalk lectures, so for example the Certified Developer Course, then do not delete your application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll be using it more.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: But if you are done with the Beanstalk lectures, you've known enough for the exam, so what you can do is take your application, do action, and then delete application, and then you will have cleaned up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Make your own call, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/186_Beanstalk Second Environment.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, now let's go ahead, and create a second Beanstalk environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's create a new environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, it's going to be a web server environment, and the name, this time, is going to be prod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we'll have a development environment, and a production environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now, we're going to use the same managed platform of Node.js and we'll use the same sample application for now.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: And the Preset is going to be, this time, not Single Instance, but High Availability, because we want to have a look at more configurations and understand what Beanstalk is doing when we're doing high availability.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Then we want to use an existing service role, so we'll just use these two right here, so this is perfect, already created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, here we have some optional configurations, and we will set some of them, and others we will not.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we can set up networking, database, and tags, so if you had a specific VPC requirements, you could select it here, but this is optional.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For Instance Settings, we have to choose, we'll actually choose this VPC, sorry.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then for Instance Settings, we'll actually choose in which subnets we want to launch.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, in this case, we want to launch in all my subnets available, so that we are highly available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: Because we will be using a load balancer, there is no need to assign public IP addresses to my EC2 instances, so I will not keep this activated.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have the option to use a database in it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And if we decide to use a database in our Beanstalk environment, just so you know, that database is linked to the lifecycle of your environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that if you delete your environment, the database will go away.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, there are ways around it, you can snapshot your database, and then restore it at a later stage, but it's something that you should know about.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, we don't need a database, so we'll not do it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I'll scroll down, and click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: Okay, next we configure the instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, do we want to have the root volume different than the default and so on?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: What security groups we want?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: I will not select this, we'll just make sure that this is automatically configured for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: What about the auto scaling group?
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 28:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, here we have a Load Balanced environment, so this time we'll have a load balancer, and so, therefore, our autoscaling group will have a minimum and a maximum capacity.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, one to four.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: The fleet composition, so how do we want your ASG to be, On-Demand, or also maybe some spots, who knows?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, lots of different options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We want t3.micro, t3.small.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I'll just leave it as t3.micro, for example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: AWS Config, Auto Scaling
- Key Insights: The AMI ID you wanna use, so pretty much the configurations of your ASG can be done here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: How do you wanna scale your ASG?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, here we wanna scale our network out, on the average, what is the min, the max, and the thresholds, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: AWS Config, AWS Elastic Beanstalk, Auto Scaling
- Key Insights: So, these are all my ASG configuration that I can do directly from Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Regarding load balancer, what is the visibility?
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What subnets do I want in?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, it's a public load balancer in three subnets, so that's perfect.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 42:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: And then the type of load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 43:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, do I want a application load balancer?
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 44:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Or a network load balancer?
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 45:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And if I choose an ALB, I can either have one dedicated for this environment, or if you have multiple environments, then you can use a shared one to save on some cost, which is really nice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Elasticity and Availability
- Services: AWS Config, Elastic Load Balancing
- Key Insights: So, listeners for your load balancers, so, again, more load balancer configuration, processes, rules, I mean, you can see that everything can be configured directly in here.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I'll click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then Health Reporting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, what kind of health checks do we want?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: So, we can have CloudWatch custom metrics, we can have Enhanced type of health reporting, which we need.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, I will not go over all the health, but as you can see, Beanstalk itself manages its own updates, so it's quite nice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Do you want email notifications based on important events for your environment?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Do you want to have rolling updates?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we'll have a look at this in its own lecture, so we'll just skip this right now, but this is a very important one for the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then Platform Software.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: AWS X-Ray, Amazon CloudWatch
- Key Insights: So, you want Amazon X-Ray, do we want to stream logs to CloudWatch logs and so on?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, a lot again of different options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we've seen pretty much everything at a high level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: As you can see, Beanstalk can be quite a complicated, and powerful, and complete service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, bottom line is we have configured everything, but in my experience with this new console, we may do things wrong, so I'm going to go and just cancel this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: We're going to cancel this altogether, and then we will recreate an environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the application is going to be MyApplication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The environment name is MyApplication-prod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: We will choose again, Node.js 12, and then we will choose High Availability.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we go into the service, we just click on Skip To Review.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: AWS Config, Amazon RDS
- Key Insights: And from that point onwards, I know that everything is configured the way it should be.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's just a safety, but in my own experiments with this new console, it may be a little rough around the edges.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, when you're done, you just review all these parameters, and then you click on Submit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we go, my application is now launching, and that will take about 10 minutes, so we'll pause the video until this is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, now my environment is ready, and I can click on this, and open again the new Congratulations page.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So, from an app perspective, this is the same app, it's just run differently.
- Hidden/Implicit Meaning: Platform automation signal.

Line 74:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So, if I go, for example, for my load balancers, and refresh this page, as you can see now, a load balancer has been created, it's in three availability zones, and so on.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 75:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And there is a target group, so this target group has one healthy instance, and the healthy instance is an EC2 instance that was created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So, this EC2 instance corresponds to MyApplication-prod, and we can have a look at the security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For example, there's one security group attached to it, which allows port 80 coming from another security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Elasticity and Availability, Operational Guardrails
- Services: Elastic Load Balancing
- Key Insights: And this security group right here is the load balancer security group, which allows port 80 from anywhere, and allows outbounds on port 80 to anywhere as well, so to be able to talk to our application.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 79:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Finally, if we go into the Autoscaling Groups, we'll find right here that we have two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There's one for our first application, and one for our prod environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this one is our prod environment, because we have min one, and max four capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if you look at it, we can, for example, have a look at Instance Management, and see that one is in service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: AWS Elastic Beanstalk
- Key Insights: In terms of Automatic Scaling, we can also have dynamic scaling policies that have been set automatically by Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Elasticity and Availability
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: So, the beautiful thing about it is that Beanstalk did pretty much configure everything for us, and all we had to do was to upload the code, and say we wanted to run it in high availability.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 85:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, that really shows you the power of Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we now have two environments, we have a prod and a dev environment, which is amazing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/187_Beanstalk Deployment Modes.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: So let's talk about the Beanstalk deployment options whenever you're doing an update to your application.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have several ones, and each of them is going to be described with diagrams in the next few slides, so don't worry about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I just wanna give you an overview of what they are before we dive into them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first one is all at once, where you deploy all in one go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It's the fastest, but then your instances are going to be down because they will be updating, and so you'll have some downtime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You have rolling, where you update a few instances at a time, and then you move on to the next set of instances, called a bucket, once the first bucket is healthy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: You can also do rolling with additional batch.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: This is just like rolling, but you spin up new instances to update instances over time so that you'll still have the old application available with the same capacity.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have immutable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: This is when you have instances in Auto Scaling group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 11:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You deploy new instances altogether.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: You deploy the version to these instances, and then you swipe out all the instances when everything is healthy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have blue/green, where you create a whole new environment altogether, and then you switch over when ready.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, we have traffic splitting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is for canary testing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Canary testing is when you send a small percentage of the application traffic to a brand new deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all these things, obviously, you're going to learn in the next few slides, so don't worry, this is just an overview, and you'll learn about the diagrams for all of these.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about all at once.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Here is our four EC2 instances, and they all run the version one, which is blue, of our application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Then we are going to do an all at once deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we want deploy v2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: And what happens, that first Elastic Beanstalk will just stop the applications on all our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So then I put it as gray, as in they don't run anything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk
- Key Insights: And then we will be running the new V2, because Elastic Beanstalk will deploy V2 to these instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what do we notice?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, it's very quick.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: It's the fastest deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The application, though, has downtime, because you can see in the middle they're all gray, and so they can't serve any traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I think it's great for when you have quick iterations and development environments when you wanna deploy your code fast and quickly, and you don't really care about downtime.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally with this setup, there's no additional cost.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about rolling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The application will basically be running below capacity, and we can set how much below we want to set, like running the capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's called the bucket size.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have four instances running v1, and the bucket size will be two for the example.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So what happens is that the first two instances will be stopped...
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Not the instances, sorry, the application on the instances will be stopped, and so they're gray.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But we still have the other two instances running v1.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can see we have maybe half capacity here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: AWS Batch
- Key Insights: Then these first two instances will be updated, so they'll be running v2, and then we will roll on to the next bucket, or to the next batch.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so that's why it's called rolling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: As you can see now, the bottom two instances will have their application v1 taken down to some gray, and then updated to v2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so at the end, we have all the EC2 instances that have been updated to run the v2 application code.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So as you can see now, the application, at some point during the deployment, is running both versions simultaneously.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there is no additional cost, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: You still have the same number of EC2 instances running in your infrastructure.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 47:
- Concepts: Compute Platform Design, Deployment Automation
- Services: (none explicit)
- Key Insights: And so if you set a very small bucket size and you have hundreds and hundreds of instances, it may be a very long deployment, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 48:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Right now, in this example, we have a bucket size of two and four instances, but we can have a bucket size of 2 and 100 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It will just take a very long time to upgrade everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: Now, there's an additional mode called rolling with additional batches.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so in this case, the application is not running under capacity, just like before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Before, at some point, we were only running two instances out of four.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that was below capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In this mode, we run at capacity, and we can also set the bucket size.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And basically our application will still be running both versions simultaneously, but at a small additional cost.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Deployment Automation
- Services: AWS Batch
- Key Insights: That additional batch, that we'll see in a second, will be removed at the end of the deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 57:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And again, the deployment is going to be long.
- Hidden/Implicit Meaning: Platform automation signal.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's honestly a good way to deal with prod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We have our four v1 EC2 instances, and the first thing we're going to do is deploy new EC2 instances, and they will have the v2 version on it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk
- Key Insights: So now, from four instances, Elastic Beanstalk automatically created six instances for us, so an additional two. and you can see that the additional two are running, already, the newer version.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: Now we take the first batch to the first bucket of two and they get stopped, the application gets stopped, and the application gets updated to v2, excellent.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then the process repeats again, just like in rolling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the application running v1 gets stopped, and then the application is updated to v2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so at the end, you can see, we have six EC2 instances running v2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: And so at the end of it, the additional batch gets terminated and taken away.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, now we can see that we are running always at capacity.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The lowest number of EC2 instances running the application we have at any time is four.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So sometimes we are running at over capacity, obviously, and this is why you have a small additional cost.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's very small, but there is an additional cost.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And sometimes the exam asks you, is there an additional cost to this kind of stuff?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Then we have immutable type of deployments.
- Hidden/Implicit Meaning: Platform automation signal.

Line 74:
- Concepts: Compute Platform Design, Deployment Automation
- Services: (none explicit)
- Key Insights: And these deployments are also zero downtime, but this time the new code is going to be deployed to new instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 75:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So before, it was on previous instances, now it's deployed on new instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And where do these instances come from?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: Well, they come from a temporary ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Deployment Automation
- Services: Auto Scaling
- Key Insights: So there's a high cost, you double the capacity because you get a full new ASG, and it's the the longest kind of deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As a bonus though, you get a very quick rollback in case of failures, because to just mitigate failure, you just have to terminate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Auto Scaling
- Key Insights: Not you, but Elastic Beanstalk will just terminate the new ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a great choice for prod, if you're willing to take a little bit more cost.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here's the idea.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Platform Design
- Services: Auto Scaling
- Key Insights: We have a current ASG with three applications v1 running on three instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And then we're going to have a new temporary ASG being created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk
- Key Insights: At first, Beanstalk will launch one instance on it, just to make sure that one works.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if it works and it passes the health checks, it's going to launch all the remaining ones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So right now, three instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: When it's happy, it's going to sort of merge the ASG with a temporary ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Platform Design
- Services: Auto Scaling
- Key Insights: So it's going to move all the temporary ASG instances to the current ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 90:
- Concepts: Compute Platform Design
- Services: Auto Scaling
- Key Insights: So now, in the current ASG, we have six instances, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 91:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And when all of this is done and the temporary ASG is empty, then we have the current ASG that will terminate all the v1 applications, while the v2 applications are still there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And then, finally, the temporary ASG will just be removed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Finally, there's something you may hear in the exam or in the white papers, it's called blue/green, and it's not a direct feature of Elastic Beanstalk, but I'll try to give you my best version of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's basically a zero downtime, and it helps with the release facility, allows for more testing, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is that you wanna deploy a new stage environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So it's just another Elastic Beanstalk environment, and you'll deploy your new v2 there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So before, all the deployment strategies were within the same environment, here, we create a new environment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 98:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the new environment stage, or green, can be validated independently in our own time and then roll back if issues.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we can use something like Route 53, for example, to prevent the traffic from going into the two directions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can set up weighted policies and redirect a little bit of traffic to the stage environment so we can test everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And then when we're happy using the Elastic Beanstalk console, you can swap URLs, when done, with a test environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is not a very direct feature, and it's actually very manual to do.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 103:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: It's not embedded into Elastic Beanstalk, so some documentation will say there is blue/green, some will say it's not there, but overall it's very manual.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So just one graph, I try to make it simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: But in the blue environment, running into one Elastic Beanstalk environment, we have all the v1, and then we'll deploy a green environment with all the v2, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And they're both running at the same time, just very fine.
- Hidden/Implicit Meaning: Platform automation signal.

Line 107:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then in Route 53 we're going to set up a weighted type of policy to send 90% of the traffic to blue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So just keep most of the traffic going to the instances we know work, and maybe only 10% of the traffic to the green environment, just to test it out and make sure it's working and the users aren't having any problems.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the web traffic basically gets split 90/10, but it's whatever you want, as far as the weight goes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so when you're happy where you're testing, when you measured everything you want with your v2 environment and you think you got it, then you basically shut down the blue environment and swipe the URL to make the green be the main environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for blue/green, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And it's pretty complicated, and I think pretty manual, Elastic Beanstalk, but that's the way it is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 113:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: Another kind of deployment you can do with Elastic Beanstalk is called traffic splitting.
- Hidden/Implicit Meaning: Platform automation signal.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this will be used for canary testing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you see canary testing on the exam, think traffic splitting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is canary testing?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS SAM, Auto Scaling
- Key Insights: Well, a new application version is going to be deployed to a temporary Auto Scaling group with the same capacity.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 118:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS SAM, Auto Scaling
- Key Insights: So we have the main Auto Scaling group and a temporary Auto Scaling group with the same capacity.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 119:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So three instances in the main one, and three instances in the temp.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it doubles the capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: AWS Config, Auto Scaling
- Key Insights: And what's going to happen is that a small percentage of the traffic is going to be sent to the temporary ASG for a configurable amount of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: Auto Scaling, Elastic Load Balancing
- Key Insights: So we have an ALB, and we're going to say, "Okay, 90% of the traffic goes to my main ASG," "while 10% of the traffic goes to my temporary ASG." And all of this is automated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Deployment Automation
- Services: Auto Scaling
- Key Insights: The deployment health of the new temporary ASG is going to be monitored.
- Hidden/Implicit Meaning: Platform automation signal.

Line 124:
- Concepts: Deployment Automation
- Services: Auto Scaling
- Key Insights: And in case there is a deployment failure, or there is a metric that goes wrong, this will trigger an automated rollback, which will be very, very quick because the main ASG is already here, and all we have to do to roll back is to stop sending 10% of the traffic to this temporary ASG.
- Hidden/Implicit Meaning: Platform automation signal.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there is no application downtime.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Compute Platform Design
- Services: Auto Scaling
- Key Insights: And then once everything is stable and correct, then the new instances are going to be migrated from the temporary ASG to the main original ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the old application version is going to be terminated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I really like that, because all of this is automated, and this could be a big improvement on top of the blue/green technique that I just described in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: So if you wanted to compare all of those, there is this link on the Beanstalk documentation, which shows you the difference between all the deployment methods I just explained.
- Hidden/Implicit Meaning: Platform automation signal.

Line 130:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And this is really cool, because it gives you the method name, the impact of a failed deployment, the deploy time, if it's zero down time, if there's a DNS change, what is the rollback process, and where the code is deployed to.
- Hidden/Implicit Meaning: Platform automation signal.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you understood this lecture, this table should make sense to you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 132:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: So what I recommend for you is to just explore this link, have a read through, and make sure the table makes sense, because the exam will give you one or two scenario questions around the kind of deployment mechanism for Beanstalk based on the constraints and requirements of the deployment itself.
- Hidden/Implicit Meaning: Platform automation signal.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: You should be a deployment expert now, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/188_Beanstalk Deployment Modes Hands On.txt

Line 1:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So now let's have a look at the deployment of app updates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So for this, let's go under configuration on the left hand side, and then we are in the prod environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We scroll down and we are looking for updates, monitoring, and logging.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we click on edit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And underneath we have at some points, rolling updates and deployments.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So we have the application deployments, which is, okay, we deploy a new application version.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What is going to happen and how is it going to be deployed?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So here we have a couple of deployment policy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have all at once, and all at once just gives your code update to all the instances at one, you will be down, but it will be the fastest.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, you can choose between fixed and percentage, but actually these are disabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these settings do not matter for all at once.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're just remained within the UI for some reason.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For rolling, then these settings become available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we take down some instances, we upgrade them, and then we go and move on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: AWS Batch
- Key Insights: So the batch size could be either a percentage, for example, 30% of instances at a time or fixed, for example, one instance at a time.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is one option.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: AWS Batch, Amazon EC2
- Key Insights: Rolling with additional batch will add EC2 instances, will deploy to those and then we'll keep on having a batch.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: So we make sure that we maintain the same capacity no matter what, but there is an increased cost, because we are creating temporarily some EC2 instances to perform this update.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And again, we can set up a percentage or a fixed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have immutable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So immutable is creating a whole new set of instances we deploy to, and then we'll delete the old ones.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's what we'll be experimenting with.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And again, fixed and percentages don't make sense here, so they're disabled sort of.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have traffic splitting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to split traffic to a percentage of new applications versions for X number of minutes before upgrading everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is really cool.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's explore immutable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Also, we have configuration updates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: So this is when you actually are updating your EC2 instances internally or making VPC configurations or whatever, that should make your instances being replaced.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, we can again choose a rolling or immutable type of updates, but the exam really doesn't test you on that part.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: It tests you on the application deployment part.
- Hidden/Implicit Meaning: Platform automation signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll explore immutable and I will scroll down and I will apply this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So now we apply some new configurations in our environments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So anytime we do this, Elastic Beanstalk is going to be updating the environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk, AWS SAM
- Key Insights: So in the meantime, let's go on Google and type sample application nodejs Beanstalk.
- Hidden/Implicit Meaning: Platform automation signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we are going to click on this, on those tutorials.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And then we're going to find the sample application for Node.js.
- Hidden/Implicit Meaning: Platform automation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we scroll down, Node.js is right here, nodejs.zip.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you download the zip file and then you open it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have a couple of files and we'll explore them in a second.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is how my application is packaged.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is the Node.js specific part of the application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Index of HTML is actually representing that welcome page.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have couple of options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can set the style, but we can also, for example, set the text, for example, who says congratulations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then we have cron.yaml which is to schedule some tasks if you wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: This is to run some regular tasks directly on our instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: App.js, this is a Node.js part of it where we actually create a server and we're going to server the HTML content right here, .gitignore we can ignore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: And then .ebextension is a way to customize the way that Elastic Beanstalk is working by creating configurations within that .ebextension, .ebextensions directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what we're going to do is that we're going to change the background from green to blue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the way we do it is that we find the right place.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the one, background-color, textColumn, and we're just going to enter blue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I can just click on blue right here, or I can also, if this allows me to, I can just type in blue and it'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So whatever you wanna do, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: But to set the background color, and if you don't wanna do that, I have packaged actually a zipped version of this, because sometimes Elastic Beanstalk is not very happy to how you zip thing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I've packaged a zip version of your application to use the blue background color.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what I'm going to use in my course right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go and deploy this new version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're going to click on upload and deploy, and then we have to choose an application file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So under my code, find Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So under Beanstalk and then there is nodejs-v2-blue.zip and we can have a version label, for example, I'll call this one MyApplication-Blue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And here we have deployment preferences.
- Hidden/Implicit Meaning: Platform automation signal.

Line 63:
- Concepts: Deployment Automation
- Services: AWS Batch
- Key Insights: So by default it's set to immutable, because that's what we have currently set up, but you can override it if you wanted to with other kind of deployments, for example, all at once, rolling, or rolling with additional batch.
- Hidden/Implicit Meaning: Platform automation signal.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we wanna use immutable so we'll just submit and deploy this as immutable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll have a look at how immutable is actually working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the way it works is that, and we have to see in the events how it's going to happen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this and have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it says launching one instance with the new settings to verify health.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first, it makes sure that like we can actually deploy this version and it is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And this is going to be done by creating a new auto scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for a moment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: Okay, so now a temporary auto scaling group has been created and this auto scaling group will have the new instance, and, of course, we're immutable, so we have to launch a new auto scaling group and new instances within.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 73:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So now the instance is created and then we have a new instance added to the load balancer and we're waiting for the instance to pass the health check, which it did.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 74:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: So now that the instance are initialized, we are detaching the new instances from the temporary auto scaling group, and we attach them to the permanent auto scaling group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 75:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS Config
- Key Insights: And then there's post-deployment configuration on new instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then at the end of this, the old instances will just go away, and immutable will have been performed.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Platform Design, Deployment Automation, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: So the deployment is complete and things that happen is that the instance was removed from the environment, and then the new application deploy version was deployed, and then everything was terminated, the old instances, and the temporary auto scaling group.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal; Platform automation signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now if we open this in a new tab, as we can see, congratulations is in blue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we have successfully deployed this version update into our environments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now the prod is displaying blue and the dev is displaying green.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And one thing we can experiment with is environment swapping.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can swap environment domains.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that the prod will become dev and the dev will become prod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the reason we would do so is, for example, you take this environment, for example, prod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: First, you're going to clone it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you're going to create a copy of prod, then you would deploy your new application to the new environment where you can perform some extensive testing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Call it prod number two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then once you want prod number two to become prod number one, you would swap environment domains and then the URLs will be swapped.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to demo the swap environment domain, but using prod and dev.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is blue and then this is green, but let's swap environment domains and see what happens.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we are going to swap this with dev and click on swap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So swap environment domain has to do with DNS and entries, and they're going to be modified.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that one is pointing to the other and vice versa.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this may take a bit of time to be updated and also to reflect the updates, because DNS updates can be slow sometimes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait five more minutes and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So my update is now done, and if I go onto my prod environment and refresh, I see now green.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if I go to my green environment and refresh, I see now blue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So indeed the environments have been swapped, and everything is working as expected which is, I think, pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What I'm going to do is just re-swap the environment domains just to have the blue as prod, and the green as dev, but we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So we've seen all the deployment options.
- Hidden/Implicit Meaning: Platform automation signal.

Line 103:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've seen about cloning, we've seen swapping URLs, and I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/190_Beanstalk Lifecycle Policy Overview + Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So Beanstalk can store, at most, 1000 application versions inside of your account.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And so if you don't remove old versions, you will not be able to deploy your Beanstalk applications anymore.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And so what you need to do is to phase out old application versions and to do so you can use a Beanstalk lifecycle policy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This lifecycle policy will send hands-on, can be based on time to remove older versions or it can be based on space when you have too many versions you just phase out the old ones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The versions obviously, that are currently used by your environments will not be deleted, even though they're old or are using too much space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And you also have the option not to delete the source bundle of your application in Amazon S3, in order to prevent data loss which can be very helpful if you want to prevent and you want to restore these versions later on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Right now, the lifecycle policy just can just remove them from the Beanstalk interface.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go in the hands-on to see how this works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we're going to demo lifecycle policy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I go to application versions under MyApplication and we can find the MyApplication-blue that we deployed before, and we know that which label is deployed from which source and to which location.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first let's have a look at the source.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If I click on source, this is actually going to download it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So I'm going to go instead into Amazon S3 and show you what this is about.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon S3
- Key Insights: So I am in S3 right here and I'm going to type Beanstalk and go to the region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm in EU Central-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And as we can see, this bucket was created by Beanstalk to hold all my application versions for my applications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And so this blue version has been uploaded to Beanstock right here and so all the application versions are going to remain in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: But they're going to be registered in Beanstalk and we can control how many of them they are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if you go into settings, you can activate a application lifecycle policy and if you activate it, you can either limit the application versions by counts and saying you want a maximum of 200 application versions or you can limit it by age and say, I only want the 180 days of versions that have been used.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Of course, if your version is actually used, it's not going to be deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if it's not used, and not compliant with this lifecycle rule, it will be deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon S3
- Key Insights: Now, it will be deleted from Beanstalk, but what happens to it in Amazon S3?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Well, we have two options, either we retain the source bundle in Amazon S3, which is good for if you wanted to do some kind of recovery or delete the source bundle from S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And finally, what role allows you to perform this deletion?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Operational Guardrails
- Services: AWS Elastic Beanstalk
- Key Insights: And so here we have the AWS Elastic Beanstalk service role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon S3
- Key Insights: We've seen lifecycle policies and the backing S3 bucket of Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/191_Beanstalk Extensions.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay, so now let's talk about Elastic Beanstalk Extensions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, when we create a zip file it contains your code that must be deployed to Elastic Beanstalk, but we can also add EB extensions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, all the parameters that we set in the UI can also be configured with code, using files, and these are the EB extensions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, the requirements that all these configuration files must be in the .ebextensions/ directory in the root of your source code.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it has to be in a directory called .ebextensions/.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It must be in the YAML or JSON formats.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And even though it is in YAML or JSON format, the extension of that file must end with .config.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: For example, logging.config, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: It has to end with .config.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You are able to modify some defaults using the options_settings document, and we'll see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon DynamoDB, Amazon ElastiCache, Amazon RDS
- Key Insights: And you have the ability to add resources using the EB extensions, such as RDS, ElastiCache, DynamoDB and all the other things that you cannot necessarily set through the Elastic Beanstalk console.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, by the way, anything that is managed by the EB extensions gets deleted if the environment goes away.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon ElastiCache
- Key Insights: So that means that if you create, for example, an ElastiCache as part of your Elastic Beanstalk environment and then you delete your Elastic Beanstalk environment, then your ElastiCache will go away as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's go in the hands-on to see how we can play with these EB extension files.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so here I am in my code directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And so, I've created a nodejs-v3-ebextensions directory, and within it I created a .ebextensions directory, and placed an environment-variables.config.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, as we can see, this file ends with a .config, and is placed within the .ebextensions directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you have to do these two things for it to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then the language, I can set it to YAML, to show you some proper formatting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, even though it's a .config file we can have a YMAL formatting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, what did I say?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is all the stuff I already told you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here we set option_settings, and I have the documentation reference for this option settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, here we set the AWS Elastic Beanstalk application environment variables, and here we can define the environment variables.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can have the DB_URL to be equal to this URL, and the DB_USER to have, for example, the value of username.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, here it's just an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: We're not using these in our application, but if we wanted to connect, for example, to an external RDS database, maybe a Postgres RDS database, then we will need to set up environment variables, and we will set up this way, with an ebextension, and we'll define the value of these right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, what I've done is that I've already zipped this into the nodejs-V3-ebextensions.zip file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's go into our dev environment, because this is going to be faster to perform an update there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We're going to upload and deploy, and this time I will choose my nodejs-V3-ebextension and the version it was going to be, MyApplication-EBExtensionsDemo, and click on Deploy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so, this new version is going to be deployed directly to my single EC2 instance, which should be rather quick, but I'm going to pause the video until this is done.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, my environment update is now done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's verify that the EBextensions file have been applied.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: For this, let's go into Configuration, you scroll down, and then here under Environment properties, we can find the DB_URL and DB_USER that have been set directly, not from me in the console, but from the files deployed as part of this application version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So, we can really start to see the power of the EB files, the EB config files of the EB extensions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that makes sense for you, and we just crashed the surface, but that's enough for the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/193_Beanstalk Cloning.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So here is a handy feature of Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Deployment Automation
- Services: AWS Config, AWS SAM
- Key Insights: It is allowing you to clone an existing environment into a new environment and it will have the exact same configuration which is extremely helpful if you already have a production version of your application and you want to deploy a test version with the exact same settings, then you would just do a cloning between your prod environment and your new environment for testing.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: All the resources and the configuration of the original environment are preserved.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Elasticity and Availability
- Services: AWS Config, Amazon RDS, Elastic Load Balancing
- Key Insights: So that includes the load balancer type and the configuration, the RDS database type although if you have an RDS database the data is not going to be preserved, but the configuration of your RDS database will, environment variables and so on.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And after cloning an environment you can change its settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's quickly go see in the console how this works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at cloning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I click on My Application dev, Action and then Clone Environment I have the option to clone it into a new environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, dev two or test or whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And as you can see, the options are quite limited.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You can clone into a new platform version if you wanted to or not even actually, and choose a service role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And then you click on Clone and this will create an entirely same environment hence cloning.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Of course, then once you have cloned an environment you can customize its settings thanks to the Configuration tab.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I just went through the option, and again, the goal of it is maybe to deploy a new version to do some tests and then to perform a swap of the environment to name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/194_Beanstalk Migrations.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So here is a set of theory slides around how to perform an Elastic Beanstalk Migration because that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Elasticity and Availability
- Services: AWS Config, AWS Elastic Beanstalk, Elastic Load Balancing
- Key Insights: So the first one is a Load Balancer, So after you create a Beanstalk environment you cannot change the Elastic Load Balancer type, only its configuration.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 3:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So we've seen this before If you create a Classic Load Balancer you can only edit the classical bouncer setting, you cannot upgrade it to an Application Load Balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 4:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So if you want it to somehow upgraded from a Classic Load Balancer to an Application Load Balancer or from an Application Load Balancer to a Network Load Balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You will need to perform a migration and the steps are as such.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS Config, AWS SAM, Elastic Load Balancing
- Key Insights: First you would create a new environment with the same configuration except the Load Balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 7:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS Config, AWS SAM, Elastic Load Balancing
- Key Insights: And so we can't use the clone feature we just saw in the past lecture because the clone feature would copy the exact same Load Balancer type and configuration.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal; Platform automation signal.

Line 8:
- Concepts: Container Runtime Operations, Deployment Automation, Elasticity and Availability
- Services: AWS Config, AWS SAM, Amazon ECR, Elastic Load Balancing
- Key Insights: So you have to recreate manually the same configuration and then the old environment will be copied not cloned into a new environment and this one in this new environment, I will have my Application Load Balancer, then we will deploy our application onto the new environment.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we need to shift the traffic from the old environment to the new environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, we can do a CNAME swap or we can use Route 53 to do a DNS update either work, hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: Next, we'll talk about RDS Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: So RDS can be provisioned with your Beanstalk application, which is great if you want to do development and test.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: So this looks like this in your Beanstalk you have your own RDS Database.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Deployment Automation
- Services: AWS Elastic Beanstalk
- Key Insights: But if you are doing a production deployment, this is not great because the database lifecycle is going to be tied to the Beanstalk environment lifecycle.
- Hidden/Implicit Meaning: Platform automation signal.

Line 15:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: So the best way to do it in prod is to separate the RDS Database from your Beanstalk environment and reference it using a connection string for example using an environment variable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how would we do this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon RDS
- Key Insights: How would we Decouple RDS if it's already in our Beannstock stack?
- Hidden/Implicit Meaning: Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: Well, the first one we do is that we would create a snapshot of our RDS Database as a safeguard in case things go wrong, so we have a backup or data and we know we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: The next thing is to go to the RDS console and protect the RDS Database from deletion.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: This will prevent it from being deleted no matter what then we create a new Elastic Beanstalk environment, this time without RDS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And we point our application to the already existing RDS Database, for example, using an environment variable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So now we have the new environment pointing to the same database.
- Hidden/Implicit Meaning: Platform automation signal.

Line 23:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Then we perform a CNAME swap, so a blue/green deployment or route 53 DNS updates and we confirm it's working.
- Hidden/Implicit Meaning: Platform automation signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we have shifted all the traffic from the old version to the new version then we terminate the old environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And because we have enabled RDS deletion protection then RDS will stay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: And then because it's the CloudFormation stack, behind our Elastic Beanstalk environment will have failed to be deleting it will be in the Delete Failed state.
- Hidden/Implicit Meaning: Platform automation signal.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so we need to just go in CloudFormation and delete that CloudFormation stack manually.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: And there we go will have effectively created an RDS Database on its own outside of our Beanstalk environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So hope that was helpful and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/17_AWS Elastic Beanstalk/195_Beanstalk Cleanup.txt

Line 1:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: So let's go ahead and clean up everything because we have two instances running at the same time.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 2:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: We have load balancers, and this is just going to cost us money if we leave it running for a while, and so therefore, what I'm going to do is just to delete everything.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Very simply, go to the application level, find the application, do action, delete application, and then it's going to delete my application, so I just need to reenter the name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation, Elasticity and Availability, Operational Guardrails
- Services: AWS CloudFormation, Auto Scaling, Elastic Load Balancing
- Key Insights: This will delete all the underlying environments, so behind the scenes for everything to be deleted, well, the CloudFormation stacks that were deployed are now in delete in progress, and so everything that has been created by CloudFormation, including the load balancers, the auto scaling groups, the security groups, et cetera, et cetera, et cetera, is going to be deleted, which is the beauty of using CloudFormation under the hood.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Once you're done with this, nothing else will delete.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/29_More Solution Architectures/367_High Performance Computing (HPC) on AWS.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there is this concept in AWS that's becoming more and more common and something that the exam will test you on which is called High Performance Computing or HPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the cloud is the perfect place to perform high performance computing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because you can create a very high number of resources in no time, and you can speed up the time to results by adding more resources and you only pay for what you've used.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Once you're done, you can destroy the entire infrastructure and not be built a single dime.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the idea here is that we can have an extremely high number of instances performing competition for us, and then be done with it and just pay for what we used.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a great use case for the cloud, and something that AWS is encouraging you to do more and more.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So where do we use HPC?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well to perform genomics, computational chemistry, financial risk modeling weather prediction, machine learning deep learning, autonomous driving and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the question is, what services in AWS will help us perform HPC?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first category is, how do we manage the data and how do we transfer the data into AWS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is going to be Direct Connect to move data gigabytes per second of data into the cloud over a private secure network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've seen this in details.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: AWS Snow Family
- Key Insights: Then we have Snowballs and Snowmobile to move PetaBytes of data to the cloud through a physical route, and they're usually four big transfers or one off transfers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: And then we have data sync, where we have to install the data sync agents and they will help us move large amount of data between on-premise and FS or SMB systems into S3 EFS or FSX for windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This makes sense.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now what about Compute and Networking?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Very important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The first one is obviously EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have CPU optimized or GPU optimized instances based on the type of computations we're trying to do.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: We can also leverage Spot instances or Spot fleets for huge cost saving and Auto Scaling to automatically scale our fleets based on the computation we're doing.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Finally, if our EC2 instances need to talk to one another and perform some computation in a distributed fashion, then using an EC2 placement group of type cluster is great to get the best network performance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: In which case, we have a Low latency, 10 gigabyte per second network in this example, and for the cluster placement group, everything is on the same rack, everything is on the same AZ.
- Hidden/Implicit Meaning: Platform automation signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Okay, next, how can we go even further to improve the performance of our EC2 instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The first one is EC2 Enhanced Networking, also called also called (SRI-IOV).
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this gives you higher bandwidth, higher PPS which is packet per second, and lower latency.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And how do we get this easy two enhance networking?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The Option 1, which is the most recent and popular, is called an Elastic Network Adapter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this delivers you a network speed of up to 100 gigabits per second.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is something you have to know going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, ENA, is for easy to enhance networking, and gives you higher bandwidth, higher package per second, and lower latency.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Option number two, is to use this very complicated things from Intel, called 82599 VF, and that gives you up to 10 gigabits per second, and that was to be the old ENA, so it's LEGACY but I'm still including it here, just in case this comes up in the exam and you see it you know what it is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, both these things, the ENA and the Intel, allow you to get easy to enhance networking on your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But you can push this a step further, and using the Elastic Fabric Adapter or EFA.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So think about distributed computation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because it's going to leverage something called MPI, the Message Passing Interface standard.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this standard will bypass the underlying Linux OS to provide even lower latency and more reliable transport.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So think of it as like, if you have a Linux instance, and you're performing tightly a couple workloads, then using an EFA, will bypass the OS and provide you even higher network performance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is quite common in the exam, that you will be asked to differentiate between an ENA and EFA or ENI or something else.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this is good that we are seeing this right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You need to make sure to understand these concepts very very clearly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So we have transferred the data, we're computing over the data, and we've configured our network, but how do we store the data?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So multiple choice, we can use the instance-attached storage.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 50:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So we could be EBS, and this can scale up to 256,000 IOPS with io2 Block Express.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be an instant store, and we've seen this can scale to million of IOPS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And it's linked to the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's on a hardware.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It's going to be lower latency, but we can lose it if we lose our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Then we can use network storage, such as Amazon S3 to store large blob of data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's not a file system, it's to store large objects.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: Or EFS, where the IOPS is going to be scaled based on the total size of your file system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: Or we can use provisioned IOPS mode on EFS to get higher IOPS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: Amazon FSx
- Key Insights: But we've seen there is a file system that's dedicated to HPC, which was called FSX for Luster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Luster was for Linux and cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And it's gonna be HPC optimized, gives you millions of IOPS, and in the backend, it's backed by S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So lots of options again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, how about Automation and Orchestration?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Platform Design
- Services: AWS Batch, Amazon EC2
- Key Insights: The first thing will be to use batch, which is (indistinct) indicates, a support service to perform multi-node parallel jobs and enables you to run jobs that spend multiple EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Platform Design
- Services: AWS Batch, Amazon EC2
- Key Insights: There are Batch jobs, and it's very easy to schedule these jobs and launch the EC2 instance accordingly.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: They will be managed by the batch service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: So batch is a very popular choice for HPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have AWS parallel cluster, which is an open source cluster management tool to deploy high performance computing on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So you configure it using text files, and then you would deploy it on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And it's going to automate the creation for you of VPC, Subnet, cluster types and instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it can come up in the exam that you must use parallel cluster alongside EFA, because there is a perameter in the text files to enable elastic fabric adapters.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So EFA on the cluster, and the impact of that is to improve the network performance and therefore have a higher performance HPC cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, HPC is something that comes up more and more in the exam, and it's not a service, it's a combination of service and different options, and need to make sure you understand all, of those to maximize the potential of computation within AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I hope that for this, this lecture was helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/30_Other Services/380_AWS Batch.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: So now let's talk about a service that is named after what it does it is AWS Batch.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: So batch is a fully managed batch processing service that can allow you to do batch processing at any scale.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: And with the batch service, you can efficiently run hundreds of thousands of computing batch jobs on AWS very easily.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: So what is a batch job?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: Well, a batch job is a job that has a start and an end.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And that is opposed to say, a continuous or a streaming job that really doesn't ever end it's always running.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: But a batch job say, for example, starts at 1 a.m. and finishes at 3 a.m.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: AWS Batch, Amazon EC2
- Key Insights: So a batch job has a point of time when it happens and so the batch service will dynamically launch EC2 instances or Spot Instances to accommodate with the load that you have to run these batch jobs.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design
- Services: AWS Batch
- Key Insights: So batch will provision the right amount of compute and memory for you to deal with your batch queue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: And you just submit or scheduled batch jobs into the batch queue and the batch service does the rest.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: Now how do you define a batch job?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Well, it is simply a Docker image and a test definition that you run on the ECS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations
- Services: AWS Batch, Amazon ECS
- Key Insights: So this is pretty much saying that anything that can run on ECS can run on batch.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: And this is going to be very helpful to use batch to run these batch jobs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: AWS Batch, Amazon ECS
- Key Insights: And because it automatically scales the right number of ECS2 instances or Spot Instances, to do these jobs, then you get lots of cost optimizations and you focus a lot less on the infrastructure, you just focus on your batch jobs.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this should be more than enough for going to the exam, but I just want to show you a small diagram that I made.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon S3
- Key Insights: So for example, say we wanted to process images submitted by users into Amazon S3 in a batch way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Batch, Amazon S3
- Key Insights: So image will be put into Amazon S3, and this will trigger a batch job.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: AWS Batch, Amazon EC2, Amazon ECS
- Key Insights: And so batch will automatically have an ECS cluster made of EC2 instances, or Spot Instances and batch would make sure that you have the right amount of instances to accommodate the load of batch jobs you have in the batch queue.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then these instances will be running your Docker images that will be doing your job.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then maybe that job will be to insert the processed object.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Maybe it's a filter on top of the image into another Amazon S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Serverless Execution Model
- Services: AWS Batch, AWS Lambda
- Key Insights: So the question you may have is what is the difference between batch and Lambda because they look similar?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: AWS Lambda
- Key Insights: So Lambda has a time limit, it's 15 minutes, and you only get access to a few programming languages.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: AWS Batch
- Key Insights: On top of it, you have limited temporary disk space if you want to run your jobs, and it's going to be serverless, whereas batch is very different.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: AWS Batch, Amazon EC2
- Key Insights: So batch has no time limit, because it relies on EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It's any runtime that you want as long as you package it as a Docker image.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And for storage, you rely on the storage that comes with an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Serverless Execution Model
- Services: AWS Lambda, Amazon EBS, Amazon EC2
- Key Insights: So it could be an EBS volume, or an EC2 instance store for disk space, which can be a lot more than for Lambda functions.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Serverless Execution Model
- Services: AWS Batch
- Key Insights: And then finally, batch is not a serverless service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It's a managed service, but it relies on actual EC2 instances being created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Auto Scaling
- Key Insights: But these EC2 instances are managed by AWS so we don't have to worry about the auto scaling and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope that was helpful and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/045_High Performance Computing (HPC).txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there is this concept in AWS that's becoming more and more common and something that the exam will test you on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Which is called High-Performance Computing or HPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the cloud is the perfect place to perform High-Performance Computing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why, because you can create a very high number of resources in no time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you can speed up the time to results by adding more resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you only pay for what you've used.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Once you're done you can destroy the entire infrastructure and not be billed a single dime.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, the idea here is that we can have an extremely high number of instances performing computations for us and then be done with it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And just pay for what we used.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is perfect, this is a great use case for the cloud and something that AWS is encouraging you to do more and more.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why would you use HPC?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well to perform genomics, computational chemistry, financial risk modeling, weather prediction, machine learning, deep learning, autonomous driving and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the question is, what services in AWS will help us perform HPC?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first category is how do we manage the data and how do we transfer the data into AWS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is going to be direct connect to move data gigabits per second of data into the cloud over a private secure network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've seen this in details.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Snow Family
- Key Insights: Then we have snowball to move petabytes of data to the cloud through a physical rout.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And they're usually great for big transfers or one off transfers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: AWS DataSync, Amazon EFS, Amazon FSx, Amazon S3
- Key Insights: And then we have DataSync well we have to install the DataSync agents and they will help us move large amounts of data between on-premise and NFS or SNB systems into S3, EFS or FSx for Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay this makes sense.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now what about compute and networking?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Very important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The first one is obviously our EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have CPU optimized or GPU optimized instances based on the type of computations we're trying to do.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: We can also leverage Spot Instances or Spot Fleets for huge cost saving and Auto Scaling to automatically scale our fleet based on the computation we're doing.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Finally, if our EC2 instances need to talk to one another and perform some computation in a distributed fashion.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then, using an EC2 placement group of type cluster is great to get the best network performance.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In which case we have a low latency 10 Gbps network in this example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And for the cluster placement group everything's on the same rack, everything is on the same AZ.
- Hidden/Implicit Meaning: Platform automation signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Next, how can we go even further to improve the performance of our EC2 instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The first one is EC2 Enhanced Networking also called SR-IOV.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this gives you higher bandwidth, higher PPS which is packet per second and lower latency.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And how do we get this EC2 Enhanced Networking?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The option one, which is the most recent and popular is called an Elastic Network Adapter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this delivers you a network speed of up to 100 Gbps.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is something you have to know going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So ENA is for EC2 enhancement networking, and gives you higher bandwidth. higher packet per second and lower latency.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Option number two is to use these very complicated things from Intel called 82599VF and that gives you up to 10 Gbps and that was to be the old ENA so it's Legacy but I'm still including it here just in case this comes up in the exam and you see it you know what it is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, both these things the ENA and the Intel allow you to get EC2 enhanced networking on your instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But you can push this a step further.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And using the Elastic Fabric Adapter or EFA.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is an improved ENA dedicated for HPC for high performance computing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it only works for Linux.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's great when you have inter-node communication, or tightly coupled workloads.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So think about distributed computation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why, because it's going to leverage something called MPI the Message Passing Interface standard.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this standard will bypass the underlying Linux OS to prove even lower-latency and more reliable transport.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So think of it like if you have a Linux instance and you're performing tightly coupled workloads then using an EFA will bypass US and provide you even higher network performance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is quite common in the exam that you will be asked to differentiate between the ENA and EFA or ENI or something else.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this is good that we're seeing this right now, you need to make sure to understand these concepts very very clearly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Okay, so we have transferred the data, we're computing over the data and we've configured our network, but how do we store the data?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, multiple choice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design
- Services: Amazon EBS
- Key Insights: We can use the Instance-attached storage, so we could be EBS and this can scale up to 256,000 IOPS if you use io2 Block Express.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It could be an instance store, and we've seen this can scale to million of IOPS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And it's linked to the EC2 instance so it's on a hardware it's going to be lower latency, but we can lose it if we lose our instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Then we can use network storage such as Amazon S3 to store a large blob of data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's not a file system it's to store large objects.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: Or EFS where the IOPS is going to be scaled based on the total size of your file system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: Or we can use a provisioned IOPS mode on the EFS to get higher IOPS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: Amazon FSx
- Key Insights: But we've seen there's a file system that's dedicated to HPC, which was called FSx for Luster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Luster was for Lenux and Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And it's going to be HPC optimized, gives you millions of IOPS and in the backend it's backed by S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So lots of options again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, how about automation and orchestration?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design
- Services: AWS Batch, Amazon EC2
- Key Insights: The first thing we use is Batch which is (mumbles) a support service to perform multi-note parallel jobs and enables you to run jobs that span multiple EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Platform Design
- Services: AWS Batch, Amazon EC2
- Key Insights: They're batch jobs, and it's very easy to schedule these jobs and launch the EC2 instance accordingly.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: AWS Batch
- Key Insights: They will be managed by the batch service, so batch is a very popular choice for HPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or we can use something called AWS ParallelCluster which is an open source cluster management tool to deploy HPC on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: It's configurable with text files and it automates the creating of VPCs, Subnets, clusters types and instance types.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is something, an option again you can see in the exams.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, HPC is something that comes up more and more in the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's not a service, it's a combination of service and different options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you need to make sure you understand all of those to maximize the potential of computation within AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I hope that for this, this lecture was helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/066_AWS Outposts.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about an exciting development, which is called AWS Outposts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is hybrid cloud?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Businesses that keep an on-premises infrastructure alongside a cloud infrastructure are called hybrid cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when we have that, we have two ways of dealing with IT systems.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have one for the cloud of AWS, for example, using the console of AWS, the CLI, and the APIs from AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But also we have another one that is dedicated to on-premises infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so that means two different types of skill sets, two different types of API and that may be complicated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So AWS said, okay, we do recognize that some companies will run a hybrid cloud, therefore let's create Outposts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And Outposts are server racks that offer the same AWS infrastructure services, API, and tools to build your own application on-premises, just like in the cloud.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what this means that they will come and set up and manage Outposts racks, which are servers, within your on-premises infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then these servers come preloaded with the AWS services, but you can benefit them from on-premises.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see now, on your corporate data center, you will have your Outposts racks directly set up by AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to extend the AWS services directly onto your on-premises data centers, which is I think, revolutionary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But the difference between an EC2 instance running on the cloud, and an EC2 instance running in your own data center is that now you are responsible for the security, the physical security, of the rack itself, because that rack is within your own data center.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the benefits from using Outposts are many.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: First of all, you get low latency access to on-premises system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You get local data processing, so the data may actually never leave your on-premises system and never go to the cloud.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Data residency, so again, it lives within your own data centers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's easy, for example, to start a migration from on-premises to Outposts, and then when you're ready from Outposts to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a fully managed service, so AWS will manage the service for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EBS, Amazon EC2, Amazon ECS, Amazon EKS, Amazon EMR, Amazon RDS, Amazon S3
- Key Insights: And with Outposts for now, you can launch a lot of services, such as Amazon EC2, Amazon EBS, Amazon S3, Amazon EKS, Amazon ECS, Amazon RDS, and Amazon EMR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's really a cool way to extend the cloud directly onto your own infrastructure on-premises system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is revolutionary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So let's take the example of Amazon S3 on AWS Outposts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So you use the S3 APIs to actually store and retrieve data locally on AWS Outposts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This way you keep your data close to your on-premises application and you reduce data transfers to AWS regions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So there is a specific storage class for Outposts on S3 called S3 Outposts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: The default and encryption scheme for anything on Outposts is going to be SSE-S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so how is the data accessed from Outposts onto AWS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Well, you have S3 on Outposts and you can build an S3 access point on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon S3
- Key Insights: And then thanks to this, you can manage security, and make sure that an easy to instance in your VPC can access your S3 on Outposts through this S3 access point.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design
- Services: Amazon S3
- Key Insights: The other option is to actually synchronize the data using the data sync service onto a cloud Amazon S3 bucket, where your instances can access the data directly from there.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these are the two options, and it's one example on how to use AWS Outposts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Compute Operational Context
- Compute Platform Design
- Container Runtime Operations
- Deployment Automation
- Elasticity and Availability
- Operational Guardrails
- Serverless Execution Model

### 2. Services List
- AWS Batch
- AWS CloudFormation
- AWS Config
- AWS DataSync
- AWS Elastic Beanstalk
- AWS Lambda
- AWS SAM
- AWS Snow Family
- AWS X-Ray
- Amazon Athena
- Amazon CloudWatch
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EFS
- Amazon EKS
- Amazon EMR
- Amazon ElastiCache
- Amazon FSx
- Amazon RDS
- Amazon S3
- Auto Scaling
- Elastic Load Balancing

### 3. Features List
- auto scaling
- batch
- beanstalk
- cloudformation
- ec2
- ecr
- ecs
- eks
- hpc
- lambda
- load balancer
- sam

### 4. Use Cases
- 198_S3 Batch Encryption.txt:3: And for example, what we want to do is to encrypt unencrypted objects.
- 184_Elastic Beanstalk Overview (High level).txt:2: So so far in this course when we've been deploying an application, we've had the same architecture.
- 185_Beanstalk First Environment.txt:18: We have presets, and Beanstalk can be quite complicated for the configuration, and as such, we can set recommended values for either a single instance, which is free tier eligible, or high availability, where we have a load balancer for example, or custom configuration, if you wanted to customize everything.
- 185_Beanstalk First Environment.txt:42: And when you're good to go, you can definitely look at those, but they're complicated.
- 185_Beanstalk First Environment.txt:53: So we can see, for example, that we have a launch configuration, we have security groups, we have an elastic IP, a weight condition, and a condition handle.
- 185_Beanstalk First Environment.txt:57: For example, a security group was created, and then an Elastic IP was created.
- 185_Beanstalk First Environment.txt:65: And at the end of it, when everything is launched, you'll say, okay, successfully launched, and it will be okay for health.
- 185_Beanstalk First Environment.txt:66: And when we get out of it is a domain name.
- 185_Beanstalk First Environment.txt:76: The alarms manage updates, which is when Beanstalk, the sets you update, our entire environment.
- 185_Beanstalk First Environment.txt:79: That's one environment, but I could go ahead and create a second environment, for example, My Application Prod, and that will allow us to really think about environments overall.
- 185_Beanstalk First Environment.txt:82: So we've seen all that Beanstalk has created, including my auto scanning group, my EC2 instance, the Elastic IP, and so on, and so if you are in a course that has more Beanstalk lectures, so for example the Certified Developer Course, then do not delete your application.
- 186_Beanstalk Second Environment.txt:6: And the Preset is going to be, this time, not Single Instance, but High Availability, because we want to have a look at more configurations and understand what Beanstalk is doing when we're doing high availability.
- 186_Beanstalk Second Environment.txt:29: For example, one to four.
- 186_Beanstalk Second Environment.txt:34: So, I'll just leave it as t3.micro, for example.
- 186_Beanstalk Second Environment.txt:70: So, when you're done, you just review all these parameters, and then you click on Submit.
- 186_Beanstalk Second Environment.txt:74: So, if I go, for example, for my load balancers, and refresh this page, as you can see now, a load balancer has been created, it's in three availability zones, and so on.
- 186_Beanstalk Second Environment.txt:77: For example, there's one security group attached to it, which allows port 80 coming from another security group.
- 186_Beanstalk Second Environment.txt:82: And if you look at it, we can, for example, have a look at Instance Management, and see that one is in service.
- 187_Beanstalk Deployment Modes.txt:1: So let's talk about the Beanstalk deployment options whenever you're doing an update to your application.
- 187_Beanstalk Deployment Modes.txt:10: This is when you have instances in Auto Scaling group.
- 187_Beanstalk Deployment Modes.txt:12: You deploy the version to these instances, and then you swipe out all the instances when everything is healthy.
- 187_Beanstalk Deployment Modes.txt:13: You have blue/green, where you create a whole new environment altogether, and then you switch over when ready.
- 187_Beanstalk Deployment Modes.txt:16: Canary testing is when you send a small percentage of the application traffic to a brand new deployment.
- 187_Beanstalk Deployment Modes.txt:29: I think it's great for when you have quick iterations and development environments when you wanna deploy your code fast and quickly, and you don't really care about downtime.
- 187_Beanstalk Deployment Modes.txt:88: When it's happy, it's going to sort of merge the ASG with a temporary ASG.
- 187_Beanstalk Deployment Modes.txt:91: And when all of this is done and the temporary ASG is empty, then we have the current ASG that will terminate all the v1 applications, while the v2 applications are still there.
- 187_Beanstalk Deployment Modes.txt:99: And then we can use something like Route 53, for example, to prevent the traffic from going into the two directions.
- 187_Beanstalk Deployment Modes.txt:101: And then when we're happy using the Elastic Beanstalk console, you can swap URLs, when done, with a test environment.
- 187_Beanstalk Deployment Modes.txt:110: And so when you're happy where you're testing, when you measured everything you want with your v2 environment and you think you got it, then you basically shut down the blue environment and swipe the URL to make the green be the main environment.
- 188_Beanstalk Deployment Modes Hands On.txt:15: So the batch size could be either a percentage, for example, 30% of instances at a time or fixed, for example, one instance at a time.
- 188_Beanstalk Deployment Modes Hands On.txt:29: So this is when you actually are updating your EC2 instances internally or making VPC configurations or whatever, that should make your instances being replaced.
- 188_Beanstalk Deployment Modes Hands On.txt:45: We can set the style, but we can also, for example, set the text, for example, who says congratulations.
- 188_Beanstalk Deployment Modes Hands On.txt:61: So under Beanstalk and then there is nodejs-v2-blue.zip and we can have a version label, for example, I'll call this one MyApplication-Blue.
- 188_Beanstalk Deployment Modes Hands On.txt:63: So by default it's set to immutable, because that's what we have currently set up, but you can override it if you wanted to with other kind of deployments, for example, all at once, rolling, or rolling with additional batch.
- 188_Beanstalk Deployment Modes Hands On.txt:85: And the reason we would do so is, for example, you take this environment, for example, prod.
- 190_Beanstalk Lifecycle Policy Overview + Hands On.txt:4: This lifecycle policy will send hands-on, can be based on time to remove older versions or it can be based on space when you have too many versions you just phase out the old ones.
- 191_Beanstalk Extensions.txt:2: So, when we create a zip file it contains your code that must be deployed to Elastic Beanstalk, but we can also add EB extensions.
- 191_Beanstalk Extensions.txt:8: For example, logging.config, okay?
- 191_Beanstalk Extensions.txt:13: So that means that if you create, for example, an ElastiCache as part of your Elastic Beanstalk environment and then you delete your Elastic Beanstalk environment, then your ElastiCache will go away as well.
- 191_Beanstalk Extensions.txt:25: We can have the DB_URL to be equal to this URL, and the DB_USER to have, for example, the value of username.

### 5. Constraints / Limitations
- 198_S3 Batch Encryption.txt:4: To get the list of all the objects we must encrypt, we must first get the list of all the objects and their associated metadata.
- 198_S3 Batch Encryption.txt:6: Then we want to filter that list and only return on the encrypted objects.
- 198_S3 Batch Encryption.txt:10: Now you must note that to be able to encrypt all the objects, of course the S3 Batch operations job must have access to the S3 Bucket and of course the KMS key to perform that encryption.
- 184_Elastic Beanstalk Overview (High level).txt:14: And the only responsibility for you as a developer is going to be the code itself, okay?
- 184_Elastic Beanstalk Overview (High level).txt:21: So you can only have one application version at a time in an environment, where we can see we can actually update an application version within an environment from version one to version two.
- 184_Elastic Beanstalk Overview (High level).txt:29: So the idea is that on Beanstalk you should be able to deploy pretty much anything.
- 185_Beanstalk First Environment.txt:5: But we will only do web server.
- 185_Beanstalk First Environment.txt:13: You may see something different than me, but by using the latest defaults, you should be fine and good to go.
- 185_Beanstalk First Environment.txt:62: And if I go under auto scaling groups, we can see that an auto scaling group was created, and this auto scaling group, under Instance Management, is managing my only EC2 instance.
- 186_Beanstalk Second Environment.txt:20: Now, of course, there are ways around it, you can snapshot your database, and then restore it at a later stage, but it's something that you should know about.
- 186_Beanstalk Second Environment.txt:68: And from that point onwards, I know that everything is configured the way it should be.
- 187_Beanstalk Deployment Modes.txt:28: The application, though, has downtime, because you can see in the middle they're all gray, and so they can't serve any traffic.
- 187_Beanstalk Deployment Modes.txt:52: Before, at some point, we were only running two instances out of four.
- 187_Beanstalk Deployment Modes.txt:108: So just keep most of the traffic going to the instances we know work, and maybe only 10% of the traffic to the green environment, just to test it out and make sure it's working and the users aren't having any problems.
- 187_Beanstalk Deployment Modes.txt:131: So if you understood this lecture, this table should make sense to you.
- 187_Beanstalk Deployment Modes.txt:134: You should be a deployment expert now, and I will see you in the next lecture.
- 188_Beanstalk Deployment Modes Hands On.txt:29: So this is when you actually are updating your EC2 instances internally or making VPC configurations or whatever, that should make your instances being replaced.
- 190_Beanstalk Lifecycle Policy Overview + Hands On.txt:19: So if you go into settings, you can activate a application lifecycle policy and if you activate it, you can either limit the application versions by counts and saying you want a maximum of 200 application versions or you can limit it by age and say, I only want the 180 days of versions that have been used.
- 191_Beanstalk Extensions.txt:2: So, when we create a zip file it contains your code that must be deployed to Elastic Beanstalk, but we can also add EB extensions.
- 191_Beanstalk Extensions.txt:4: So, the requirements that all these configuration files must be in the .ebextensions/ directory in the root of your source code.
- 191_Beanstalk Extensions.txt:6: It must be in the YAML or JSON formats.
- 191_Beanstalk Extensions.txt:7: And even though it is in YAML or JSON format, the extension of that file must end with .config.
- 191_Beanstalk Extensions.txt:11: And you have the ability to add resources using the EB extensions, such as RDS, ElastiCache, DynamoDB and all the other things that you cannot necessarily set through the Elastic Beanstalk console.
- 191_Beanstalk Extensions.txt:32: And so, this new version is going to be deployed directly to my single EC2 instance, which should be rather quick, but I'm going to pause the video until this is done.
- 193_Beanstalk Cloning.txt:10: And as you can see, the options are quite limited.
- 194_Beanstalk Migrations.txt:2: So the first one is a Load Balancer, So after you create a Beanstalk environment you cannot change the Elastic Load Balancer type, only its configuration.
- 194_Beanstalk Migrations.txt:3: So we've seen this before If you create a Classic Load Balancer you can only edit the classical bouncer setting, you cannot upgrade it to an Application Load Balancer.
- 194_Beanstalk Migrations.txt:7: And so we can't use the clone feature we just saw in the past lecture because the clone feature would copy the exact same Load Balancer type and configuration.
- 367_High Performance Computing (HPC) on AWS.txt:4: Because you can create a very high number of resources in no time, and you can speed up the time to results by adding more resources and you only pay for what you've used.
- 367_High Performance Computing (HPC) on AWS.txt:38: And this is an improved ENA, dedicated for HPC for High Performance Computing, and it only works for Linux, and it's great when you have inter-node communication or tightly coupled workload.
- 367_High Performance Computing (HPC) on AWS.txt:71: And it can come up in the exam that you must use parallel cluster alongside EFA, because there is a perameter in the text files to enable elastic fabric adapters.
- 380_AWS Batch.txt:16: So this should be more than enough for going to the exam, but I just want to show you a small diagram that I made.
- 380_AWS Batch.txt:24: So Lambda has a time limit, it's 15 minutes, and you only get access to a few programming languages.
- 380_AWS Batch.txt:25: On top of it, you have limited temporary disk space if you want to run your jobs, and it's going to be serverless, whereas batch is very different.
- 380_AWS Batch.txt:26: So batch has no time limit, because it relies on EC2 instances.
- 045_High Performance Computing (HPC).txt:6: And you only pay for what you've used.
- 045_High Performance Computing (HPC).txt:45: And it only works for Linux.

### 6. Patterns / Architectures
- 184_Elastic Beanstalk Overview (High level).txt:2: So so far in this course when we've been deploying an application, we've had the same architecture.
- 184_Elastic Beanstalk Overview (High level).txt:5: So if there are so many applications for us to deploy and they follow the same architecture, it may be a pain to recreate it every single time.
- 184_Elastic Beanstalk Overview (High level).txt:8: So as we can see, most of the web applications will have the same architecture with a load balancer and an auto scaling group and as a developer, all I want to do is for my code run, okay?
- 184_Elastic Beanstalk Overview (High level).txt:32: This is the traditional architecture that we know, where we have a load balancer and then it's sending traffic to an auto scaling group that has multiple EC2 instances that are going to be your web server.
- 184_Elastic Beanstalk Overview (High level).txt:33: This is the architecture number one with Beanstalk and the architecture number two with Beanstalk is going to be around a worker environment.

## Step 3 - Deep Expansion (Compute Concepts)

### Core Services in This Topic
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS DataSync: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Snow Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS X-Ray: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Compute Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Compute Platform Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Container Runtime Operations: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Deployment Automation: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Elasticity and Availability: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Operational Guardrails: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Serverless Execution Model: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Virtual machine compute | EC2 | Azure Virtual Machines | Compute Engine |
| Managed load balancing | ELB | Azure Load Balancer / Application Gateway | Cloud Load Balancing |
| Container orchestration | ECS/EKS/Fargate | AKS / Container Apps | GKE / Cloud Run |
| Serverless functions | Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Infrastructure as code | CloudFormation / CDK / SAM | ARM / Bicep / Azure DevOps patterns | Deployment Manager / Terraform-centered workflows |
| Specialized compute | Batch / HPC / Outposts | Batch / HPC / Azure Stack | Batch / HPC / Anthos edge patterns |

### Trade-offs and Decision Notes
- Compute Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Workload placement starts with the runtime contract: VM, container, serverless, or managed platform.
- Availability and elasticity are architecture properties, not post-deployment add-ons.

### Phase 2 - Core Services
- Implement scaling, traffic distribution, and deployment controls before optimizing for convenience.
- Treat execution roles, runtime networking, and image provenance as baseline compute controls.

### Phase 3 - Advanced Patterns
- Use event-driven and platform-specific deployment patterns to reduce operational drag at scale.
- Model specialized compute separately when batch, HPC, or platform abstractions change failure behavior.

### Phase 4 - System Design
- Reference architecture: ingress and workload tiers, deployment control plane, and runtime observability loop.
- Scaling considerations: noisy neighbors, placement constraints, rollout safety, and regional boundaries.
- Cost considerations: idle VM waste, overprovisioned scaling floors, and mismatched platform abstractions.
