# 03_Containers_Orchestration.md

## Scope
- Topic: Container platforms, registries, orchestration, and runtime placement
- Files processed: 45
- Extracted non-empty transcript lines: 2832
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Compute Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Compute: Containers Orchestration)

This section is the study-first architecture guide for container platforms, registries, orchestration, and runtime placement.

### Phase 1 - Foundations

#### Module: Containers Orchestration Mental Model
- Use containers orchestration decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Containers Orchestration Mental Model
- Primary transcript files:
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/210_AWS App2Container.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/167_Docker Introduction.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/198_Docker Introduction.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/049_Amazon ECS - Elastic Container Service.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/182_Amazon EKS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/206_Amazon EKS - Overview.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/051_Amazon EKS - Elastic Kubernetes Service.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/168_Amazon ECS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/199_Amazon ECS.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/169_Creating ECS Cluster - Hands On.txt
- Top concept clusters from transcript metadata:
- Container Runtime Operations
- Compute Platform Design
- Serverless Execution Model
- Elasticity and Availability
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 45
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2832
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- So, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- It will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- And Fargate works both with ECS and EKS and we'll do a deep dive of Fargate in this section.
- So even though you can auto scale your ECS service at the test level and it works really great, if that ECS service is not running on Fargate but it is running instead on EC2 instances, then you should make sure you also auto scale your EC2 instances to add more capacity to your ECS cluster.
- And finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- So the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- That means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- This is only working for when you use ECS launched on EC2 instances, not for Fargate, because for Fargate AWS figures out for you where to start the container and you don't manage any backend instances.
- Now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- So it helps you focus on building the app rather than setting up the infrastructure and all the complexity of the infrastructure such as ECS, VPC, ELB, ECR, and so on, is done for you by Copilot.
- Now, this rule is going to run ECS tasks for us in Fargate, and so that means that every 1 hour, a new task will be created in our Fargate cluster, and the task can do whatever we want.

##### Polished Architect Notes
- Transcript signals that so, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- Transcript signals that it will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Transcript signals that and Fargate works both with ECS and EKS and we'll do a deep dive of Fargate in this section.
- Transcript signals that so even though you can auto scale your ECS service at the test level and it works really great, if that ECS service is not running on Fargate but it is running instead on EC2 instances, then you should make sure you also auto scale your EC2 instances to add more capacity to your ECS cluster.
- Transcript signals that and finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- Transcript signals that so the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- Transcript signals that that means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Transcript signals that this is only working for when you use ECS launched on EC2 instances, not for Fargate, because for Fargate AWS figures out for you where to start the container and you don't manage any backend instances.
- Transcript signals that now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- Transcript signals that so EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Transcript signals that so it helps you focus on building the app rather than setting up the infrastructure and all the complexity of the infrastructure such as ECS, VPC, ELB, ECR, and so on, is done for you by Copilot.
- Transcript signals that now, this rule is going to run ECS tasks for us in Fargate, and so that means that every 1 hour, a new task will be created in our Fargate cluster, and the task can do whatever we want.

##### Architect Synthesis (Transcript-Derived)
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Serverless Execution Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Elasticity and Availability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- Design implication: it will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Design implication: and Fargate works both with ECS and EKS and we'll do a deep dive of Fargate in this section.
- Design implication: so even though you can auto scale your ECS service at the test level and it works really great, if that ECS service is not running on Fargate but it is running instead on EC2 instances, then you should make sure you also auto scale your EC2 instances to add more capacity to your ECS cluster.
- Design implication: and finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/182_Amazon EKS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/206_Amazon EKS - Overview.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/051_Amazon EKS - Elastic Kubernetes Service.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/169_Creating ECS Cluster - Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/200_Creating ECS Cluster - Hands On.txt
- outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/174_Amazon ECS Task Definitions - Deep Dive.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/170_Creating ECS Service - Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/201_Creating ECS Service - Hands On.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/049_Amazon ECS - Elastic Container Service.txt
- Top concept clusters from transcript metadata:
- Container Runtime Operations
- Compute Platform Design
- Serverless Execution Model
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 45
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2832
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- And finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- That means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Or, for Fargate task, then you use ephemeral storage, and the data is tied to the container, a lifecycle using them.
- And what is the task size for our Fargate container?
- And if you wanna perform rolling upgrades, you can do it, because now you have many Docker containers, ECS tasks, on the one instance, and therefore, you can take them down one by one without impacting your overall app uptime.
- For example, we can create an ECS task role with access to Amazon S3, and therefore our task, our Docker container, our program can, for example, do every 1 hour some batch processing against some files in Amazon S3.
- So the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- This is only working for when you use ECS launched on EC2 instances, not for Fargate, because for Fargate AWS figures out for you where to start the container and you don't manage any backend instances.
- So you define them in JSON form but through the console there is a UI to help you create the JSON, and the task definition tells the ECS service, how to run a or multiple Docker containers on ECS.
- Now, if you set a container as essential that means that if the container fails for whatever reason and is killed, then because this's an essential container all the task is going to be stopped.

##### Polished Architect Notes
- Transcript signals that and finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- Transcript signals that that means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Transcript signals that now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- Transcript signals that so EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Transcript signals that or, for Fargate task, then you use ephemeral storage, and the data is tied to the container, a lifecycle using them.
- Transcript signals that and what is the task size for our Fargate container?
- Transcript signals that and if you wanna perform rolling upgrades, you can do it, because now you have many Docker containers, ECS tasks, on the one instance, and therefore, you can take them down one by one without impacting your overall app uptime.
- Transcript signals that for example, we can create an ECS task role with access to Amazon S3, and therefore our task, our Docker container, our program can, for example, do every 1 hour some batch processing against some files in Amazon S3.
- Transcript signals that so the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- Transcript signals that this is only working for when you use ECS launched on EC2 instances, not for Fargate, because for Fargate AWS figures out for you where to start the container and you don't manage any backend instances.
- Transcript signals that so you define them in JSON form but through the console there is a UI to help you create the JSON, and the task definition tells the ECS service, how to run a or multiple Docker containers on ECS.
- Transcript signals that now, if you set a container as essential that means that if the container fails for whatever reason and is killed, then because this's an essential container all the task is going to be stopped.

##### Architect Synthesis (Transcript-Derived)
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Serverless Execution Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- Design implication: that means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Design implication: now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- Design implication: so EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Design implication: or, for Fargate task, then you use ephemeral storage, and the data is tied to the container, a lifecycle using them.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/210_AWS App2Container.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/169_Creating ECS Cluster - Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/200_Creating ECS Cluster - Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/182_Amazon EKS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/206_Amazon EKS - Overview.txt
- outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/051_Amazon EKS - Elastic Kubernetes Service.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/173_Amazon ECS - Solutions Architectures.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/203_Amazon ECS - Solutions Architectures.txt
- outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/168_Amazon ECS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/199_Amazon ECS.txt
- Top concept clusters from transcript metadata:
- Container Runtime Operations
- Compute Platform Design
- Serverless Execution Model
- Operational Guardrails
- Elasticity and Availability
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 45
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2832
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- It will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- That means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- And if I go back into my Amazon ECS cluster, it is registered as a container instance that is currently, of course, running 0 tasks, and has 1024 CPU available, and 982 memory available.
- Now, this rule is going to run ECS tasks for us in Fargate, and so that means that every 1 hour, a new task will be created in our Fargate cluster, and the task can do whatever we want.
- So, in the Fargate type, if we have an ECS Cluster we just create task definition to define our ECS tasks.
- And when you launch Docker Containers on AWS, you are launching what's called an ECS Task on ECS Cluster.
- That means that we can launch Fargate task onto our ECS cluster.
- So even though you can auto scale your ECS service at the test level and it works really great, if that ECS service is not running on Fargate but it is running instead on EC2 instances, then you should make sure you also auto scale your EC2 instances to add more capacity to your ECS cluster.
- And optionally, what you can also do is you could have your own security group, and when creating the EKS cluster, you may provide that security group as one of the input, and then EKS will also attach that security group to the EKS owned ENIs.
- So you can see that we have an app here where we have an ECS cluster, a load balancer, a bunch of security groups, and it's very important for you to look at the resources and understand what has been created, it's great for your learning.

##### Polished Architect Notes
- Transcript signals that so, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- Transcript signals that it will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Transcript signals that that means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Transcript signals that so EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Transcript signals that and if I go back into my Amazon ECS cluster, it is registered as a container instance that is currently, of course, running 0 tasks, and has 1024 CPU available, and 982 memory available.
- Transcript signals that now, this rule is going to run ECS tasks for us in Fargate, and so that means that every 1 hour, a new task will be created in our Fargate cluster, and the task can do whatever we want.
- Transcript signals that so, in the Fargate type, if we have an ECS Cluster we just create task definition to define our ECS tasks.
- Transcript signals that and when you launch Docker Containers on AWS, you are launching what's called an ECS Task on ECS Cluster.
- Transcript signals that that means that we can launch Fargate task onto our ECS cluster.
- Transcript signals that so even though you can auto scale your ECS service at the test level and it works really great, if that ECS service is not running on Fargate but it is running instead on EC2 instances, then you should make sure you also auto scale your EC2 instances to add more capacity to your ECS cluster.
- Transcript signals that and optionally, what you can also do is you could have your own security group, and when creating the EKS cluster, you may provide that security group as one of the input, and then EKS will also attach that security group to the EKS owned ENIs.
- Transcript signals that so you can see that we have an app here where we have an ECS cluster, a load balancer, a bunch of security groups, and it's very important for you to look at the resources and understand what has been created, it's great for your learning.

##### Architect Synthesis (Transcript-Derived)
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Serverless Execution Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Elasticity and Availability as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- Design implication: it will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Design implication: that means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Design implication: so EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Design implication: and if I go back into my Amazon ECS cluster, it is registered as a container instance that is currently, of course, running 0 tasks, and has 1024 CPU available, and 982 memory available.

### Phase 2 - Core Services
- Amazon EKS should be understood in terms of request path, control plane, and operational boundary.
- AWS Config should be understood in terms of request path, control plane, and operational boundary.
- Elastic Load Balancing should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Compute Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Compute Platform Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Container Runtime Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Deployment Automation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Elasticity and Availability becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design containers orchestration with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when containers orchestration decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: It will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Signal 2: So the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- Signal 3: That means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Signal 4: So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Signal 5: Transcript signals that it will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Signal 6: Transcript signals that so the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- Signal 7: Transcript signals that that means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Signal 8: Transcript signals that so EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Signal 9: Design implication: it will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Signal 10: For example, we can create an ECS task role with access to Amazon S3, and therefore our task, our Docker container, our program can, for example, do every 1 hour some batch processing against some files in Amazon S3.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for Container platforms, registries, orchestration, and runtime placement
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

### Activity 2: Amazon VPC Lab for Container platforms, registries, orchestration, and runtime placement
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

### Activity 3: Elastic Load Balancing Lab for Container platforms, registries, orchestration, and runtime placement
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

### Activity 4: AWS Lambda Lab for Container platforms, registries, orchestration, and runtime placement
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

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study Container platforms, registries, orchestration, and runtime placement in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |

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

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Hello and welcome to this section that is Amazon EKS networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, in this section, we are going to talk everything about the Elastic Kubernetes Service Networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And in your exam, you can expect couple of questions related to EKS networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, before we dive deep into this topic, I just wanted to set the right expectations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, our focus is mainly on the networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But when it comes to the Kubernetes, it is also difficult to just talk about the networking because without understanding the Kubernetes core components, it's difficult to relate how networking works in Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for me personally, it's been a challenge to draw that line.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with respect to the understanding of Kubernetes I will try to keep some balance and I hope that is OK with you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So as I said in this section, we are going to talk about the Kubernetes and EKS networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And at this point, you are expected to know what are containers, what are microservices and what is Kubernetes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a prerequisite and this is not a Kubernetes course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I expect that you already know these things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if not, I have provided a separate video which you can go and check and then you can start with this section.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we will cover Kubernetes open source architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we'll talk about the Kubernetes in general without AWS context.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And then we will see how things work in EKS that is Amazon's Elastic Kubernetes service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And within the EKS, we will see EKS architecture that is control plane and data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Then we will see EKS cluster networking as in how AWS manages the control plane and you manage the data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Then we will see the pod networking within the EKS, which means how pods communicate with each other and how can you secure that communication..
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Then we will see use of security groups with EKS ports and this is relatively a new feature that AWS released.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And then one of the most important topic is exposing EKS services using Amazon Load-Balancer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So please make sure that you understand this topic well, and then we will see some advanced features of EKS networking which comes under EKS custom networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And then we will wrap up this section with EKS networking summary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you are good with that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And as I said, if you don't know about what are containers, microservices, then you can check this video out there.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I have also provided the link to that in the description.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But if you already know about the containers and microservices and in general, what is Kubernetes, then you can just start with this section.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's get started with Kubernetes Architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hello, and let's first see the Kubernetes architecture, and here we are going to talk about Kubernetes open source.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, at this moment, I hope that you already know what are containers, what are microservices, and why Kubernetes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if not, I recommend you to watch the video for which I have already provided you the link.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so in this lecture, let's talk about the Kubernetes building blocks, because if you talk about Amazon EK Service, it is nothing but the wrapper over open source Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's important for us to first understand the Kubernetes architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, as I said earlier, the purpose of this course is to focus only on the networking part, but I think it's essential to know all those core components so that when we talk about the Kubernetes networking, you understand what those components are.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, originally, Kubernetes was developed at Google.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then Google made it open sourced, and now Kubernetes as a project is maintained by CNCF, which is Cloud Native Computing Foundation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, CNCF was founded in 2015, and the purpose was to really innovate in the container space.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: CNCF has a lot of projects, but Kubernetes is one of the top project which CNCF maintains as of today.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, with that, let's start with Kubernetes building blocks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now here we are talking about open source Kubernetes to start with, and then later we'll get into the EKS part of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, if you look at Kubernetes from the top, Kubernetes is deployed as a cluster, and this cluster consists of control plane and a data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you might have guessed, control plane is something which controls what happens in the data plane, and your actual applications runs in this data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So control plane consists of master nodes, and these nodes could be one or more, but for high availability of those all control processes, it is recommended that you always run multiple nodes in the control plane.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, data plane consists of something called nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can treat them as like hosts, so that when you deploy your application, they are spread across multiple nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the nodes in this data planes are called worker nodes, and the nodes in the control plane are called master nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, when it comes to hosting the application, these applications are hosted on the nodes, but they're hosted as something called pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Now, pods are nothing but a smallest deployment unit in Kubernetes.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: (none explicit)
- Key Insights: Now, you always heard about the containers, but then Kubernetes has the deployment unit as pod.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Platform automation signal.

Line 22:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, one pod consists of one or more containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So basically you could have multiple containers inside one pod.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But for Kubernetes, it always deploys pod, not the container.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 25:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it's very much possible that you just have one container in the pod, but more often or not, you could have more than one container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Maybe one application container and supporting databases or cache.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this kind of pods you can build, so that application can work efficiently.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So pod ultimately represents a group of one or more application containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is an high level architecture of the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, let's see which components lies in the control plane as well as in the data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a closer look at the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, on the left side, you have control plane, and on the right side you have data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there are other components on the right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can see here this is a cloud control manager, and we'll talk about that as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, important thing here to know that when you are sitting outside of the cluster, of course, as a person, you would want to interact with the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how does admin talk to the Kubernetes cluster?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Kubernetes exposes the Kubernetes APIs from the API server, which is hosted here, and then admin will use either Kubernetes APIs or there are some command line tools like kubectl, which can be used to communicate with the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And we'll see the entire deployment flow at high level as we understand more about the control plane and the data plane components.
- Hidden/Implicit Meaning: Platform automation signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there are a lot of services or objects in the Kubernetes term, running in the control plane and the data plane, and let's now understand those components.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So very first is kube-apiserver.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as the name suggests, kube-apiserver exposes the Kubernetes APIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means if you want to communicate with Kubernetes cluster from outside as an admin, then you make an contact with API server, and then API server will talk to the data plane to make those adjustment to change the state of Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a front-end for Kubernetes control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Second is etcd, also called ETCD.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, this is a key value store as you know.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Right now, this key value store maintains the state of your cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: For example, if you're deploying, say, different pods, and what are the configuration of those pods, you are exposing those pods as a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, what are the ports on which these services will be accessible?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What are the port on which the pods will be accessible?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: This is all the configuration information that you provide in the form of manifest file and all this configuration information, and you can say the state of your entire cluster is maintained in the key value store as in the etcd.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it maintains all your cluster data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So whenever some changes you have to make, API call will make those changes persistent into the etcd key value store.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And also if you want to get the state of your cluster, API server will get that state from the cluster and give it as an output on the command line or in the UI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So etcd maintains the cluster information into the persistent store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Kube-scheduler, as the name suggests, it actually keeps looking for the right place for your pod on the nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So maybe there are some nodes on which there is less load, so kube-scheduler will decide how to launch this particular pod on this particular node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And there are a lot of parameters, not just the compute hardware, based on which it takes decision.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also change that behavior based on node affinity and tented node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are many features in Kubernetes with which you can decide this pod should go to this node or that node.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Maybe some nodes have GPUs and your containers need GPU.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you can also change the behavior, how scheduler will schedule that pod to be running on the nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's the job of a kube-scheduler.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, there is kube-controller-manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, kube-controller-manager consists of multiple controller processes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, as the name suggests, controller process does some job, for example, if you want to schedule a job to be running at certain time of the day.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So job controller will do that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, if one of the node goes down, then the node controller will identify that the node has went down and it'll make sure that another node is spun up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, replication controller, if there is one replica of the pod and you want to make it clear replicas, for example, then the replication controller will do that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Endslice controller, it basically enables the services to the pod communication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So whenever you expose your pods as a service, then there is a networking component called kube-proxy, which does that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then EndpointSlice controller will make sure that this communication or link is established between the service and the pod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, similarly, there is also cloud-controller-manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, Kubernetes can be done anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It can be done on premises, and it can be run in the cloud as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Kubernetes has extensible architecture, which means you can integrate Kubernetes with the cloud resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: For example, Kubernetes has a load balancer as a service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 77:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: But then you can use instead, cloud provider's load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 78:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: For example, you can use application load balancer, or network load balancer in Kubernetes.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 79:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now, Kubernetes itself doesn't know how to create application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for that you have the cloud-controller-manager, through which you can extend the Kubernetes capabilities to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So AWS will provide AWS cloud-controller-manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Similarly, other cloud provider will develop their own providers, and you just plug it into the Kubernetes and then it can provision those resources for you when you make some deployments into the Kubernetes.
- Hidden/Implicit Meaning: Platform automation signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So likewise, these are the important processes on the control plane side, and this is very extensible, as I said.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can put as many add-ons, which are available, open source or third-party developed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But these are the core Kubernetes control plane component.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, let's move to the data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you know, data plane consists of nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Nodes are nothing but the hosts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then nodes have essentially three important components running.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: As you can see there, nodes host the pods, pods are nothing but one or more containers, and which essentially means it runs your application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then every node has something called kubelet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What is kubelet?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's an agent which runs on every node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And kubelet is a agent which takes command from the API server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, API server says, "Run this pod." Now how API server communicates with this node?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because there is a kubelet running on that node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's an agent that runs on each node in the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it makes sure that the containers are running in a pod.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, kubelet also register the state of your pods to the API server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Suppose one of the pod goes down, then kubelet will report it to the API server, and API server will then add that to the ETCD, likewise.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Kube-proxy, now, this is very important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Kube-proxy basically enables the network communication to the pods from network station, inside or outside of your cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 103:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What it means that pods can communicate with each other, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And when you want to expose pod as a service, because maybe there are multiple pods for the same service, of course, in order to scale that, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 105:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can expose your pod as a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So kube-proxy enables that creation of the service basically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: And then you can also expose your services to the external world, similar to the load balancer and EC2 machine behind the load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 108:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: You can also have your pods behind the load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So kube-proxy is the native Kubernetes networking component, which enables all this communication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Finally, container runtime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 111:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Because you're running containers, you need a container runtime engine inside this node, for example, if you're using Docker, then you would be having Docker engine.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 112:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, Docker underlying use Containerd as a container runtime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 113:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So in Kubernetes, on every node, you need to have the similar container runtime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 114:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, Kubernetes supports a lot of container runtimes, not just Containerd, but it also supports CRI based, or CRI-based container runtime engine.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 115:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: CRI is nothing but Container Runtime Interface.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then there are many implementation of CRI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Kubernetes can very well use those as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 118:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But as of today, Containerd is the most popular one, which is used by most of the leading container technologies.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's what the data plane looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, let's look at the process when you want to launch any pods, or say application, inside the Kubernetes cluster, then what that flow will look like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, there is a developer on the left side here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have your Kubernetes cluster on the right side, and there are users of the application sitting here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So developer, what it will do, is write a code for your application, of course, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This code will then be unit tested, compile, build, which ultimately produce some artifacts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So maybe if it's a Java application, it could be JAR or WAR file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If it's a C or C-plus-plus code, then it could be some binaries and libraries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's an artifact which will ultimately be deployed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you have DockerFile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, DockerFile basically builds the Docker image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, if you are aware of the Docker, you must very well understand that, but ultimately, from the instructions of the DockerFile, where my code is or my deployables are, and which port this container will be running, or all this information is there in the DockerFile.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And basically DockerFile takes those instruction, takes your code artifacts, and build the Docker image out of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It will install required libraries, binary, everything, and it will create a DockerFile out of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you run the Docker build command, and then it will create the image, and then you push that image to the registry.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So Docker Hub is a public registry that you can use, or if you're operating in AWS, then you can use Amazon ECR, Elastic Container Registry.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are many such registries available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 136:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But ultimately you push your image to the container registry.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you build the image, and now you want to deploy this image into the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Now, for that developer or maybe the ops person would write a deployment file, also called as Kubernetes manifest file.
- Hidden/Implicit Meaning: Platform automation signal.

Line 139:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a declarative file in the YAML format.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 140:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Basically tells Kubernetes how to deploy this application to the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 141:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So somebody will write this deployment manifest file, which will tell Kubernetes control plane how to deploy this application.
- Hidden/Implicit Meaning: Platform automation signal.

Line 142:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to tell Kubernetes API, you use some kind of tools.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 143:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Either you can use Kubernetes API, which are available over HTTPS, or Kubernetes has a command line tool call kubectl, or kubectl, whatever you call it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 144:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So kubectl will take your deployment file and it will talk to your API server.
- Hidden/Implicit Meaning: Platform automation signal.

Line 145:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Of course, there will be authentication, but we are not getting into that as of now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 146:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So with kubectl and Deployment file, it will reach to the API server as an instruction, and API server will then communicate with control manager ETCD scheduler, and if required, to the cloud-controller-manager to take a decision what to do about this deployment.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 147:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it will make those calls, and then finally it will talk to the kubelet to deploy this to one of the node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 148:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, kubelet receives those instruction.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 149:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: What kubelet will do, kubelet will communicate with the container runtime engine.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 150:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: For example, Containerd in terms, in case of Docker, container runtime engine will understand that there is one Docker image, which is available in Docker Hub, which needs to be deployed as a container or as a pod.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 151:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So container runtime engine will pull that image from the Docker Hub.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 152:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, for that container runtime engine or a node would require permissions, all that would be a part of authentication and authorization.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 153:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But ultimately it will get that image and then it will run it as a pod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 154:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now, once the pod is running, of course it will be exposed to the external world using the kube-proxy, or load balancer service, but some kind of service will be created and then the end users could access those over this service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 155:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is how you deploy the application, and this application is available to the end user.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 156:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this very high level flow, and there are many steps in between which are skipped, but hopefully you would understand how typically things work in Kubernetes world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 157:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 158:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For Kubernetes architecture, I hope it is clear that Kubernetes has control plane and data plane, and what are the components of those control plane and data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 159:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: With that, now, we'll move to the EKS architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 160:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: EKS is nothing but the Elastic Kubernetes Service in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 161:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it is very much conformant to the open source Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 162:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we'll see how the architecture of the Kubernetes cluster looks into the AWS world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 163:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 164:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in the earlier lecture, we saw the components of Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Essentially we saw the control plane, and data plane, and what are the important services which run inside the control plane, and data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EKS
- Key Insights: Now, when it comes to the EKS, of course architecture remains the same, but the responsibility of control plane, and data plane, changes.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you might have guessed, it makes more sense that AWS takes care of the difficult thing, that is managing the control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you take care of the data plane, where you decide which kind of nodes you want to run, how many ports you want to run.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That is all part of your data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the architecture is similar to what we saw earlier.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: As you can see here, there is a control plane on the top, and it is across three availability zones, of course, for high availability, and resiliency.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this control plane is completely taken care of by AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And below is the data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: And then you can decide how many availability zones you want to use, and then you can spin up those nodes across multiple availability zones.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is the Kubernetes architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS
- Key Insights: And now if you look at the EKS, so you don't care about the control plane high availability.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You know that there are different components like for example, APIs, server, SD, data store cube controller manager, and all this has been taken care of.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So with EKS, you get a managed control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, when it comes to the data plane, there are multiple options for the way you would launch your nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: Amazon EC2
- Key Insights: Now these nodes are typically your EC2 machines, but then Kubernetes also offers you serverless compute options in the form of AWS Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, when it comes to the EC2 options, there are two ways in which you can launch this EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One is self-managed nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means you launch this EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: You can put those into the auto-scaling group, but then you decide which AMIs to use, which instance types to use.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Once these instances are launched, then you want to make sure that the instance gets registered into the Kubernetes cluster as a node.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for that you need to run a few commands.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if for some reason, the instance is unhealthy, then you would want to take this out of your cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all this has to be managed by you, if you're using self-managed nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, EKS has simplified this operation, in the form of managed node groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means provisioning the nodes, and then adding it to the Kubernetes cluster, as well as draining those nodes, in case you want to reduce the capacity, or adding new nodes when you want to increase the capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All this has been taken care of, if you're using manage node groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, node groups are nothing but a collection of EC2 machines, whether self-managed, or managed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But then underlying compute capacity is provided by EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: There is a third option, which is AWS Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: Now, as you already know, AWS Fargate is a serverless compute offering from AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means there are no machines to manage for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now with respect to EKS, you just define your pods, and container capacity, that they need, and then Fargate will provision the underlying compute capacity for running those containers, and the pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So that's a very brief about EKS architecture, very similar to the Kubernetes architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then now we will focus more on the networking part.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you know that AWS has VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means your cluster will be inside a VPC, or will be launching this data plane nodes inside a VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's interesting to see how these nodes communicate, how these ports communicate, how you expose these services outside of the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all that will be covered in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So stay tuned, and thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, "Amazon EKS Cluster Networking." So in the earlier lecture, we understood the EKS architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We know that control plane is managed by AWS, and data plane is managed by the customer, that means by you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in this lecture, let's understand the cluster networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So far, we are not talking about the EKS or Kubernetes pod-level networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means how pod communicates with each other or how to expose pod services to the outside world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That will be covered in the following lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is about cluster networking and not really about the pod networking, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's start with EKS Cluster Networking first.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: EKS has the control plane which resides in AWS managed VPC as you can see here on the top.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the data plane, which means the worker nodes are launched in the customer VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a VPC which you manage and this is inside your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So control plane is launched in AWS managed account and VPC, and data plane nodes are launched in a customer account and VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the question is, if that is the case, then how does the control plane talks to the data plane?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Of course, there should be some mechanism and you are already aware of this if you know the requester managed ENIs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So if you worked with services like Amazon AppStream or Workspaces, or for that matter, database service that is RDS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Operational Guardrails
- Services: Amazon RDS
- Key Insights: Now RDS databases are managed by AWS, but still you can control the security group for your database.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: You can configure those rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how it is possible?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, behalf of AWS service, it creates ENI into your VPC and then it gives you control over that ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then security groups are attached to the ENI, and that's where you get control of managing the traffic for those ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations, Deployment Automation, Elasticity and Availability
- Services: AWS SAM, Amazon EKS
- Key Insights: In the same fashion, EKS control plane provisions the ENIs, typically 2 to 4 ENIs depending on how many availability zones you use into your customer VPC.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this ENI enables the communication from control plane to the data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the traffic from control plane to the data plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then also sometimes your data plane needs to communicate to the control plane as well, and we'll see how that communication happens.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are different ways and we'll cover that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: But here you have ENIs, which are owned by the EKS, but they're provisioned inside the customer VPC subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now if you look at this architecture, typically it is advised that for this ENIs, you should have a dedicated subnet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you could very well use these worker node subnets to provision these ENIs, but you know, it's always better to have better control over those subnets so that you can define the NACL rules, you can have the routing rules for your subnet and then you dedicate these subnets only for these ENIs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And then EKS doesn't need lot of IP addresses from this subnet, only six IPs are required, but you know, in AWS you can create the smallest subnet as /28, which gives you 16 IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's recommended that you have the smallest subnets allocated for these ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Now further, when you create EKS cluster, it also creates security group and these security groups are attached to these ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now this security groups are also attached to the nodes, if you are creating these nodes as a part of managed node group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And you can see here, there are a couple of rules in this security group, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So there is inbound rule which allows all protocol on all ports and it references to the self, that means wherever this security group is attached, the traffic can flow through all those ENIs to each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then there is outbound rule which allows the outbound connection to IPv4 and IPv6 addresses, all the addresses, and then you can very well change those as you need.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: But this is a default security group which gets created, and then you also get control where you create security group and then you provide the security group ID while you create the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Operational Guardrails
- Services: AWS Config
- Key Insights: That means it's configurable, but this is a default security group which gets created if you don't provide your own.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next thing, how do you access the control plane?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, here is the thing to understand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: When we talked about the Kubernetes architecture, we said that Kubernetes APIs servers kind of the heart of the communication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you want to talk to Kubernetes cluster, you need to make an API call to the API server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now in this case, that API server is a part of this EKS control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you're using some kind of client, Kubernetes client like kubectl on your workstation, then you need to connect to this control plane API server and then you can deploy your pods, you can create services, you can attach nodes to the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All those are Kubernetes-level operation and for that, you need to hit that Kubernetes control plane API.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So by default, this API server is accessible over the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, this is managed by AWS because it's inside AWS managed VPC and then AWS will allow the internet access to this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EKS
- Key Insights: Now, there are ways to disable the internet access and we'll see that in the same lecture, but this is what happens when you create the EKS cluster.
- Hidden/Implicit Meaning: Platform automation signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, one thing to understand that don't get confused between the Kubernetes API server which is used to manage the Kubernetes cluster components.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: For example, launching pods, launching services, and then there is something called EKS APIs, those are AWS EKS APIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means if you want to create the cluster, you need to make an API call to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, if you launch an EC2, you make an API call to EC2 service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Similarly, you are now making call to the EKS service of AWS and then it creates the cluster for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's AWS API, we are not talking about that at this moment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: We are talking about the Kubernetes API to really manage the internal components of the Kubernetes and to make the deployments into the Kubernetes, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So by default, this API server it's accessible over the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, you can have both IPv4 and IPv6 IP addresses assigned to your pods which are running on this worker node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But thing to remember is that it doesn't support dualstack mode.
- Hidden/Implicit Meaning: Platform automation signal.

Line 59:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: That means, pod cannot have both the IPs at the same time, either they can have IPv4 addresses or they can have IPv6 addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means both the options are available to you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, let's look into the particular use cases.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now to start with, let's see what are the options you have when you say you want to access the EKS Kubernetes API server?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So here is the same architecture and then you have kubectl as a client which you can install on your workstation, assuming that you have permissions to connect to the Kubernetes API server then you can very well go over the internet.
- Hidden/Implicit Meaning: Platform automation signal.

Line 64:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now this is a default setting where EKS cluster endpoint public access is enabled and the private access is disabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk shortly about what is private access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if that is the case, you create the cluster then you can connect from your workstation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So EKS will provide you the DNS, some uniquename.eks.amazonaws.com and which results to the public IP, and then you can connect it over the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how do then worker nodes connects to the control plane?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because as I said, this ENIs by default will only allow access from control plane to the data plane.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then data plane also needs to communicate to the control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, to let control plane know that some of the pod went down, so there should be a replacement pod.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for the reporting purpose or to get the instruction from the control plane, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So by default, if you enable the cluster endpoint public access then this worker nodes here and it runs kubelet, as you know, needs to communicate with the control plane over the internet as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the traffic will go from here to the control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, for that, as you might have understood your nodes needs to be in public subnet and then you should be allowed to connect to the internet through internet gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we'll talk about more patterns of public or private network going forward.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is what happens if you go with the Kubernetes default public access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so obviously this works well, but then it means that anybody can connect to your control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So do you have any control over who can connect over the internet?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Yes, of course, you have because AWS EKS provides you ability to provide the CIDR block to whitelist the IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can restrict that which IPs can access this control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you know the customer side of the CIDR then you can provide that and only traffic from those IPs will be allowed.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, but in certain cases, maybe you want that your worker node doesn't have the outbound internet access and still you want these worker nodes to communicate or say data plane to communicate with your control plane, or the private network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in that case, there is an option where what you can do is you can enable both the public and private access for this control plane endpoint.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in that case, a client can connect over the internet, but the data plane can be in the private subnet and there is no internet gateway here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And then it can access the control plane via this EKS owned ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when it tries to resolve the DNS, it results to the ENI private IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you don't need outbound internet access for your worker nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's one case where you can enable both the public and private access.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case as well, you could still have the CIDR block and you can whitelist the public IP range from which you want external client to make connection to the control plane API server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, while this is good, maybe in certain cases, you don't even want this public connectivity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You want that all the connection from your network to the Kubernetes control plan is private.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means it's secured, so it could be over VPN or it could be over a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have that kind of requirement, you can completely disable the public access to your control plane cluster endpoint, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in that case, you need to have some kind of Layer 4 connectivity between the data center and the customer VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Typically, it is turn over a VPN or a Direct Connect and then you have client inside this network, and this client can then reach out to the EKS owned ENI, and then the traffic can go to your control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, in this case, we have disabled the EKS cluster endpoint public access, but we have enabled the private access so that it can only be accessed from this EKS owned ENI.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 98:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So these are the ways in which you can control the access to the EKS cluster endpoint.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EKS
- Key Insights: Now, at the same time, we also need to look at the AWS EKS APIs.
- Hidden/Implicit Meaning: Platform automation signal.

Line 100:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, for example, if you're creating the EKS cluster altogether.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now for creating EKS cluster, you don't need access to the cluster endpoint, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because it is after creating the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 103:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EKS
- Key Insights: But for that, you need access to the EKS service of AWS like EC2 as I said.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, typically, all the services are available publicly, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 106:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So in that case, if you need to do that, you can use VPC interface endpoint for EKS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, what we are doing here, in customer VPC, we are creating a VPC interface endpoint for EKS service of AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And then your client are sitting here, but this time they're not using kubectl, but they're using other tools like eksctl, which is used to create the Kubernetes cluster and eksctl talks to AWS EKS service endpoint, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 109:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So in this case, it will fire AWS EKS API and the traffic will flow from the customer location to the customer VPC via VPN or a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And from there, through VPC interface endpoint, it can reach to the EKS service endpoint and then you can fire all the EKS-related APIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To start with, it will create the cluster, and once cluster is available then the kubectl will be used to connect to the control plane and then perform all the operations.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, this is how the VPCs look like and the, you know, networking look like for your EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 113:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, few additional things, maybe recommendation or best practices, what you can do inside your customer VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 114:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So of course, you could have public subnets inside your customer VPC so that you can launch the elastic load balancers like ALB or NLB, and then you can distribute traffic to your pods.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 115:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we'll cover this in detail in the following lectures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And also for the outbound access to the pod, you can do that through the NAT gateways as usual.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for that, also, you could have your public subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now if you're allocating IPv6 addresses, you know that IPv6 addresses are public, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you don't need NAT gateway, but then if you want to allow only outbound access then you need egress only internet gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, what is egress only internet gateway?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It only allows traffic from IPv6 addresses to go out, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But from outside, traffic cannot reach to those IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is particularly used for IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if it's IPv4 address, as you know, you should have the NAT gateways.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then NAT gateway should be in public subnet, so traffic goes from your pods to the NAT gateways to the internet gateway, to out to the internet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Further, you can also enable the VPC endpoints through private link to access other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Container Runtime Operations
- Services: Amazon EKS, Amazon S3
- Key Insights: For example, pod wants to send some logs to the S3 service or pod needs to access the EKS service, so all these endpoints are available because we are still operating as a normal VPC, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all those VPC-related services are available in the customer VPC as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Further, you can connect your VPCs to other networking component.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, you could connect it to on-premise data center or a VPN, or a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can peer multiple VPCs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can peer your VPC to the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all this is possible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means you leverage all your VPC capabilities while you deploy your Kubernetes data plane into your own VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll stop here for this lecture and now we'll slowly get into the pod-level networking and that's the most important part of this section because you will have a lot of questions related to the pod networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 136:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: How EKS assign the IP addresses to the pods?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How to expose pod services externally?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All that will follow, but I hope the basic building block is clear how the Kubernetes control plane and data plane networking looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 139:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, Amazon EKS Pod Networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is one of the important lecture of this section because we are going to learn how the IP addresses are assigned to pods, how pods communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in the following lectures, we'll see more details around how pods communicate with external network, how pods are exposed as services, and all this could be a part of your exam questions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Now, one thing to just reiterate that we are not really getting too deep into how Kubernetes work and how deployment works in Kubernetes because in itself, it could be a long course.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Idea is here to just cover the networking part, and that's to focusing on the EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please, pardon, if you think that this course, or this lectures doesn't cover enough depth of Kubernetes, however I still try to keep it little simple even if you don't have much of Kubernetes knowledge.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You should be able to understand what's happening here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for those who don't know Kubernetes, I have included a lecture to introduce you to the Kubernetes, so I hope that's fine with you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Okay, so let's understand how EKS Pod networking works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So before we get into the specifics of EKS, how it supports the Pod networking, it is important to understand some of the principles of Kubernetes networking, and that is defined as a part of Kubernetes network model.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this has been defined by CNCF as you know, Cloud Native Computing Foundation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So CNCF defines some networking specification, and then this is up to the network provider how they implement this specifications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So some of the specifications which CNCF defines are every port gets its own IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: That means port should be treated more like a first class citizen of the network, not like containers, like if multiple containers are running on the same host, typically, they have a different OL network inside, but pod should get their own IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Platform automation signal.

Line 15:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: Second, containers in the same pod share the same network IP address space.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means they do not need to have separate IP addresses, but they can talk over the local host network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Third, all pods can communicate with all other pods without using the network address translation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And somewhere links to the first point that if there are two pods, they're kind of first class citizen of the network, and they can directly communicate with each other without having any NAT devices, or any proxy devices in between.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, all nodes can communicate with all pods without NAT, so there shouldn't be NAT when nodes wants to communicate with the pod.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And finally, the IP that a pod sees itself as is the same IP that others sees it as.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Little confusing statement, but essentially what it means that there is no destination not happening, that means whatever IP pods is, others who wants to connect to the pod also sees the same IP address.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these are the specification defined by CNCF, and all these specifications are then implemented as of CNI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, CNI is Container Network Interface.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So every cloud provider, for example AWS or Google or Azure, will define their own CNI plugin, so AWS also did the same thing.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is CNI plugin implemented for AWS VPC to support this kind of networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that plugin is called VPC CNI, of course, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's get into the VPC CNI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Amazon VPC CNI plugin does exactly what the specification says.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now if you look at this VPC, you have the subnets, and then you could assign IPv4 or IPv6 that we already learned in EKS architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you have the worker nodes, and these nodes have the pods, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does VPC CNI assigns IP addresses to the individual pods?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now that's interesting because so far, you might have just assigned one IP address to the EC2 instance, but now one instance hosts multiple pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then how could you assign multiple IP addresses to those pods?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what Amazon VPC CNI does for this, it creates and attaches ENI to the worker nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: Now you know that when we say IP address, ultimately it comes from the elastic network interfaces which AWS provides and you can attach multiple ENI to the same EC2 machine, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then one CNI is not just one IP address, there is something called a primary IP address, and then there are multiple secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So ENI consists of multiple IP addresses altogether.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in terms of VPC CNI, it assigns the secondary IP addresses to the pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this diagram, you see there is a primary ENI, which comes with the primary IP address, and then there are additional secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, this really depends on your instance type, so different instance type would support different number of ENIs, maybe some instances support just one ENI, in that case, it'll be just one primary ENI, but some instances might support more than one ENI, maybe three, maybe 10, so there is already documented instance types, and supported ENI, which you can check for that.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But here you can see that there is a primary ENI, and then there is primary IP address attached to that ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there are multiple secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now this is also depending on instance type how many secondary IPs one ENI will support, and we'll look into that shortly.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But in this diagram, you can see this instance type has two ENIs, one is called primary ENI, another is called secondary ENI.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then ENI has primary IP address, and ENI has secondary IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So altogether, you can see, there are three secondary IP addresses for ENI one, and three secondary IPs for ENI two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now what VPC CNI does, it assigns this secondary IPs to the pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It doesn't assign the primary IP, it only assigns the secondary IPs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thing to remember that VPC CNI attaches secondary IPs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here we are all talking about the IPv4 addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So likewise, all these IPs which you see here are now assigned to the pods, and that's where Pod gets the IP addresses from your VPC address space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they become kind of first class citizen of your VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, Amazon EKS officially supports the Amazon VPC CNI plugin for Kubernetes, that's what we are seeing here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But there are also a lot of third party implementation of the CNI because CNI is a specification, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So anybody can implement, you can also write CNI, and can plug it into, you know, EKS for example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So likewise there are different companies who have their own networking plug-ins.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I have worked on Calico, which is very famous.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It allows to have the network policies, and it has lot many controls when it comes to the security.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then you can choose which CNA plugin works best for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Otherwise, AWS VPC CNI is officially supported by EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's in short is the VPC CNA.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, after this you might have got question.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If that is the case where you can only attach the secondary IPs, then how many parts I can host on a node?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's look at that now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So maximum pods per node and here also, we are talking about IPv4 to start with.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, as you might have guessed, it really depends on how many ENIs you can attach to the particular instance, and then how many secondary IPs that ENI has, right?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can find this table in AWS documentation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If it's m5.large instance, it supports maximum three ENIs, and then it supports 10 IPv4 addresses per networking interface, and 10 IPv6 addresses per interface.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you want to calculate now, how many parts you can attach, then formula will be something like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Total number of network interfaces, so there are three into maximum IPs per network interface minus one, minus one because primary IP is not assigned to the pods plus two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this plus two is for because Kubernetes would have two pods, one for host networking, and one for kube-proxy on every node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these are the additional pods that anyways Kubernetes runs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So max pod would be this formula.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now if you take an example of m5.large, for example, then m5.large has three network interfaces, 10 IPv4 addresses per network interface.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it becomes 29 pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So if you have m5.large instance, you can host 29 total pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, someone can say that 29 pods is less, I'm not able to use full capacity of my instance, and I want to increase this number.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is typically called you know, pod density.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How much is a pod density for the node?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this has been the problem with maybe a lot of customers which AWS served.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then AWS came up with some advanced networking where one host or one instance could host additional pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's look at that now, how it is possible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So increase available IP addresses for the pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have more IP addresses, of course you can host more pods, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now for that, AWS launched a new feature, but it is only supported on Nitro-based instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, that feature is called prefix delegation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now what is prefix delegation?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Instead of individual IP addresses, you could assign the CIDR block to your ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Instead of single IP addresses, you can give a full CIDR block with /28 for IPv4, and /80 block for IPv6.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you know that /28 provides 16 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means instead of one secondary IP, you get 16 secondary IPs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you have 10 secondary IPs supported, then you would have 160 secondary IPs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means your range is now increased by almost 16 times for IPv4, and then in trillions for IPv6 addresses, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is a special feature supported on Nitro instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 95:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And here you can see that you can support many, many IP addresses, and that means you can launch many many pods on the same EC2 instance type.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 96:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: If you take just the same example of m5.large, then for IPv4 addresses, you could support 434 pods instead of 29 pods.
- Hidden/Implicit Meaning: Platform automation signal.

Line 97:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, but is that the way typically you would do that?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I mean would you really host 434 pods on the single node?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Though technically you can launch those many pods, but then Kubernetes itself has some kind of limitation, and recommendation how many maximum pods you should typically have on any node.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 100:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And that limited based on, you know, your processes which are running on those nodes kube-proxy, kubelite, EPS server traffic, and the way Kubernetes manages the state of the nodes, and schedule the pods on the nodes, there is a recommended number, which is 110.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 101:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: So it's recommended that you shouldn't typically exceed this limit of number of pods per instance type.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Runtime and execution-path signal.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, we talked about IPv4 addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 103:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, let's talk about IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you know, IPv6 addresses are public and globally unique.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there are a lot of IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You start with /56 range for your VPC, and then you can create subnet with /64 which gives you, so two to the 64 IP addresses for your subnet, which is again in trillions, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can assign IPv6 addresses to your VPC and to your subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: But then there are certain limitations which you need to know.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 109:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: First of all, IPv6 addresses are supported for Nitro based instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 110:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Nitro is Amazon design hypervisor, which is much more efficient than the open source, or commercial hypervisor which are there in the market.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And most of the new instance types that AWS is launching is based on the Nitro hypervisor.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 112:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So IPv6 IP addresses are supported for Nitro-based instances as well as for AWS Fargate.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 113:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, we learned that you could launch your pods on Fargate, and in that case you can assign IPv6 addresses to those pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS CloudFormation, Amazon EKS
- Key Insights: So by default, Kubernetes assigns IPv4 addresses to the pods, but as you know, you could also create your cluster with IPv6 addresses, but EKS doesn't support dual-stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 115:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: That means pod cannot have both IPv4 and IPv6 address at the same time, so keep that in mind.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 116:
- Concepts: Compute Platform Design
- Services: AWS Config, Amazon EC2
- Key Insights: Now for EC2 nodes, you must configure the Amazon VPC CNI add-on with IPv6 prefix delegation, and IPv6, that means if you want to use IPv6 addresses then you should must use the prefix delegation what we just learned in the last slide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 117:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means you need to define the /80 prefix for IPv6 addresses, and then you can assign those addresses to the pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Further, you must also assign IPv4 address to your VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 119:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now, this is confusing one way we are saying that you can't use both the IP addresses at the same time for the pods, that's true.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in order for this IPv6 addresses to work, you need to assign IPv4 range to your VPC because the way VPC has built, it needs IPv4 addresses for functioning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then subnet must have auto-assign and IPv6 address enabled so that when pods are launched in that subnet, and the nodes are launched in that subnet, they automatically get the IPv6 addresses.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, IPv6 addresses are not supported for Windows pods and services as of now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, the important part how Pod communicates with other pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now, if all the pods are part of the same VPC, you know that pod have their own IP addresses, so they can communicate directly with each other.
- Hidden/Implicit Meaning: Platform automation signal.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you remember, this was kind of defined in a specification as well that pod should be able to communicate with each other without any NAT, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if on the left side there is a pod wants to communicate on another pod, on another worker node, it just talks directly over normal VPC communication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So pods within the same VPC can communicate directly using the Pod IP address.
- Hidden/Implicit Meaning: Platform automation signal.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we just understood the basics of the Pod networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we will get into more specifics about how pods can communicate to the external world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means to the internet or to the other VPCs connected through transit gateway, or to on-premise network over VPN or EDX.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it works little differently.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it is important that you understand all those things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we'll cover that shortly in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hello and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, in the earlier lecture, we saw how CNI assigns private IP addresses to the pods and then how pods can communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is a next level where we'll see how pod communicates with the external network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: Now this is a little complex than what we have seen already.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I hope at the end of the lecture, you would be able to understand end-to-end flow of pod networking, so let's get started.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Quick recap, every pod gets private IP address from the VPC address space and then pods can communicate directly without NAT with each other if they're part of the same VPC.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this works well as long as pods needs to communicate within VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But more often or not, pod would want to communicate externally maybe to the internet, maybe to other VPCs, where there are additional application deployed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because if you talk about large ecosystem, there will be multiple systems and then application needs to communicate with each other.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, in that case, things are a little different and let's see how that kind of communication works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's try to understand this communication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there is VPC, there is a public subnet in which you have worker node and then you have ENIs assigned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then ENI have secondary IPs which are assigned to the pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now on the right side, you have external network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be internet and there could be other VPCs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: You could connect to transit gateway or on-premises network over to VPN or RDS, but this is external to the VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: Amazon Translate
- Key Insights: Now, the way CNI plugin has been implemented, you need to understand that when a pod communicates to any IPv4 address that isn't within the CIDR block of the VPC, then Amazon VPC CNI plugin translates the pod's IPv4 address to the primary private IPv4 address of the primary ENI which is assigned to that node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, let's try to break this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What it means is that if this pod here where the IP address is shown in red wants to communicate outside of the VPC CIDR, then the traffic lands to the primary ENI first and then there is a NAT which happens at this point because traffic is going out of the VPC now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the source packet, source IP address is replaced with the primary ENI's primary IP address, which is 10.0.0.15 in that case.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you look at the flow, this will make a request maybe to the internet, but the traffic will first go to the primary ENI and then the source IP address on the packet will be replaced with the primary IP address of this ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then this packet will be sent out depending on which route you take, whether it's going to the transit gateway or to other VPC through VPC peering likewise.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what happens by default when pod tries to communicate outside of the VPC network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: Amazon Translate
- Key Insights: Now whatever we are talking, it applies to the IPv4 addresses only because IPv6 addresses are not network translated because they are public by default, so they don't need NATing to be enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is for IPv4 address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's the basic fundamentals of what happens when the pod tries to reach outside of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now based on this knowledge, let's try to understand what happens when pod reaches the internet or to the other networks outside of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Deployment Automation
- Services: AWS SAM, Amazon RDS
- Key Insights: Okay, so the same diagram, but then I have shown here multiple outside networks like internet, transit gateway, VPC peering, or RDS connection, for example, connected to the VPC, and there is also internet gateway because if traffic has to go out to the internet, there should be internet gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in this case, nodes are in public subnet so that nodes can directly communicate with the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, with CNI, there is some setting which is called source NAT enabled, which means whatever we talked in the last slide, when pods goes out of the VPC network, the pod's source IP is replaced with the primary IP of the primary ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, this is a default setting and this is called source NAT enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means NATing is happening at the node level here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you want to set that with Kubernetes settings, then it is called EXTERNALSNAT is disabled or EXTERNALSNAT is false.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is again a little confusing, but understand that source NAT enabled means NAT is happening at the node ENI level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if that is the case and node is in a public subnet and this pod needs to communicate with the internet, it needs to make an outbound request to the internet, then, of course, when packet originates, the source IP is the pod IP address, it goes to the ENI, we just saw that in a previous slide.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And at this point, the source IP will be replaced with the node ENI primary IP address that is 10.0.0.15 and now the traffic goes to internet and internet gateway also does the NATing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It replaces the source IP with the public IP of this ENI, which is primary ENI, so that's node public IP and then traffic goes to the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is how the end-to-end communication happens when pod reaches out to the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this case, source NAT is enabled, which means EXTERNALSNAT is disabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: EXTERNALSNAT means somebody else is doing the NAT, not the node, and we'll see those use cases as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now if you continue with the same mechanism, then pod can also reach to the external network and this transit gateway here or VPC peering will always see the primary IP address of the primary ENI.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They won't see the IP address of this pod because it is getting NATed at the node level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now, this is good for outbound traffic as you can see here and same happens for any other pods as well, whether it's this pod or this pod, always primary ENI is being used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this works well, but do you see any problem here?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, because all external networks are now seeing the node IP address and not the pod IP address directly, they can't directly reach to the pod because this is hidden now, this IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means if from peered VPC you try to communicate with this pod, there is no network which will allow you to directly reach to the pod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because it's an outboard request, it's allowed, but inbound requests are not allowed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They can't really reach because these IPs are not exposed outside because you are doing the NAT.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: Same logic, when you have the NAT gateways, an instance in a private subnet needs to communicate with the internet, then the NAT replaces the source IP address.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 50:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: The same mechanism you can apply here, that means outside network cannot reach to these pods and that's a problem, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't want to do that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Another problem is your worker node is in public subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Typically you don't want that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You want your worker nodes to be in private subnet and then still your pod should be able to reach to the internet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Of course, you might have guessed what could be the solution.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So a solution would be, of course, to use NAT gateways.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But in this case, you don't want this NATing to happen at the node level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: NAT gateway should see your pod's IP address, then you can reach outside through the NAT gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And also you want to make sure that the IP addresses of the pods are visible outside.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you would have to disable the source NAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means you are not doing the NAT at the node level, but you are using some external NAT for this kind of communication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's where NAT gateway comes into the picture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first setting you would have to do is to disable the source NAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: And if you want to do it at Kubernetes level, you would have to fire this command which says EXTERNALNAT is true now or EXTERNALSNAT is true now, so these are kind of opposite words, but try to understand the difference.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what we are saying is now node is not doing any NAT, but then some external entity will do the NAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now in this case, with the same example, we have source IP as a pod.
- Hidden/Implicit Meaning: Platform automation signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: No NATing would happen at ENI level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Traffic will directly go to the NAT gateway, of course, through the routing table.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: NAT will replace the source IP with the NAT IP address, then it will go to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Internet gateway will replace the source IP with the NAT gateway's public IP and then traffic will go to the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is about the outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It works that way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly, if you want to go to the peer VPC, the traffic directly from this pod will go to the transit gateway or peered VPC or on-premises.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means on-premise network can also see the pod IP address directly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is no NATing happening here because we have disabled the source NAT at the node level and which also means if any of these networks wants to communicate with the pod, they can directly communicate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So this is the next slide where the same setting source NAT is disabled, and if external network wants to communicate, they can do it and they can directly reach to the pod's private IP address because we have disabled the source NAT here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 77:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: I know this could be confusing or maybe a little complex, but if you just follow what we talked in this lecture, you should be able to understand what is source NAT and what is an effect of source NAT while using the NAT gateways or reaching out to the external networks.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear to you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, I just want to touch upon one more feature, which is not widely known, but there is something called multi-home pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, multi-home pod means you could have multiple ENIs for a single pod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So far we are talking about multiple ENIs assigned to the node, but then every pod gets just one IP address, that means pod can be a part of only one subnet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 82:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But like EC2 could have multiple ENIs for multi-home kind of architecture, similarly pods could also have multiple ENIs and this is enabled through something called Multus ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And this is a link where you can read more about this, but essentially if you see on the left side, this is a pod without Multus where there is AWS EKS, then there is a VPC CNI, and every pod gets one network interface IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And on the right side, this is the Multus implementation, Multus CNI implementation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Multus can provide you three interfaces to the same pod.
- Hidden/Implicit Meaning: Platform automation signal.

Line 86:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now the left one is same as your existing pod networking IPv4 address from the VPC.
- Hidden/Implicit Meaning: Platform automation signal.

Line 87:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And additionally, you could have other interfaces attached to your pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's just one thing I wanted to mention.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm not really sure if it is covered as a part of exam or not, but still good to know that pod could be multi-home.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it enables attaching multiple interfaces to the pods and you can create multi-home pods with multiple interfaces.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then AWS supports Multus with VPC CNI by default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, with that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I know this could be already overwhelming to understand the pod networking, but very important for your exam and in general if you work on Kubernetes networking, I think this will help you a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt

Line 1:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, Security Groups in EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Now this is also one of the important topics with respect to the exam because you should understand how the security group works when it comes to the EKS nodes or pods, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And it essentially works a little differently because you know that on one node you have multiple pods, but, so far what you might have learned that the security groups are attached to the Elastic Network Interfaces.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS SAM
- Key Insights: And now we are assigning the multiple IP addresses from the same ENIs to multiple pods, which essentially means that all those pods should be following the rules from the security group which is attached to the corresponding ENIs, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, with respect to that, let's understand how it works, what's the problem, and then how could you solve some of those problems.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is the diagram that now you should be familiar with.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: You have the EKS Control Plane in the AWS Managed VPC, and then EKS Data Plane in the Customer Managed VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: For management of the network, EKS provisions, EKS owned ENI in the customer VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that Control Plane can communicate with the Data Plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Now, when it comes to the EKS cluster, when you create the EKS cluster, it also creates the security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And these security groups have some default rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You know that security group contains inbound and outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So by default, all the inbound rules are allowed for the self.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: That means, whichever entity would have that security group attached, all the traffic between those will be allowed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as an outbound rules, the destination for all IPv4 addresses and IPv6 addresses is allowed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Now, this is a default security group which EKS creates, and what it does it also associates the security group with, of course, the EKS owned ENI, and also the managed nodes in the managed node groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So it attaches this default security group to these ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this works well, however, for security reasons, you might want to restrict the outbound traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't want to allow outbound traffic from these ENIs to any IPv4 or IPv6 addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So at bare minimum, what you can do is, you can restrict the outbound access to port 443.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is required to hit the API server of the Kubernetes, and that's where this 443 port is required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: 10250 is required for the kubelet APIs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you know that the Control Plane also communicates with the kubelets on the worker nodes, so it listens at this port.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So also outbound traffic for this port is required and 53s for DNS queries.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So bare minimum, these outbound ports are required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if your node and port needs to communicate to, for example, to the internet directly, or you know, download some packages, in that case, you might need port 80 as an outbound.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So all those rules apply if you want to extend the connectivity beyond, you know, EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: So, this is a default behavior when it comes to the security group of EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: And optionally, what you can also do is you could have your own security group, and when creating the EKS cluster, you may provide that security group as one of the input, and then EKS will also attach that security group to the EKS owned ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: But EKS doesn't attach it to the Managed Node group ENIs if you provide your own security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: One thing to also understand that these inbound rules are very much required for EKS to function.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: And by chance, if you remove all these inbound rules from the security group, then whenever EKS updates itself, it will re-add this inbound rule into the EKS security group because it needs that to function.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Similarly for outbound rules, this is under your control.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we said, at bare minimum, you require few outbound rules here, which are listed here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And additional outbound rules like node to node communication, talking to the S3 or VPS interfaces, or maybe for pulling the {indistinct} images from outside.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: But at bare minimum, these rules are required, and you should always test, right, whether your ports and EKS is working fine by removing the outbound rules.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 41:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: And those are not automatically added because EKS doesn't understand what rules you need into your security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these are few things that you need to keep in mind.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, with that, let's move to the next part of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What is the problem here, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you have Worker Node, you have Primary ENIs and Secondary ENIs, you attach it to the node, and then, as you know, the secondary IPs from the ENIs are assigned to the pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This works well, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, when it comes to the SG, these are attached to the ENIs, not to the individual pods, because security group works at the ENI level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You know that already.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS SAM
- Key Insights: Due to that, what happens, there will be two security groups, either same security group you can attach to the two ENIs, or maybe you want different rules in this security groups.
- Hidden/Implicit Meaning: Platform automation signal.

Line 50:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So you would have two different security groups here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now do you see some problem here?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Of course, because now all these ports might have different purpose, some may be a web server, some may be database, some may be application server, and every service would have different kind of firewall requirements.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: But, if you are using this kind of setup, which means that all these ports will have the same firewall rules, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's a drawback.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Ideally, what you would want is every port gets their own security group or their own firewall so that you can have the granular control over inbound and outbound traffic from that Pod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But with this architecture, it is not possible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what's the solution there?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, Kubernetes is an extensible framework as you know, and there are a lot of third party providers who have implemented their own CNI plugins, and they're building the network policies on top of that plugin.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One such policy engine is Calico network from Tigera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We had briefly touched about this in earlier lecture, as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Calico provides you the network policies with which you can control basically the firewall at the port level, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Not at the node level or the ENI level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it does that using the IP table rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what you can do if you're using external policy engine like Calico.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: But if you want to do this natively with the EKS, then EKS provides a functionality called Trunk and Branch ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, let's try to understand in the next slide what is Trunk and Branch ENIs, but essentially, idea is to give or provide the security group to individual port, rather than sharing the security group across multiple ports, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is Trunk and Branch ENI?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon EKS
- Key Insights: Basically, Amazon EKS and ECS supports Trunk and Branch ENI feature.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We are not really getting too deep into what is trunk ENI, branch ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a networking concept very similar to how you have one network and subdivide that network into secondary networks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And how it is done for this trunk ENIs and branch ENIs, you have to have the add-on added to your EKS, and that add-on is Amazon-vpc-resource-controller-k8s, and it manages this trunk and branch network interfaces.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what happens when you enable the Pod ENI feature to true, and there is a command to do that in Kubernetes, this VPC resource controller will create a special network interface called trunk network interface, and then it will attaches it to the node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So very similar to the standard interfaces that you create and attach to the node, but this is called trunk ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the benefit is, once you create the trunk ENI, you can create now something called branch ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is like a tree.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Tree has a trunk and then multiple branches.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a trunk ENI, and then you can create multiple branch ENIs on top of this trunk ENIs, something like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And every ENI would have their private IP addresses, as we have seen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So these are the same ENIs that you attached to the nodes, but the benefit is, these ENIs you can directly attach to the Pod, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Earlier it wasn't possible, they were attached to the node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can create now branch ENIs which are connected to the trunk ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now if you look at the Pod distribution here, now, you have this worker node, you have primary ENI on top of it, you create the trunk ENI, and then you create multiple branch ENIs, because now every pod has their own ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Of course, you can apply the security group per pod now, because we know that the SGs are assigned to the, or associated to the ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So this is a solution where security groups can be used at the Pod level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, few things to just note that this cannot be used with Windows nodes as of now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 86:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And if you're using IPv6 address family, then this feature is only available for Fargate, not available for EC2 Node, typically supported by the nitro-based systems only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 87:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And in that, also some of the instance families, like t families, are not included.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And if you want to really check which type of the instance supports the trunk and branch ENIs, then there is a GitHub link and there is a file called limits.go in that you can see list of all {indistinct} instances and corresponding flag, which say "is trunking compatible." If it is true, then only that type of the instance family would support the trunking and branching of the ENIs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 89:
- Concepts: Container Runtime Operations, Deployment Automation, Operational Guardrails
- Services: AWS SAM, Amazon EKS
- Key Insights: Okay, with that, just understand that EKS supports the security group, typically it attached to the nodes, but that's a problem, because then all ports would have to use the same security group.
- Hidden/Implicit Meaning: Platform automation signal.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One of the solution is to use third party solution like Calico network policies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: But if you want to do it natively using EKS, then you can use trunk and branch ENI feature, where every port gets their own ENI, and then you can have different security groups attached to those ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I hope that's clear and that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now we'll get into the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture, "Exposing EKS Services." If you're running some application, it is evident that you will be exposing that to the outside world so that outside world can consume your services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why service, first of all?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: Now this is very similar to any other service that you will expose for any other application, whether it is hosted on EC2 machine or it is hosted on containers inside EC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then you want to expose services outside.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Service could be your API, it could be your front end service, it could be your database service, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in Kubernetes, you know that you have pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Pods gets an IP address as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And generally speaking, it's not a great idea to expose the pod's IP address externally so that the external client can communicate with the pod's IP address directly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is because, you know pods are non-permanent objects of the Kubernetes cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the life cycle of pod is not supposed to be the long term, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And for the same reason that pods may be created and destroyed based on scale, based on the event in the Kubernetes cluster, maybe more random kind of, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So pods inside a cluster always keeps moving across the nodes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Elasticity and Availability
- Services: AWS Config
- Key Insights: As I said, due to scaling event or node replacement or maybe some configuration change you made.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's where if the pod changes its location, its IP address will also change.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's where it is not recommended to use pod's IP addresses directly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The better ways to expose the pod as a service to the outside world, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's where services are useful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in Kubernetes world, if you want to expose pod services externally or in general if you want to make a service out of the pod, then there are four ways, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So very first type of the service is cluster IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this is for the service to be exposed within the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means one pod can access another pod as a service within the cluster only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means it cannot be accessed from outside the cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is good if all the communication for those services remains within the cluster and you don't need to expose that externally.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you still want to expose the pod services externally, then there is another service type called NodePort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now here, instead of pod IP addresses, you are exposing the node IP addresses externally.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means client can directly hit the node IP address and/or static port, and then it'll be redirected to the pod traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's another way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, we'll see why this is also not a good idea.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now actually speaking, if you really want to expose the services of the Kubernetes then it is best idea to use a load balancer service and the ingress service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 31:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So load balancer service typically used for network layer load balancing, that is layer four.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 32:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And there are some differences in which EKS has implemented that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'll talk about that shortly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the latest way of having the application load balancing at layer seven is ingress service of Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: Now, these are all defined by the Kubernetes, and you know that EKS implements all these services using AWS native services like network load balancer or application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we'll see that in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But essentially there are these four ways in which Kubernetes services can be exposed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's look at the cluster IP now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as the name suggests, accessible only within the cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is a default service type of the Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now in this, what happens really is, when you create a cluster IP as a service, Kubernetes assigns a virtual IP and then it exposes as a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So service is exposed on a virtual IP and this IP is not exposed outside of a cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now if you see this diagram, there are three nodes, and then there is one single service which is created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there is this virtual IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is not an IP of the node but this is a different IP address called virtual IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you must be wondering from where this IP is allocated.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when you create a Kubernetes cluster, you can provide the CIDR range for this cluster IP addresses and then Kubernetes will pick any of the IP address from that range.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can pass this parameter service cluster IP range.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And if you don't pass it, EKS uses 10.100.0.0/16 or 172.20.0.0/16 server data range for assigning to the cluster virtual IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the kube-proxy daemon on each cluster node defines the cluster IP to the port IP mapping in the IP table rules.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means the cluster IP service uses IP table rules to really route the traffic to respective ports across different nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So this is how cluster IP works, but the limitation as you know, it is only accessible within the cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The services exposed as the service-name.namespace.svc.cluster.local, you can see you can give the name to the service and then the name space could be different enrollments or different business units likewise, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's the cluster IP service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you really deploy the cluster IP?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you know that in Kubernetes you have to write a manifest file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So this is a sample manifest file for cluster IP type of the service.
- Hidden/Implicit Meaning: Platform automation signal.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The most important for you here is the type of the service that is a cluster IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you need to define the port as well on which this service will be listening and then which all ports it'll send traffic to, which is done using the labels as you know, in Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So this is a sample file there.
- Hidden/Implicit Meaning: Platform automation signal.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Moving on, the next service type as we just discussed, is NodePort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In this case, you can see this diagram.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Every node has a node IP and then there will be a static port.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So every service will be exposed as a node port.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you want to hit that service you can pick node IP of any of the nodes here on the static port, maybe 80, 80, 80, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then ultimately the traffic will land into the port IP address on that particular node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So NodePort is used to make the Kubernetes services accessible from outside the cluster and exposes the service on each worker node's IP at the static port, called NodePort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So most important thing here to note that it's one node port per service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means if your Kubernetes cluster has 10 services to be exposed outside, you need to have 10 static ports.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So every node would have 10 different ports allocated for that service, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's how it works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Port range you can use from 30000 to 32767.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then internally, this node port uses the cluster IP to route traffic to particular pod IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So ultimately there is a pod on top of pod, there is a cluster IP service, and on top of cluster IP there is a NodePort service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a layered service architecture you can see here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now do you think this is a great idea to use a NodePort service type because it's the same problem like it's anti pattern to use port IP address.
- Hidden/Implicit Meaning: Platform automation signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's also anti pattern to use node IP address because even nodes keep changing, they die, new nodes come to the life.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in that case, client would have to keep track of which is the active node and only should be able to hit that node, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's a problem and not a very feasible option to expose services to the outside world.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we just saw two services as of now Cluster IP and NodePort.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: But the right way probably to expose the services is the load balancer and the ingress.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And let's talk about those.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So in EKS you could handle the network and application load balancing for network load balancing which is that layer four.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Typically you should use service type as load balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for application load balancing, you should use Kubernetes service type as ingress.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 86:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, there is some kind of overlap between how EKS implement these two services and let's try to understand that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: So originally the load balancer service type in EKS used to be handled by Kubernetes controller manager which is also called Entry Cloud Controller because the source code of this controller was part of the Kubernetes open source code.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 88:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So it came bundled with the Kubernetes and by default it used to create the classic load balancer which you know is the older load balancer which AWS used to support and lately now it supports NLB, that is network load balancer in instance mode.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 89:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So if you're using the service type as a load balancer and with in-tree cloud controller, then you can use CLB or NLB in instance mode with this load balancer.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then it supports both layer four and layer seven traffic, layer four with NLP and layer four or seven with CLB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: That is classic load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 92:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: But as I said, this is a legacy way of implementing the load balancer service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 93:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: If you want to really use the latest feature of NLB then you should be using the newer controller called ALB load balancer controller with which you can use NLB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can't use CLB and it is not recommended to use CLB now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 95:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So rather you go with the AWS load balancer controller and then you use NLB for service type as load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 96:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: For ingress service type, ingress means that you should be able to have the pod base routing, host base routing, all those features you know that application load balancer supports.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal.

Line 97:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So this is handled by the AWS load balancer controller which is a new controller.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 98:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Earlier this controller used to be called the AWS ALB Ingress Controller, but now everything is combined as AWS load balancer controller and then it deploys ALB in both instance and IP mode for this ingress resource and it works at layer seven.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 99:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now let's look at the load balancer service type with the legacy controller.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 100:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: As you know that there are two controllers, one which is in-tree controller and the other one is AWS load balancer controller, which is the newest one.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first look at the older controller.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So of course the load balancer service is used to expose the services to the client outside of the cluster.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 103:
- Concepts: Elasticity and Availability
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Now interesting to know that when you configure service as a load balancer, internally it uses the NodePort service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 104:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So essentially what it does on every node, a static port is assigned and this load balancer service will send the request to the node IP and the corresponding port.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 105:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means underlying it's using the node port service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you already know that NodePort service is built on top of the cluster IP service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there are three layers here, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: You expose service as load balancer but internally it uses other services.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 109:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So load balancer service with legacy controller supports both the classic load balancer as you know and the network load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 110:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now with classic load balancer, you can have both the traffic at layer four and layer seven and with NLB, you could have the traffic at layer four.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 111:
- Concepts: Compute Platform Design
- Services: Elastic Load Balancing
- Key Insights: Now one more thing that it only supports the instance mode for the NLB and does not support target as IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 112:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now that problem is solved using the latest controller that we'll talk about, but just one more time, this is a legacy controller and you are not really recommended to use classic load balancer with this legacy controller.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 113:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: Rather, you should use NLB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 114:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: And for NLB, you should also use the latest controller which is AWS load balancer controller.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal.

Line 115:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So here you can see that now you can only use NLB for load balancer service and you get many more features.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 116:
- Concepts: Compute Platform Design
- Services: Elastic Load Balancing
- Key Insights: For example, you can use NLB in both the instance mode as well as in the IP mode.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 117:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: That means you could have your target as EC2 machine IP addresses as well as Fargate as your target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these are the supporting annotations there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You could have EC2S target in instance mode and then these are the annotations that you can use.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 120:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now, one thing to understand that whenever you are using load balancer as a service, for every service, you need to have one load balancer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Elasticity and resilience signal.

Line 121:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: That is one NLB, which means if you're exposing 10 services then 10 network load balances will be required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 122:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now, this works well for maybe less number of services, but as it scales to maybe hundreds of services, it doesn't make sense to have those many network load balancer and that's the problem with load balancer service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 123:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: As it scales, the management is an overhead and there will be a additional cost for those load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 124:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now let's see how to solve that problem by moving to ingress type of the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's where Kubernetes Ingress is the right way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you have the application layer lower balancing, in this case, it exposes services to the client outside of the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then it exposes HTTP and HTTPS routes from outside the cluster to services within the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now you can see this picture, right, there is a application load balancer, and then, you can have the pod based routing say slash service one, service two or slash product.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is links to the target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then target group could have the target as an instance or target as an IP address, right?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Both are shown here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Container Runtime Operations
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: So ALB is the ingress resource for EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now this traffic routing is controlled by the rules as defining the ingress resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Compute Operational Context
- Services: Amazon Lex, Elastic Load Balancing
- Key Insights: And of course this saves you cost and complexity as now multiple services can be added behind a single ALB using the ALB target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Like earlier we saw that if there are 10 services, 10 network load balancer needs to be provisioned.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 136:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But now every service might have a different endpoint, say slash service one slash service two, every service is wrapped around in a single target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by doing the pod based routing, you could redirect traffic to different services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So for 10 services, you just need to have now one load balancer in that sense.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 139:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it saves you a lot of cost, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 140:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And management as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 141:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a great way to simplify your architecture using the Kubernetes Ingress resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 142:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: And as I said, for having the Ingress resource, EKS uses AWS load balancer controller which used to be called AWS Ingress controller but has been now renamed too.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 143:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's Kubernetes Ingress resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 144:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is an AWS implementation of ingress controller.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 145:
- Concepts: Compute Operational Context
- Services: AWS Config, Amazon Translate, Elastic Load Balancing
- Key Insights: It ultimately translates the ingress rules, parameters and annotation into the ALB configuration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 146:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So what ingress does ALB can also do, the pod based routing, the whole space routing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 147:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: ALB also can create multiple listeners and multiple target groups, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 148:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It supports both the target as instance or a port IP and you can choose whichever way you want to implement that.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 149:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So annotations for Ingress class, you have to select the ALB and then you can also share ALB with multiple services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 150:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now what is that?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 151:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, you have multiple business units and they're operating by providing their own manifest file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 152:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And suppose one business unit owns two services and they use their single ALB, but other group might have their own set of services and they also want to expose that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 153:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now, if also they define their own manifest file, Kubernetes will probably try to create another load balancer for them.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 154:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: But then what you want is you want single load balancer, which is shared across all these services.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 155:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS SAM, Elastic Load Balancing
- Key Insights: In that case, you can create something called a group and if both the manifest file defines the same group name then all the services will be exposed as a part of the same application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 156:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So this is how you could manage, you know, how many load balancers you want to create and share the load balancer across those services.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 157:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now traffic for IPv6 is also supported and for that you have to define the annotation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 158:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Again, that IP address type is dual stack and it is supported only for IP targets, not for the instance target.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal; Platform automation signal.

Line 159:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: So that's the way EKS implements the ingress for Kubernetes using the ALB load balancer controller and using ALB as the resource.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 160:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So you can see ALB is at the top and the client would hit the ALB DNS, which transfers to the IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 161:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then from here, ALB would route the traffic to either target group A or B, depending on the path that user specifies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 162:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And this target group could have the target as an instance or the IP address.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 163:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: If it's an IP address, then target group registers the ports directly so traffic directly goes to the ports but if the target is instance, then ultimately it uses the NodePort on every node and then NodePort internally uses the cluster IP as a service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 164:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So all that we learned, the cluster IP NodePort is still applicable if you are using the instance as a target for your load balancer or ingress service.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 165:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this is how end-to-end traffic works in case of the ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 166:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear, maybe confusing, but if you just go over this lecture one more time probably things would be much easier for you to understand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 167:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Now, before we close this lecture, there is one more configuration I want to talk about because we have seen the question around it and that's how do you preserve the client IP address?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 168:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So when the client hits the load balancer and ultimately it reaches the pod, if application running in the pod or in a container wants to know the client IP address, how should we do that?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Elasticity and resilience signal.

Line 169:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 170:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's look at that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 171:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there is external client, you have node, you have kube-proxy on every node, and then you have pods running on that node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 172:
- Concepts: Container Runtime Operations
- Services: Amazon EKS, Elastic Load Balancing
- Key Insights: Now you could use NLB or ALB in case of EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 173:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So if you're using NLB as a load balancer service, in that case, you can set external traffic policy as a specification for the service and it defines the behavior of your traffic.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 174:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, if you say external traffic policy equal to cluster, in that case, this kube-proxy here may send the traffic to other nodes and the ports inside other nodes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 175:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So it does proper load balancing across the node if you have the external traffic policy equal to cluster and that's the default policy if you create the load balancer as a service with NLB.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 176:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this case, what happens, the traffic comes, it goes to the kube-proxy, and now if there is a pod for service B, it sends to that and as well as this can send traffic to the port on another node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 177:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But what happens in this case, as the traffic goes to other node, the source IP of the packet is replaced with this node source IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 178:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means the port B here now can't see the client IP address which originated the request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 179:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's the problem.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 180:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means you can't preserve the client IP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 181:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The solution to that could be using the external traffic policy equal to local.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 182:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now what it means that traffic is not routed outside of the node and client IP address is propagated to the end ports.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 183:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So what happens, you have external traffic policy equal to local, and the kube-proxy will only send the traffic to the ports on the same node.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 184:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It won't send traffic to the port which are not on that node.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 185:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is not done and that's where port can see the client IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 186:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the problem here is that the load balancing is not even, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 187:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as much traffic you have, only these two ports will receive that traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 188:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This port will not receive that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 189:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, there are pros and cons and you need to see what works best for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 190:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So that's about the NLB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 191:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: In case of ALB, you know that HTTP header X-Forwarded-For has the client IP address and you can grab that IP address from this header.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 192:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is easy in that case.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 193:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we'll stop here for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 194:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: I understand that it could be a little complex putting all things together, but Kubernetes, in general, is complex and unfortunately we can't cover Kubernetes to the depth that we want to and that's where probably you should focus only on the networking part as of now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 195:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned for the next lectures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Hello and welcome to this lecture EKS Custom Networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is a short lecture, but also important because this is a kind of scenario that can be there in the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Okay, so let's understand what is EKS Custom Networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is applicable for IPv4 addresses typically, and many a times you'll find yourself in a situation where the located subnet IP ranges are not sufficient to provision additional pods because you haven't allocated sufficient CIDR range to your VPC and to your subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: Elastic Disaster Recovery
- Key Insights: And many times this is a situation because networking team may be allocating multiple CIDRs to different VPCs across the organization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They don't want to waste too many IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So that may land you into this situation where you are working on a limited set of IP addresses inside your VPC and inside your subnet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is just an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you create a VPC with CIDR/24, only 251 are the unique IPv4 addresses that you can use in that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the solution to this problem is Custom Networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now this is again a feature, which Kubernetes and EKS provides.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that sense, what you can do is you know that there is a base CIDR for your VPC, and then you can have additional CIDR also called a secondary CIDR that you can allocate to your VPC, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as in secondary VPC CIDR, you can add a range 100.64.0.0/16.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We learned that in the VPC section, if you remember, and that brings more 65,000 IPs, private IPs to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, one of the constraint with this IP addresses are that they are routable only within the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means traffic from outside cannot directly go to these IP addresses, but within the VPC, IPs can be reached from one port to another port, or one EC2 instance to another EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do you really make use of these addresses if they cannot be routed from outside?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's the magic what you can do with Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these IPs are routable within the VPC, and you have to enable the VPC CNI Custom Networking to really extend your IP space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is an attribute for which you have to set it to true.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now what happens in this case, if you enable this custom networking, it adds a secondary ENI, but then it adds this ENI into this another subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this subnet range could be from this address range.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So your node now becomes dual home nodes which is in two subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: One range is 10.0.0.0/26, and another range is 100.64.0.0/18 and also what it does after you enable this custom networking, only IPs from secondary ENIs are now assigned to the ports.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now earlier we have seen that the secondary IPs from even primary ENIs are attached to the ports, but with custom networking to be true, only IPs from this ENIs are attached to the port, which means that all these ports will have the IP addresses from this range 100.64.0.0/16, and that's what we can see here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now that means all ports have IP addresses which are routable only within the VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now then the question is how can this port now communicate outside?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And from the earlier lecture, you might remember, we had different scenarios where you enable, or disable external SNAT, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: The same thing you can apply here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Custom networking can be combined with SNAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means NATing should happen at the ENI level of the node, and we are not using the SNAT of the external devices like a NAT.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, the flow would be, you have this VPC with secondary CIDR added.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You now have two subnets and one of the ENI which is attaches from the additional subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And all ports have this secondary IPs from that subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now if this port needs to communicate with the outside network, outside of your VPC, then of course the source IP of that pod would be the source IP of itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It'll go to the primary ENI because we have disabled the external SNAT, which means SNAT would happen at the primary ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then the source packet IP address will be replaced with the primary ENIs IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now traffic can go to the attached VPC through transit gateway, or if there is an internet gateway, and there is a public IP attached that can go to internet as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it works well for the outbound traffic that means port can initiate the outbound traffic, and the return traffic will also come back, but what about the traffic which is originated outside, and which needs to get inside your subnets and to the pods?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: But here the load balancer can be used for all the inbound traffic from the outside.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 41:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: That means if the Peered VPC needs to send traffic to your pods, there would be either network load balancer, or elastic load balancer, and because this is within the VPC, this load balancer can send traffic to the ports with this 164 IP range.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So ultimately it sends traffic to this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is what the custom networking is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: That means if you're limited by the IP addresses for your VPC, you can add the 164 range.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then using the SNAT, you can enable the traffic going to and from external network.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Hello, and welcome to this lecture, EKS Networking Summary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Just trying to summarize what we learned in this section quickly, and this is important for your exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So we saw that EKS control plane is launched in AWS-managed VPC and data plane is launched in customer VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now, EKS also provisions the EKS-owned ENI into the customer VPC and that's where the communication between the control plane and data plane happens.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: EKS cluster API endpoint which is a Kubernetes API, basically, is by default, publicly accessible because this is launched in AWS-managed VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon EKS
- Key Insights: But then EKS gives you control where you can configure this endpoint to be only accessible privately or publicly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon EKS
- Key Insights: There are multiple combinations of these settings and if you configure it to be only accessible privately, then it can be accessed from customer VPC via this EKS-owned ENIs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: EKS uses Amazon VPC Container Network Interface, that is CNI plugin for pod networking.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you know, CNI allocates private IP addresses to each pod from the available secondary IPs of those ENIs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Maximum number of pods per node depends on number of ENIs and number of IP addresses per ENI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we saw a mechanism where you could increase this number of IP addresses allocated to your pods.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And for that, you have to use something called prefix delegation and it is supported only on the Nitro-based instances, where for every IP addresses, you get /28 prefix for IPv4, that means 16 additional IP address, and /80 for IPv6 which gives you millions of IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, if you are exhausting the allocated VPC range for your pods, then you can use the custom-networking feature.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you can allocate the secondary CIDR to the VPC in the range 100.64.0.0/16, and then you enable the custom networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, there will be a second ENI created and that ENI will be part of the extended subnet from this range.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you use the SNAT feature at the node level so that your private IP address range from 164 is not exposed outside.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we saw the entire communication from within the pod to outside and from outside to the pod.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, CNI also allows pods to enable and disable SNAT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We saw this feature as well where if you want to reach directly to the internet, then either you can use instances in a public subnet and with external SNAT disabled, you can do that.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you want to really have your machines in a private subnet, it makes sense to use a NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in that case, external SNAT has to be enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we saw that with the architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS SAM
- Key Insights: Moving forward, by default, if you talk about the security group, then ENIs comes with the security group, and all the pods which are using the IPs from that ENI will use the same security group.
- Hidden/Implicit Meaning: Platform automation signal.

Line 24:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, that's a limitation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: Often you would want separate security group for your pods and in order to do that, you can use either the external network plugins like the Calico, or you can use Trunk and Branch ENI feature which also works with the Nitro system-based instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you want to expose the Kubernete services, then there are four ways: ClusterIP, NodePort, LoadBalancer, and Ingress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you know, ClusterIP is accessible from within the cluster only, NodePort is accessible outside and for that, you have to use Node IP address and a static port.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, not a great idea.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Essentially, you can use either LoadBalancer or Ingress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, LoadBalancer service typically work for layer four and Ingress for layer seven, but there are multiple implementation of LoadBalancer controller.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There is older controller.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: With that, you can use both CLP and NLP, but it is advisable that you use the newer controller that is AWS LoadBalancer controller.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: Elastic Load Balancing
- Key Insights: In that case you can use NLB in both instance mode as well as IP mode.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: And with Ingress you can use ALB and you can use all the ALB features like path-based routing or the host-based routing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So that's about the AWS load balancer controller.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, there is something called external traffic policy, which is set to cluster by default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But due to that, what happens that the client source IP is not preserved, because then kube-proxy sends the traffic to the other nodes and the source IP's replaced.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you want to make sure that the client source IP is preserved, then you can set the external traffic policy to the local, but then it may result in uneven load balancing because traffic cannot be sent to the other node service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these are few essential things that you need to remember for your exam and I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thanks for watching and stay tuned for the next sections.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/AWS Speciality/Security/09_Other Services/251_[SAA_DVA] Elastic Container Registry (ECR).txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Okay, so let's do a short intro to Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So Amazon ECR stands for Elastic Container Registry, and it's used to store and manage Docker images on AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So so far, we've been using online repository such as Docker hub but we can also store our own images on Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And actually you have two options for ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: We can store images privately, just for your account or your own accounts with an s or you can use a public repository and publish to the Amazon ECR public gallery.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: Now ECR is fully integrated with Amazon ECS, which is great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And your images are behind the scenes stored by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: So your ECR repository may contain different Docker images and then your ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And for example, an EC2 instance on your ECS cluster may want to pull these images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So to do so while we're going to sign an IAM role to our EC2 instance and this IAM role will allow our instance to pull Docker images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So of course, all access to ECR is protected by IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECR
- Key Insights: That includes that if you have a permission error on ECR have a look at your policies and then your containers are going to be started on your EC2 instance after they are pulled by your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: And this is how ECS and ECR ECR work together.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Now, Amazon ECR is great because on top of being a repository, it, supports image vulnerability scanning, versioning, image tags, and image lifecycle.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So overall, anytime you see storing Docker images think ECR and that should be it for you at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/167_Docker Introduction.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon EKS
- Key Insights: Hello, and welcome to this section on containers where we'll be talking about Docker, ECS and EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is Docker?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Docker is a software development platform to deploy apps.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The idea is that it's a container technology.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So apps are going to be packaged into containers and these containers are sort of standardized.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so they can be run on any operating system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: That means that your apps, once they're containerized they run the same way, regardless of where they run.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be any machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't have any compatibility issue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The behavior is predictable, which means that you have less work to do.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's easier to maintain and deploy and it should work with any kind of language any operating system and any technology.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for Docker are a microservice architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a good keyword to have in mind.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Lift and chip apps from on premises to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And anytime you wanna run a container, really.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does Docker work on an operating system?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, we have a server and in our case it may be EC2 Instances but it could be any kind of server and you're going to run a Docker agent.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then from there you can start Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so your first Docker container may contain a Java application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: And your second Docker container may contain a node JS application and Docker containers they can run multiple times the same.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 21:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: So you can have multiple Docker containers of the same Java application or multiple Docker containers of the same node JS application.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also run databases within Docker, for example My SQL and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Docker is very versatile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And from a server perspective all these things are Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So where do you store Docker images?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well you store them in something called a Docker Repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, we have multiple options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is Docker Hub and so it's a public repository and you can find base images for many technologies or operating systems such as Ubuntu, MySQL and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's very popular.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And then for more private integration you have Amazon ECR, Amazon Elastic Container Registry and you can run your private images on there but there's also a public repository option available on ECR called the Amazon ECR Public Gallery.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how is Docker different from a virtual machine?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, Docker is sort of a virtualization technology but not exactly, the purists will try to hit me if I say this, so the resources are shared with a host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: That means that you can share many containers on one server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you look at the architecture for a VM, you have the infrastructure then you have the host operating system then you have a hypervisor and then you have your apps and your guest operating system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so this is how, for example, EC2 works, for example, when you get an EC2 machine it is actually a virtual machine running on a hypervisor.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so this allows Amazon to offer many EC2 instances to many different type of customers and all these EC2 instances all these virtual machines are going to be separate.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: They're not going to share resources and they're going to be isolated, but for a Docker container you still have the infrastructure and the host OS which may be this time an EC2 instance then you have the Docker Daemon and then on top of it, you can have a lot of containers that can be lightweight running on top of the Docker Daemon.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this allows the containers to really cohabitate together.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They can actually share networking share some data and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it's a bit less quote unquote, secure as a virtual machine, but it allows you to run more containers on a single server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this is why we really like Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do you get started with Docker?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Well, first you have to write a Docker file, which is defining how your Docker container will look.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a base Docker image and we add some files and then we're going to build it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this will become a Docker image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And that Docker image, you can store it on a Docker repository it's called a Push and you push it to either Docker hub which is a public repository, or Amazon is ECR which is Amazon's version of Docker repositories.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you can pull back these images from these repositories and then you would run them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And when you run a Docker image it becomes a Docker container, which runs your code that you had built from your Docker build.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That is the whole process with Docker.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So how do you do Docker container management on AWS?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Well, the first one is called Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It's Amazon Elastic Container Service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's the own platform of Amazon for Docker management.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll have a look at it in deep dive.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Then we have Amazon EKS which is Amazon Elastic Kubernetes Service which is Amazon's managed version of Kubernetes which is an open source project.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll have a quick look at it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: We have AWS Fargate which is Amazon's own serverless container platform.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon EKS
- Key Insights: And Fargate works both with ECS and EKS and we'll do a deep dive of Fargate in this section.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And then we have Amazon ECR used to store container images as I showed you from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have an overview of how to do Docker and what is Docker and how to do Docker in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now let's do a deep dive onto Amazon ECS and the rest.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/168_Amazon ECS.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Okay, so now let's talk about Amazon ECS, and we're gonna get an overview into all different aspects of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the first thing I wanna talk to you about is the EC2 Launch Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So ECS stands for Elastic Container Service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And when you launch Docker Containers on AWS, you are launching what's called an ECS Task on ECS Cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And an ECS Cluster is made of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And with the EC2 Launch Type, well these things are EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And in that case, if you use an ECS Cluster with an EC2 Launch Type you must provision and maintain the infrastructure yourself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So that means that your Amazon ECS/ ECS Cluster is going to be composed of multiple EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: Now, these instances are a little bit special because each of them must run the ECS Agent, and then this Agent is going to register each, EC2 Instance into the Amazon ECS service and the specified ECS Cluster.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now, once you have that in place then when you start ECS tasks then AWS is going to be starting or stopping the containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: That means that whenever we have a new Docker container it's going to be placed accordingly on each EC2 Instance over time as you can see right here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And you can start or stop the ECS task, and it will be placed automatically.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So that's the EC2 Launch Type, and Docker containers are placed on Amazon EC2 instances that we provision in advance, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, there's a second launch type called the Fargate Launch Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And again, you launch Docker containers on AWS but this time you do not provision the infrastructure so there are no EC2 instances to manage it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: It's all serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because we don't manage servers but there of course, there are servers behind.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So, in the Fargate type, if we have an ECS Cluster we just create task definition to define our ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then AWS will run these ECS tasks for us based on how many CPU and RAM we need.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So when we want to run a new Docker container, simple as that, it's going to be run, without us knowing where it's run and without an EC2 Instance to be created in the backend in our accounts for it to work.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a little bit magic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then to scale, well you just need to increase the number of tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Simple, you don't need to manage any more EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: Amazon EC2
- Key Insights: And the exam loves to go and tell you to use Fargate because Fargate is serverless, and it's way easier to manage than the EC2 Launch Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Okay, so we've seen the two launch types for Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Now let's talk about the IAM Roles for ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So let's take an example of the EC2 Launch Type in which we have an EC2 Instance running the ECS Agent on Docker.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in this case, we can create an EC2 Instance Profile which is only valued of course if you use EC2 Launch Type.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon CloudWatch, Amazon EC2, Amazon ECS
- Key Insights: And it's going to be used by the ECS Agents only, and then the ECS Agent will use the EC2 Instance Profile, to make API calls to the ECS service to restore the instance, is going to make API calls to CloudWatch Logs to send container logs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: It's going to use the API calls to ECR, to pull Docker images from ECR and also reference sensitive data in Secrets Manager or the SSM Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And then our ECS tasks are going to get ECS Task Roles.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And so this is valued for both EC2 Launch Type and Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so here I have two tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: And we can create a specific role per task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So my first Task A will have an ECS Task A Role, and the first Task B and second Task B is going to have the Task B Role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Well, why do we have different roles?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Because each role allows you to be linked to different ECS services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS, Amazon S3
- Key Insights: And so, for example, the ECS Task A Role allows you to have your Task A, runs some API calls against Amazon S3.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB
- Key Insights: Whereas Task B Role allows you to run, again API calls against DynamoDB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And you define the Task Role in the task definition of your ECS service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon EC2, Amazon ECS
- Key Insights: So remember this, the distinction between EC2 Instance Profile Role and the ECS Task Role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Next, Load Balancer Integrations.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 43:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So in example, I'm in the EC2 Launch Type but it could be Fargate as well, of course, and have multiple ECS Tasks running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: It's all in the ECS Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And we want to expose these tasks as a HTP or HTTPS endpoint.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: Therefore we can run an Application Load Balancer in front of it and then our users will be going to the ALB and in the back end to the ECS tasks directly.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 47:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So in that case the ALB is supported and will support most use cases, and that's a good choice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: The Network Load Balancer is recommended only if you have very high throughput or high performance use cases, or as you learn later on in this course, if you use it with AWS Private Link.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 49:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Or, if you want to use the older generation Classic Load Balancer you can, but it's definitely not recommended because you don't get any advanced features and you cannot link your Elastic Load Balancer to Fargate.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 50:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Whereas if you're using the Application Load Balancer then it works of course, with Fargate.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 51:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So what about data persistent on Amazon ECS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: For this you need Data Volume, and they're different kinds but one of them is noticeable and that's EFS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So say you have an ECS cluster, and in this case are represented both the EC2 Instance as well as the Fargate Launch Type for my ECS Cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And we want to mount a file system onto the ECS task to share some data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EFS
- Key Insights: In that case, we use an Amazon EFS file system, because it's a network file system is going to be compatible with both EC2 and the Fargate launch types.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And it allows us to mount the file system directly onto our ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EFS
- Key Insights: Well then tasks running in any AZ linked to this Amazon EFS file system will share the same data, and therefore can communicate with another via the file system if they wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 59:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: Amazon ECS, Amazon EFS
- Key Insights: So the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's just provisioned in advance and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Amazon EFS
- Key Insights: So the use cases of using EFS with ECS is to do persistent multi-AZ shared storage for your containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/169_Creating ECS Cluster - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So let's have a look at Amazon ECS, and we're going to create our first cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side, let's click on Clusters, and then click on Create cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the cluster name can be whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, DemoCluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then under Infrastructure, we have the way to select how to obtain capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we have several options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the options is Fargate only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: This is serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't think about servers, and AWS will provide them for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: You have Fargate and Manage Instances, and Fargate and Self-managed instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: So this is the old way in which you manage your EC2 instances, and you have to create an auto-scaling group, and then you have to select the type of AMI that you want, the type of EC2 instance you want, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It's nice to see these options, but we're not going to go over this because now AWS is trying to move you away from self-managed instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: Fargate and Managed Instances is very similar in which we're also going to have Fargate, but also AWS is going to manage our EC2 instances behind the scenes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And here what we have to do is to create an instance profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you can click on Create new instance profile right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then this is for ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon EC2, Amazon ECS
- Key Insights: And this is for EC2 Role for ECS Managed Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And then this is called ecsInstanceRole.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And click on Create role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So my role already exists, so I'm going to just use this role right here, and I'm good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then for infrastructure role, I'm going to create a new infrastructure role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: You use this one, Infrastructure for ECS Managed Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: This is a new role, so I'm going to create this role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And now my role is created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back at it, I can just put it right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we are good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we have the instant selection.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So do we want to have the ECS default to choose based on the test definition and service requirements?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for a production workload, this is definitely necessary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or do you want to use custom?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here you would choose between the vCPU attribute and the memory, say how much min and max you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is more advanced.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And also, if you wanted to force, for example, a specific instance type, you would say Allowed instance type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you would say, for example, only t3.micro.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then you would only have t3.micro as part of these managed instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 40:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's quite nice because AWS is going to manage these instances for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can go and click on Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, to be compatible with the next lectures that I've done, but they're very similar things, instead of managing our instances, we'll have self-managed instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Here we're going to create a new auto-scaling group of on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We specify the instance type to be t3.micro.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And then we'll use the default role for the EC2 instance role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We say a maximum 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: No need for SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: We specify the min root EBS volume size of 30 gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we leave everything for network settings as defaults, and then click on Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So while this is happening, let's have a look at the auto-scaling group that is being created on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And then on the left-hand side, I will click on Auto Scaling Groups right here.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 52:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: And it's showing, as you can see, there was an auto-scaling group created for me called Infra-ECS-Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these are capacity 0, min capacity 0, max capacity 5.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And this was created directly by my ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the creation is in progress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And what this cluster has, we'll have maybe EC2 instances for me to launch tasks on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can see it's in three available two zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we know that the ECS tasks are going to be launched across three AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is just wait for this cluster to be created, which is the case now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what I can do now is explore this DemoCluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So if I click on it, I'm in the DemoCluster, and I can go to Services, are 0, tasks are 0 because we haven't launched anything yet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we go to the more interesting, Infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So if you go here to the Infrastructure, we have three capacity providers in this ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The first one is FARGATE.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: That means that we can launch Fargate task onto our ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The second one is FARGATE_SPOT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: That means that we can launch Fargate task in Spot mode, select Spot instances for EC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And the last one is a ASG provider.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Auto Scaling
- Key Insights: And this one means that we can launch EC2 instances in this cluster directly through this ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So it's managed scaling right now, and the current size is 0.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I can change it if I wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me show you what it would look like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I go here, I go to Details, and I would edit the desired capacity to be 1, just to show you what it's like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what's going to happen out of this is that an EC2 instance is going to be created, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when is created is going to register itself into the DemoCluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then I will see it under Container instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS, Auto Scaling
- Key Insights: That means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 78:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So what I'm going to do now is just wait for this instance to be in the running state and registered into my ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me refresh now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: My instance is in service, and it's t2.micro.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And if I go back into my Amazon ECS cluster, it is registered as a container instance that is currently, of course, running 0 tasks, and has 1024 CPU available, and 982 memory available.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So this is giving me the capacity of this instance, and I can launch, as you'll see, tasks on it until the capacity runs out.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we have an ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've seen two capacity providers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Three.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: We've seen the container instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's go ahead and do run our first service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture to do that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/170_Creating ECS Service - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So now let's create an ECS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But before we do so, we need to create a task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So I'm going to create a new task definition from the task definition panels, and I need to give it a name.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'll call this nginxdemos-hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is coming from this docker image called nginxdemohello on docker hub.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this is the one we're going to be using in our demo.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is why I call my test definition nginxdemo with a hyen of hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next we need to choose the infrastructure requirements.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So do we want to launch on Fargate or Amazon EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: Well, Fargate is serverless compute, so we'll leave it enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And if we enable this, we could launch this task, this service on our Amazon EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: But for simplicity's sake, right now I'm just going to use AWS Fargate and launch our containers in two serverless compute mode.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we need to choose what type of OS and architecture we have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Linux is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And what is the task size for our Fargate container?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can say for example, that we have 0.5 or one vCPU, and you can go up to 16 vCPU in this example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can also adjust memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can say, hey, I want up to, for example, 120 gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: So all of this would be provided by Fargate in a serverless fashion.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To keep things very cheap and simple, I will choose 0.5 vCPU, and one gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: Next we have task role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: So task roll is an IM role that we can assign to our task if we wanted to make API request to AWS services.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: But because we don't do this right now, we are not going to specify a task role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But this is something of utmost importance if your containers need to use AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Now for the task execution role, leave it as default and if this ECS task execution role is not created yet, it's going to be created automatically by ECS service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Next our container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the name is going to be nginxdemos-hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the image URL is going to be nginxdemoshello/hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is going to pull automatically this image from the docker hub right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So this is very handy and it's an essential container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we have lots of different options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, the port mappings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we want to map the port 80 to the port 80 of the container, which is great, and we'll leave it as is.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you could add more port mappings if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You could for example, set the resource allocation limits, the environment variables from file or manually and the logging.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But all these things I'm gonna leave as default because this is going to work fine for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Storage, Fargate comes with some ephemeral storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll leave it as is again, from 21 gigabytes, which is a default right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is fine, just leave the value you have right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's create this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this is creating our first task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you see version two for me because I've just created it twice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But for you, you should see version one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So next, let's launch this task definition as a survey.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go into clusters and then demo cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And under services, I'm going to create a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I should specify the details of the service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So first we're going to select a task definition family.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll choose the nginxdemoshello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then you choose whatever task definition revision is available for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I choose the latest, which is number two for me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then service name, you can keep this or you can remove this, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now the service name is going to be created on this cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: We need to choose the compute configuration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we'll use capacity provider strategy, we'll leave it as default, and then we'll use Fargate to launch our own services and tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, platform version will leave it as latest as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We don't touch any of these.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Deployment Automation
- Services: AWS Config
- Key Insights: For the deployment configuration, which is replica.
- Hidden/Implicit Meaning: Platform automation signal.

Line 60:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we'll have a number of tasks across our cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And right now we want one task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But if you wanted more tasks, for example, select four, and you would have four containers of your nginxdemo available to you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we wanna keep it small to keep the cost at a minimum.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we leave everything as is for AZ rebalancing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: This is an ECS feature to rebalance in case you have too many tasks in one specific AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: We don't touch any of the deployment options or this.
- Hidden/Implicit Meaning: Platform automation signal.

Line 67:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For networking we're gonna go in here, we're good with these subnets, we're going to create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can keep this name, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to allow HTP traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This allows us to access the port80 of our nginx service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next we'll use public IP turn on, yes, perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then for load balancing, we're going to allow load balancing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: To have a load balancer we have an application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's going to be connected to our port80 of our nginx demo.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: We're going to create it, I'll call it DemoALBForECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Listener on port 80, And then we're going to create a new target group, nginxdemosTG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: On port 80, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we will not touch the VPC lattice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Elasticity and Availability
- Services: Amazon CloudWatch, Auto Scaling
- Key Insights: We will not touch the service auto scaling since we wanna scale up and down based on the CloudWatch alarm.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We will not set up any volume.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll just go ahead and create this service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So our service has now been deployed successfully.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's click on the service and have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So as we can see right now we have one desired task and one is running and the status is active.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is really good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we can see that the service is linked to a target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So I click on the target group, and in the target group itself, we can see that it's linked to our demoALB, which is the application balancer that was created as part of this service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it looks like one IP address is registered as a target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this is the IP address of my container, which is very good.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 90:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So now if we have a look at this load balancer itself, it is active, I can copy the DNS name and then open a new tab and paste it.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I get the nginx welcome page, which is very good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means that everything is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: The server address is the exact same as the IP we have registered in here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the private IP, which is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what else?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So if we go under the service itself, now we can have a look at tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 97:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So as you can see, one container is running right now, and this is this one task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 98:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And I can click on it and have a look at this task itself.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Container Runtime Operations
- Services: AWS Config
- Key Insights: So it tells me the configuration, the task revision, where it's been launched, the private IP, the containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 100:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: We can have a look at logs to know the logs of our nginx container as well, which is good.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we look at the service itself, so we are on the service, and then we go to events, we can have a look at what were the events of this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So that means that we have one task that has been started.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 103:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: It was registered in Atari group, and then it's been complete deployment, and now we have a steady state.
- Hidden/Implicit Meaning: Platform automation signal.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see in this, I can go to slash test for example, and the URI will change in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So nginx is working as expected.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now what we can do, because we're under ECS, is that we have a look at our task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 107:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have one of them, but we can launch some more.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So I will show you how easy it is to launch more tasks with Farget.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's update this service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And now the desired number of task is going to be three.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So one per AZ, for example, and the rest I will just leave as is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So we'll leave the test definition to the same.
- Hidden/Implicit Meaning: Platform automation signal.

Line 113:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: AWS Config
- Key Insights: We'll leave the compute configuration as Fargate and load balancing does not change in terms of health checks and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's just click on updates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And now what's going to happen is that we have asked the ECS service to run two more tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 116:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So if I refresh this and wait a little bit, now we have two more tasks being provisioned and they are provisioned on the Fargate engine.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 117:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So that means that behind the scenes, AWS is going to provision automatically the resource that it needs to launch these tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're pending.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now they're activating, and now they're running.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this was very quick actually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if I go under here and now refresh this page, as you can see, the IP address is changing every time I refresh.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the application balancer is distributing the load between all my containers on ECS, which is great.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 124:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: So this is quite powerful, and we just demonstrated the scaling of ECS while scaling up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And just to scale back the demo and save on cost, we can update the service here and have the desired number of tasks to be zero.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 126:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: This way the service is still there, but we don't have any containers running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 127:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And under my application my auto scaling group, sorry, then I'm going to click on this and make sure the desired capacity is also zero.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 128:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: This way we are sure not to be running any type of instances on our EC2 cluster for ECS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So now you can verify this, that the tasks are gone and you're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 131:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And you can look at the events to see what has ECS done while we were asking it to update the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We've seen how to create an ECS cluster, we've seen how to create an ECS service on Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/171_Amazon ECS - Auto Scaling.txt

Line 1:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: So now let's talk about ECS Service Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So as we can see, we can manually increase the number of ECS tasks in our service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: But we can also automatically increase or decrease the number of tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: For this, we can leverage the service called the AWS Application Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have three metrics we can scale on using the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We can scale on the CPU Utilization of the ECS Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We can scale on the Memory Utilization, which is the RAM of the ECS Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: Or, the ALB Request Count Per Target, which is a metric coming from the ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So only these metrics you have to remember.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: Then, you can set up different kind of auto scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can set up Target Tracking to track for a specific target for the three metrics shown above.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Or Step Scaling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: Or Scheduled Scaling, if you wanted to scale your ECS Service ahead of time thanks to predictable changes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Amazon ECS
- Key Insights: Remember, that scaling your service, your ECS Service, at the task level is not equal to scaling your cluster of EC2 instances if you are in the EC2 launch type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability, Serverless Execution Model
- Services: Amazon EC2, Auto Scaling
- Key Insights: And so therefore, that's why when you don't have an EC2 auto scaling that's necessary, when you don't have EC2 instances in the backend, then using Fargate makes service auto scaling much easier to set up, because everything is serverless.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And it's why I'm fan of Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the exam is pushing you to use Fargate a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for the EC2 launch type, how can we actually scale the EC2 instances in the backend if we're using it?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have multiple ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: We can use an Auto Scaling Group Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 21:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And so we scale our ASG, for example, based on CPU Utilization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then we can add EC2 instance over time if the CPU skyrockets.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Or, we can use the newer and more advanced feature called the ECS Cluster Capacity Provider that we've seen before in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And with this one, the Capacity Provider is very smart.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Auto Scaling
- Key Insights: And as soon as you lack capacity to launch new tasks, it's going to automatically scale your ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: So the Capacity Provider is paired with a Auto Scaling Group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then when you're missing RAM or CPU, there you go, EC2 instances are created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the second option is the smarter way of doing things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Amazon ECS, Auto Scaling
- Key Insights: So if you have to choose between Auto Scaling Group Scaling and ECS Cluster Capacity Provider, please use ECS Cluster Capacity Provider for your EC2 launch type.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we have a Service A with two tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have CPU Usage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And it's going to be auto scaled by the AWS Application Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 34:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon CloudWatch, Amazon ECS, Auto Scaling
- Key Insights: But let's assume we have more users, and therefore your CPU usage goes really up, then your CloudWatch Metric, which monitors the CPU Usage at the ECS service level again, is going to trigger a CloudWatch Alarm, which will trigger a scaling activity in your Auto Scaling for your ECS service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 35:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The desired capacity will increase for your ECS Service, and a new task will be created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And optionally, if this service is running on the EC2 launch type, then the ECS Capacity Providers can help you scale your ECS cluster backed by EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/172_Amazon ECS - Rolling Updates.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now let's talk about how do you update an ECS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this we have rolling updates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So when you update an ECS service from v1 to v2, you can control how many tasks will be started and stopped at a time and in which order.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So when you have an ECS updates, when you select a new task definition number and you want to update an ECS service, you will have two settings, the minimum healthy percent and the maximum percent.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So by default they're one and 200 but let's see what they mean.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So your ECS service, for example, this one is running nine tasks represents an actual running capacity of 100%.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then if you set a minimum healthy percent of less than 100, this is going to say, "Hey you're allowed to terminate all the tasks on the right hand side, as long as we have enough tasks to have a percentage over the minimum healthy percent." And in the maximum percent shows you how many new tasks you can create of the version two, to basically roll updates your service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is how these two settings would impact your updates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so you will go ahead, create new tasks, then terminate all tasks and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: All to make sure that all your tasks are going to be terminated and then updated to a newer version.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's discuss two scenarios.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: For example, we have min at 50% and max at 100% and we start with four tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: In this case, we're going to lose four tasks to be terminated so that we're running at 50% capacity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then two new tasks are going to be created, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we're back at 100% capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then two old tasks are going to be terminated, we're back at 50% capacity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And two new tasks are going to be created, we're back at 100 capacity.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have done a rolling updates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: In this case, we have been terminating tasks because we set the minimum to 50% and the maximum to 100%.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: If we're doing minimum at 100% and maximum at 150% then we start with four tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: We cannot determine a task because the minimum is 100%.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Therefore we can go into create two new tasks and this will bring our capacity to 150%.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then because we are above the minimum 100% we can terminate two old task and we're back at 100%.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then we will create two new tasks and finally, terminates two old tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And this will have performed our rolling updates for our ECS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So just something you should know, if you read lecture going into the exam this could be happening at one question only.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/173_Amazon ECS - Solutions Architectures.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now let's talk about a few solution architectures you can encounter with Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the first one are ECS tasks invoked by Event Bridge.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon S3
- Key Insights: So for example, say we have an Amazon ECS cluster, it's backed by Fargate, and we have S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Our users are going to upload objects into our S3 buckets, And these S3 buckets can be, for example, integrated with Amazon Event Bridge to send all the events to it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And Amazon Event Bridge can have a rule to run ECS tasks on the go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB, Amazon ECS
- Key Insights: Now, when ECS tasks are going to be created, they will have an ECS task role associated with them, and from the task itself what it can do is that it can get the objects, process it, and then send the results into Amazon DynamoDB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And that is thanks to the fact that we have an ECS task role associated with it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: Amazon S3
- Key Insights: And so effectively here, what we've done is that we've created a serverless architecture to process images, or to process objects, from your S3 buckets using a Docker container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB, Amazon ECS, Amazon S3
- Key Insights: And that is using Amazon Event Bridge ECS in the Fargate mode, as well as an ECS task role to talk to Amazon S3 and Amazon DynamoDB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Another architecture using, again, Event Bridge, is to use an Event Bridge schedule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we have an Amazon ECS cluster backed by Fargate and Amazon Event Bridge, and we schedule a rule to be triggered every 1 hour.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now, this rule is going to run ECS tasks for us in Fargate, and so that means that every 1 hour, a new task will be created in our Fargate cluster, and the task can do whatever we want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: AWS Batch, Amazon ECS, Amazon S3
- Key Insights: For example, we can create an ECS task role with access to Amazon S3, and therefore our task, our Docker container, our program can, for example, do every 1 hour some batch processing against some files in Amazon S3.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: And again, all of that architecture is fully serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: A last example is using ECS and an SQS queue, so we could have a service on ECS with two ECS tasks, and messages are being sent into an SQS queue, and the service itself is pulling for messages from the SQS queue, and processing them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: We can enable ECS Service Auto Scaling on top of this service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 17:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: That means that, for example, the more messages we have in our SQS queue, the more tasks we're going to have into our ECS service, thanks to auto-scaling.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Another integration is when you want to use Event Bridge to actually intercept events from within your ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, for example, say you wanted to react to tasks being exited.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: In that case, any task exiting or starting in your ECS cluster can be triggered as an event in Event Bridge, and it will look like this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: For example, the ECS task state change for "stopped" and the stopped reason.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then from there, for example, we could alert an SNS topic and send emails to your administrators.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So, bottom line, Event Bridge does allow you to understand the lifecycle of your containers in your ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/174_Amazon ECS Task Definitions - Deep Dive.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now let's talk about Amazon ECS Task Definitions, but in depth.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So you define them in JSON form but through the console there is a UI to help you create the JSON, and the task definition tells the ECS service, how to run a or multiple Docker containers on ECS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And there is crucial information within your task definition, such as the Image Name, the Port Binding for the Container and the Host, if you're on EC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The memory and the CPU required for your container.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: AWS Config, Amazon CloudWatch
- Key Insights: The environment variables, the networking information, the IAM role attached to the task definition, and the login configuration such as, for example, CloudWatch.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So there's more information as well but these are the most important and the exam will test you on a few of these.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I will do a deep dive on some of that in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: We have an EC2 instance, and because it is registered with an ECS cluster, it has to be running the ECS agent.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Next, we're going to run a Docker container through ECS test definition, for example, an Apache HTP server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have to expose that server to the internet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Therefore, we are going to define a container port on 80, meaning that on the container , the port 80 is the one that is exposing the HTP server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But then we have also the host port because we are on EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: If we were on Fargate, that would not be relevant, but we are on EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And therefore we need to map this container port to a host port, which is for example, could be 80 but it could be also at 8080.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So they don't have to be the same.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And then thanks to the host port, then the internet or an external network communication is able to access the EC2 instance, on port 8080, the host port, which is going to be directed to the container port 80, and then will get access to the HTP server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And you should know that you can define more than one container per task definition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: You can define up to 10 containers per task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So let's do a deep dive onto first the container port.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if you have load balancing and you're using the EC2 launch type, then you're going to get what's called a Dynamic Host Port Mapping.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: If you define only the container port and the task definition.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let me explain.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we are running for example, an ECS task, and all of them have the container port set to 80 but the host port set to zero, meaning not set.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: What's going to happen is that the host port only is represented in this diagram, but the host port is going to be random, is going to be dynamic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And so, each ECS task from within the EC2 instance, is going to be accessible from a different port on the host, the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: And therefore, if you define an application of that answer then you may say, well, it is difficult for the ALB to connect to the ECS test because the port is changing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: But the ALB when linked to an ECS service knows how to find the right port, thanks to the Dynamic Host Port Mapping feature.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: And so, the ALB, automatically thanks to the ECS service, knows to connect to different ports onto different instances automatically.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: And so this setup works, but it does not work with a classic load balancer because it is older generation.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 32:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this logic only happens with the ALB.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: And so therefore from a security perspective, well the EC2 instance security group, must allow any port, from the ALB security group, because we don't know in advance what is going to be the host port mapping.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So that was for the EC2 launch type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But now what happens when we have the Fargate launch type?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Well, each ECS task is going to get a unique private IP this time.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so, because this is Fargate, there is no host, and therefore we only have to define the container ports.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 38:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And so if you look at your ECS cluster, then for example, with four tasks each task is going to get its own private IP through an Elastic Network Interface or ENI.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: And then each ENI is going to get the same container ports.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 40:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so this is a setup you're going to get with Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Elastic Load Balancing
- Key Insights: And therefore, when you have an ALB, then to connect to the Fargate task, it's just going to connect to all all of them on the same port on port 80.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 42:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: So there is the ECS ENI Security Group that needs to allow port 80, from the ALB security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Operational Guardrails
- Services: Elastic Load Balancing
- Key Insights: And then the ALB security group needs to allow just to port 80 or 443, if you have SSL enabled, from the web.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Next, the exam will ask you about IAM roles within ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: And you should know that IAM roles are assigned per task definition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 46:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So you have a task definition and then you assign an ECS task role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon S3
- Key Insights: And this will allow you, for example, for your ECS tasks out of your task definition, to access the Amazon S3 service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And therefore when you create an ECS service from this task definition then each ECS task automatically is going to assume and inherit this ECS task role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: But you should know that the role is defined at the task definition level, not at this service level.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 50:
- Concepts: Container Runtime Operations
- Services: Amazon S3
- Key Insights: And so, therefore all the tasks within your service, are going to get access to Amazon S3.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: And if you define another task definition, you can add another role on it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Operational Guardrails
- Services: Amazon DynamoDB
- Key Insights: And this role, for example, can access DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And if you were to create another service, then that service would assume this other role and you would be good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So the exam will ask you, where do you define an IAM role for ECS task?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the answer is, on your task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, you have environment variables.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, your task definition, can have environment variables and they can come from multiple places.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can hard code them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, you set them directly from within the test definition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And for example, this is when you will have a fixed non-secret URL.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon ECR, Amazon RDS
- Key Insights: But then if you have sensitive variables, such API keys or shared configs, or for example, database passwords, then you can use either the SSM Parameter Store, or Secrets manager, to store these values.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And you reference them from within the ECS task definition and upon launching an ECS task then these values are going to be fetched and resolved at run time and injected as environment variables, within your ECS task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon S3
- Key Insights: Finally, there is a last option where you load your ECS environment variables directly from an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is called a bulk environment variables loading through a file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Next we have, how do we share data between ECS tasks?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon ECS
- Key Insights: So, as I said, an ECS task can contain one container but also you can define multiple containers in the same task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 67:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And you would do that because sometimes, your side containers also called side cars can help you with lugging, with tracing and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, it's a common pattern.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But sometimes, well for example, for lugging and for metrics and so on, these containers need to share some files together.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And therefore, we must mount a data volume onto both containers, and then they will be able to share data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 71:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And so, this data volume, bind them out, works for both EC2 and Fargate tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 72:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So let's imagine we have an ECS task and we have the application containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be one, it could be many.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then some side car containers, for example the metrics and logs container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: You're going to create a bind mount, and it's going to create a shared storage that you have to define between your task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And you say, for example, it is /var/logs and so therefore your application containers are going to be able to write to this shared storage, and your metrics and log container can read from these shared storage.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is the whole idea behind the bind mount.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So if you use EC2 tasks then the bind Mount itself is the EC2 instant storage.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 79:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And therefore the data of that mount is tied to lifecycle of the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 80:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Or, for Fargate task, then you use ephemeral storage, and the data is tied to the container, a lifecycle using them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so whenever your Fargate task disappears, then your storage disappears as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 82:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, on Fargate you get from 20 gigabytes to 200 gigabytes of shared storage, so it gives you lot of space for different use cases.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So between them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So the basic use case, especially from the exam perspective is to share data between multiple containers or when you have a side car container where the side car is used to, for example send metrics or logs to other destinations.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it needs to read from a shared storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So that's it for the Amazon ECS task definition, deep dive.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/175_Amazon ECS Task Definitions - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So let's have a look at all the option for creating a task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So here is a family name, so I'll call this one wordpress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have to choose infrastructure requirements.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So we can launch on Fargate and we can launch on Amazon EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be either or both.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And based on the options, if it's Fargate then we have to choose CPU, and memory increments are compatible with Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But if it's Amazon EC2 instances then you can enter whatever value you want for memory and CPU.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's one difference.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And of course, if you are on Fargate then the network mode has to be AWS VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But if you're only on EC2 then you have the option to choose a more advanced network mode.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Just something to know about.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: Then, task role are very important because they allow your container to make API calls to IWS services and to get automatically an IAM role for this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So this role is pretty big at the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: The task execution role is an IAM role specifically for the container agent to make AWS API requests on your behalf.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So this is more of a standard role for ECS, whereas the task role is really the role you're going to use for your ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Okay, next container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So you can have as many containers as you want in your ECS task definition, but one of them at least has to be an essential container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means you enter a name, for example, wordpress, and the image URI is WordPress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And yes, this is an essential container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And you can add more containers at the bottom.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: As you can see right here, I have Container 2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, if you set a container as essential that means that if the container fails for whatever reason and is killed, then because this's an essential container all the task is going to be stopped.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: If this is not an essential container then it can be stopped and the task will still go on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it depends on what your application does to know whether or not a container is essential.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So now we have Container 1, and it pulls an image from here and this URI.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, we can have the image in the private registry if we want to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, for this you need authentication.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And so, we just enter the Secrets Manager ARN for this secret, and we can pull these images from a secret repository, from private repository instead of public one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next we have port mapping.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So this is where you define all the ports for your containers, and the protocols, the port name, and the type of protocol we have.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So HTP, HTP2, GRPC, or none.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you can add as many port mappings as you want, which is very handy if your application is exposing several ports.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: Next, you have some files around if you want to limit the number of VCPUs, and memory, and the hard and soft limits, which makes sense if you have multiple containers that run next to each other.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, for environment variables you can add them individually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can say, for example, the FOO is equal to value BAR, so this's the name and this is the value.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: But also, we can have them from a secret manager.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So for example, this one is going to be called SECRET_DB_PASSWORD.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's the name of this environment variable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And then we do value from, and here you add the ARN of the secrets manager secret that has this value, the SECRET_DB_PASSWORD.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So this is for secrets manager, but also for the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is when you set the environment variables directly from here, or you can add them from a file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And this file is a file that is going to be hosted on Amazon S3, so good to know.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, for logging.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So logging can be log collection, and this is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon OpenSearch, Amazon S3
- Key Insights: And you can send it to CloudWatch or to Splunk, or Firehose, or Kinesis Stream, or OpenSearch, or S3, all via something called AWS FireLens or directly to CloudWatch natively.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: And if you use CloudWatch then we have to specify the log group, the log region, the stream prefix, and whether or not we want to create the group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: But you can also add more log configuration values if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: HealthChecks make sure that your container is still healthy if you wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Timeouts, make sure that you have a start and a stop timeout.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Stop timeout you get killed before it properly ends, and start timeout is that if it doesn't start fast enough then it gets killed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: We can set some Docker configuration, Docker labels, and specific resources, but these are less important.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So as we said, \we can have as many containers as needed, essential or not.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we can provide more storage for our containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: So it could be a bind mount or an EFS file system that we mount.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: So bind mount is saying, "Hey, what's the volume name?" And then we can add multiple volumes if we wanted to, some of them would be EFS, for example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's up to you to how you wanna mount your data.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then you have the container mount points that you define and you say, "Okay, which path I wanna mount my volume on," and then where the volumes can be from.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It could be mounting a volume from another container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Container Runtime Operations
- Services: Amazon EFS
- Key Insights: So this's all described in detail in the documentation, but what you have to remember is that you can mount data from EFS or from a file system directly onto your containers, or from containers onto each other.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Operational Context
- Services: AWS X-Ray
- Key Insights: From monitoring, we can also enable trace collection to send data into AWS X-ray through a sidecar called the AWS Distro for Open Telemetry.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And automatically the CPU and memory will be adjusted to add for this sidecar.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: Amazon CloudWatch
- Key Insights: And we can also collect metrics and send them into CloudWatch or Managed Service for Prometheus, using different kinds of libraries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, this is to send your metrics into a central place if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: AWS Config
- Key Insights: So we've seen everything in terms of how we configure our tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you click on Create and you can review all the settings directly from the JSON, if you wanted to have a look at the JSON itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to have a look at the data itself you would just create a new revision and then, again, modify them one by one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Container Runtime Operations
- Services: AWS Config
- Key Insights: But we've seen how to do a full task definition configuration using the console.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/176_Amazon ECS - Task Placements.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So a new concept you need to know for the exam is the concept of ECS tasks placements.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So when you create a task of type EC2, ECS must figure out where to place the task based on the available memory, CPU and ports on your target EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 3:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So for example, here is our ECS cluster made of three EC2 instances and some tasks are placed on each instance in some ways.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: If the ECS service has a new container a new task that it wants to place on your EC2 instances, it needs to figure out where to place it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's the big question mark.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So similarly, whenever a service scales in I mean that we remove an ECS task, the ECS service needs to determine which ECS task to terminate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So to assist you with this you can define what's called a task placement strategy and task placement constraints.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this will guide where this new container will be added or where a container will be removed from.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: This is only working for when you use ECS launched on EC2 instances, not for Fargate, because for Fargate AWS figures out for you where to start the container and you don't manage any backend instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So this is only valid for ECS on EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now let's talk about the task placement process.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So the first thing to note is that task placement strategies are a best effort.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to have constraints we'll see this very very soon.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So when ECS places tasks it will use the following process to select where to place it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: The first one is that it will identify instances that satisfy the CPU, memory and port requirements in the task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So figure out where it can place the task in the first place.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then it will look at the task placement constraints that we'll see in this lecture.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then finally, it will try to identify the instance that satisfies best the task placement strategy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then it will select that instance for the task placement and place the task there.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So now let's talk about what these task placement strategies are.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one that you need to know for the exam that comes up is called binpack.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And binpack will place tasks based on the least available amount of CPU or memory.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And this is to help you minimize the number of instances in use.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this will bring you cost saving.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you want to define a binpack placement strategy this is the JSON that's according to it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It says binpack on the field memory so RAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And so that means that if we have one EC2 instance, it's going to try to fill up that EC2 instance all the way with containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And then when it can't put any more containers on that one EC2 instance, it's going to place EC2 containers on another EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So as you can see here we are placing as many containers as possible on one EC2 instance before moving on to the other.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: That's why it's called binpack because it packs all the containers together.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And that's the strategy that brings the most cost saving because it will minimize the number of EC2 instances in use and try to maximize the utilization of one EC2 instance at a time.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Next the task placement strategy for random.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So here very simple, it places the tasks randomly.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we look at this placement strategy in JSON it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And so say we have two EC2 instance and tasks are being added then they would just be placed randomly.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there is no logic to it, just random, very very simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Not an optimal strategy, but one that works really great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The last placement version to be aware of is called spread.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: So say we have three EC2 instances and they are in three different availability zones.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 48:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then, if we do a spread the task will be spread based on the specified value.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: So for example, that value could be instance ID or ECS availability zones and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this example I'll make it very simple and understandable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: We choose a placement strategy of spread on the ECS availability zones.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 52:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: That means that the task will be spread evenly across AZs.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So my first task may be on AZ-A then AZ-B, then AZ-C.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so they're spread as you can see on each AZ and then it will start all over again.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Amazon ECS
- Key Insights: So with this, we have basically maximized the high availability of our ECS service by spreading the task on the EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 56:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, these task placement strategies they can be mixed together.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So we can have a spread on availability zone and then a spread on instance ID or we can have a spread on availability zone and then a binpack on memory.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is possible for you to mix and match.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the exam should test you only on the basics.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So understanding the difference between binpack spread and random.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then we have ECS task placement constraints to bring constraints to how tasks are being placed.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So, the first one is called distinctInstance and we are seeing through the ECS service that each task should be placed on a different container instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 63:
- Concepts: Compute Platform Design, Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: So you will never have two tasks on the same instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Platform automation signal.

Line 64:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And this is defined by this JSON called placement constraints distinctInstance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then there is a second task constraint called memberOf and we want to place task on instances that satisfy an expression that can be defined in the cluster query language, which is pretty advanced.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so I'll just give you one concrete example of it and that should be enough going into the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 67:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So for example, we do a placement constraint here and we wanna say that the instance type must be of type t2.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 68:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so what we are saying here is that all these tasks should be placed only on t2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Runtime and execution-path signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the kind of constraints you can use with a memberOf.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So we have distinctInstance which is very easy to understand and memberOf with a more complicated cluster query language to force your task to be for example only on EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/177_Amazon ECS - Clean Up - Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's make sure to destroy everything before we're done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first, we need to stop the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So to stop the service, make sure you have zero tasks running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: If not, you update the service and you set the desired task to zero.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can click on Delete Service, type in Delete, and this will delete the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, when you delete the service, this is actually going to go into a service called CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And CloudFormation is going to take its time to delete the entire stack that it created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And so part of the thing it's going to delete is the ECS service, but also you LoadBalancer Listener, you LoadBalancer itself, the security group, and the target groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this can take a little bit of time and we need to wait for everything to be deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when the service is fully deleted, then you can go and delete this cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, you just click on Delete Cluster and it's going to delete the demo cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we can do this right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS CloudFormation, Amazon ECS
- Key Insights: And again, this is going to start something in CloudFormation to delete the infrastructure of the ECS cluster.
- Hidden/Implicit Meaning: Platform automation signal.

Line 14:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So that includes the capacity provider, the auto-scaling group that we have created, the cluster, and the launch templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is very good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Finally, for your task definition, you can leave them as is.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They don't cost you any money, they're just definitions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to, you could also click on one of them and deregister.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Do Action and deregister the test definition itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/178_Amazon ECR.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Okay, so let's do a short intro to Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So Amazon ECR stands for Elastic Container Registry, and it's used to store and manage Docker images on AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So so far, we've been using online repository such as Docker hub but we can also store our own images on Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And actually you have two options for ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: We can store images privately, just for your account or your own accounts with an s or you can use a public repository and publish to the Amazon ECR public gallery.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: Now ECR is fully integrated with Amazon ECS, which is great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And your images are behind the scenes stored by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: So your ECR repository may contain different Docker images and then your ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And for example, an EC2 instance on your ECS cluster may want to pull these images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So to do so while we're going to sign an IAM role to our EC2 instance and this IAM role will allow our instance to pull Docker images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So of course, all access to ECR is protected by IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECR
- Key Insights: That includes that if you have a permission error on ECR have a look at your policies and then your containers are going to be started on your EC2 instance after they are pulled by your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: And this is how ECS and ECR ECR work together.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Now, Amazon ECR is great because on top of being a repository, it, supports image vulnerability scanning, versioning, image tags, and image lifecycle.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So overall, anytime you see storing Docker images think ECR and that should be it for you at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/179_Amazon ECR - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: One thing that can come up in Amazon ECR is how to use the CLI to pull and push images to Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first, there is a login command and this login command is going to give you docker credentials for your docker CLI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So the idea is that you use the AWS ECR get login password command line in the face and I will demo it to you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then you pass the output of that command into a docker login command, which is going to allow docker, your docker CLI on your computer to connect to your private repository on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And once you have done that, then you can run some basic docker commands to pull and push images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to push an image, we just do docker push and we specify the account ID and the region of Amazon AWS as well as your image name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And to do a pull well is the same with docker pull.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you cannot push or pull a docker image, then that means that you don't have the right IM permissions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let me demo these cammands to you so you understand what I'm talking about.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in our test definition from before we were running a image, okay and this image was called nginexdemos/hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And to type this, you're going to land on hub.docker.com.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And so this is why when we downloaded this image it was directly ending a up on ECS through this docker hub.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So actually our EC2 instance was pulling an image from the docker hub.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: But say we wanted to host that image for reasons onto our private ECR repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Therefore we would go into Amazon ECR and then we would create a private repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we would name it something, for example, demostephane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Okay, next you can see different options for Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: For example tag immutability that prevents you to push the same tag twice, or image scan to scan your images on push to make sure they don't have any kind of security issues.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Although there is a deprecation of this feature, and it's better to use registry level scan filters which is called Amazon Inspector.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And finally, whether or not you want to encrypt your Amazon ECR repository with KMS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I will just leave everything disabled and I will go ahead and create my repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can see we have public and private repositories.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the difference is that public repos are going to allow anyone to pull our images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whereas private repos allow just us with the right IM permissions to pull some images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay so here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We're going to click on this repo and as we can see, we have 0 images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can click on push commands and these commands are going to be different if you have Mac or Linux or Windows.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we're going to use the one for Mac and Linux, but again, if you're on Windows and you want to follow along, then just use these comments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So the first thing to check is whether or not docker is enabled and running, and you need to have docker running on your computer and installed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I won't show you how to do this, but for me it is running right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if I do docker version I have a recent version of docker.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next thing to set up, obviously your CLI and then you will be able to run this command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this command and I'm going to paste it in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then it says, login succeeded.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I did this command only on its own, okay.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If I did this get login password, it's going to give me a password that's going to be used by my docker login command with the username AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so therefore this password is going to get passed all the way into this command right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm logged in and this is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And next, what I need to do is to build tag and push images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we don't have anything to build, but what I'm going to do is pull this image and then rename it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do docker pull as well as the nginexdemos/hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it's going to pull the image for me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I already pulled it, but for you it would go into a download.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you need to do what's called a docker tag command.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you do docker tag you paste this command, you paste it in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the first thing we're going to change.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're going to actually rename the first one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first bits, and we're going to do docker tag and we paste in nginexdemo/hello latest into, well this thing, which is my repository name, my image name as well as my tag.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So lets press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that means that this image right here has been also renamed to be like this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because if you do docker push.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And then you paste in this whole image then docker is smart enough to know that it should be pushing into our Amazon ECR repository.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's try it out.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, the image is being pushed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so it pushes data into AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now this is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And this worked because I was currently and correctly authenticated with my ECR repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if I wasn't I would get an IM permission issue right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so if we refresh this, as we can see we see in my repository demostephane the latest image for my image named demostephane and you can click on it and use some information.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now thanks to this image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: I could go ahead set up my own task definition with this image.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And it would be pulling directly this image from the ECR and not from the docker hub.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/180_AWS CoPilot - Overview.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So Copilot is not a service, it's a command line interface tool that is going to be used to build, release and operate production-ready containerized applications.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The idea is that we want to remove the difficulty of running apps on AppRunner, ECS and Fargate, by just using a CLI tool to deploy to these environments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS, Amazon Lex, Elastic Load Balancing
- Key Insights: So it helps you focus on building the app rather than setting up the infrastructure and all the complexity of the infrastructure such as ECS, VPC, ELB, ECR, and so on, is done for you by Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: (none explicit)
- Key Insights: On top of it, if you wanted to integrate it with CodePipeline you could, and that will give you automated container deployments using only one command.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal; Platform automation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also deploy to multiple environments using Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You're going to get troubleshooting, logs, and health status of your application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Use the CLI or YAML file to describe the architecture of your applications in the Microservice way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then you will use the Copilot CLI to containerize your applications and deploy them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to get a well-architected infrastructure setup that's going to be right-sized and scale automatically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: You can get a deployment pipeline, and you can get effective operations and troubleshooting.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And as a summary, you can deploy either to Amazon ECS or AWS Fargate or AWS App Runner.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/181_AWS CoPilot - Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so in this lecture we are going to practice in Copilot and there's a link here in the course code under the Copilot directory that will take us into editorials page and this is the one we're going to follow.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first thing is that on the left hand side panel, you can go to install Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go here, and then you do install Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so Copilot is a CLI and you can install it in many different ways so you have, for example, Mac, Linux, Linux here, or Windows installation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So please follow the one for your platform.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For me, I'm just going to use the one right here, but again, it really depends on what your platform is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so once you're done just type copilots --help, and then you will see that you have your command right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Also, if you haven't done so, please make sure you have both the AWS CLI that is installed as well as Docker Desktop that you can just install online as well to make sure they are available on your computer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now we are going to clone a repository which contains a Copilot compatible installation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Deployment Automation
- Services: AWS Config, AWS SAM
- Key Insights: So we have a good clone and if you want to have a look at this, this is a service directly from the AWS samples that contains code around a Docker file on how to configure an image.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go, this is your basic Copilot directory, and then we do a change directory into example, just to be in our clone directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we're going to set up our spot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is where we're going to use Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we do copilot init to initialize the Copilot CLI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have to give a name to our application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we need to enter a few names.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, this one's going to be example-app.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: And then you have to say which type of deployment you want.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have several options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: You have request-driven web service on App Runner, you have load balance web service to use a public ALB by default, and then ECS on Fargate behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: You have a backend service when you have a private service and maybe your load balancer is optional.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 22:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: You have a worker service when you have a SQS to ECS on Fargate type of architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: A static site or a scheduled job.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So different types of workload, but here we're going to use on our end, a load balanced web service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you need to name our service, so this is the front -end service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we need to specify a Docker file to use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a basic Docker file in our clone directory, so we just use this one, and then it's going to look at the proposed changes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the position is like what is going to happen, what is going to be deployed for it to work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then automatically a stack set is going to be created on CloudFormation, and then CloudFormation is going to deploy that application for you.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we need to wait a little bit right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So you may be prompted to make sure that you're all set for the deployments.
- Hidden/Implicit Meaning: Platform automation signal.

Line 32:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So if you're all set, just press y and then it's going to start deploying the stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we need to run and talk about which environment we have, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So here we can say, for example, it's the test environment and then it said doesn't exist, so we're going to create the test environment and now we're going to have CloudFormation deploy our entire stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 35:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So here we have a look at what goes on into CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 36:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation, AWS Config
- Key Insights: As you can see here, this first CloudFormation stack was created to configure the CloudFormation stack set administration role that is used to do AWS CloudFormation stack sets.
- Hidden/Implicit Meaning: Platform automation signal.

Line 37:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And the second is this stack, and this stack is the actual application on Copilot.
- Hidden/Implicit Meaning: Platform automation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can have a look at the events and what is being created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon S3
- Key Insights: So in terms of resources right now, we have a KMS key, an S3 bucket, and an ECR repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, we just need to wait a little bit for a Copilot to do its magic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: But the idea is that just from a Docker file and the Copilot's configuration files of course, we're able to create a full pipeline on AWS to deploy our application to use Docker and to make sure that everything is up and running with best in class architecture for our type of application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit to see if everything is deployed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is keep and running, but here it's very nice because you can see what is being created and the reason why it's being created, which I think is a quite nice thing to have from the Copilot UI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So we see why we have IAM roles, ECS services, target groups, listeners, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's very handy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now I'm still going to wait a little bit until this is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it, everything has been deployed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now let's take this URL right here and we're going to open a new tab.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Press enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And yes, you see the Copilot logo on a public URL, so this is the app.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a very simple one, it's just a logo, but it could be any kind of HTTP app, of course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So another thing that's good to look at is to have a look at CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 53:
- Concepts: Container Runtime Operations, Elasticity and Availability, Operational Guardrails
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: So you can see that we have an app here where we have an ECS cluster, a load balancer, a bunch of security groups, and it's very important for you to look at the resources and understand what has been created, it's great for your learning.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 54:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: We have a load balancer, we have a VPC, and so on.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 55:
- Concepts: Container Runtime Operations, Elasticity and Availability, Operational Guardrails, Serverless Execution Model
- Services: AWS Lambda, Amazon ECS, Elastic Load Balancing
- Key Insights: And then of course for the front-end, here we have more information around Lambda function, IAM roles, listen roles for your elastic load balancer, log groups, and here we have our ECS service, which is very important.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 56:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So if you wanted to have a look at ECS itself, then I would definitely encourage you to go into the ECS service and then have a look at your cluster called the example-app-test-Cluster, and have a look at your services and see how everything was set up because it was set up according to best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Also, check out your your load balancer if you could.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you want to delete everything and clean up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here, very simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's go back to the example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Just run copilot app delete, and you would be good to go, and yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And lastly, if you want to have a look at the files that have been created here, there is a Copilot directory that has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so if you look within the Copilot directory, we have two things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have environments and front-end.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go into environments and see what there is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now there's a test environments and then there's a file named manifest.yml.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this file, I'm just going to open it right here, contains what has been created for you at the prompt.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have the name, which is the the test environment, and then the type of it is environment and any kind of additional settings you would set in your manifest.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And of course you can do the exact same thing with the front-end and have a look at what's in it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you go under Copilot, front-end, and then manifest.yml.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here you have more settings that you can change if you wanted to around your front-end service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And this is where you would customize everything with having your configuration as code, and then you would push again with Copilot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So run copilot app delete is going to take a little bit of time, but it's going to clean up and make sure that you don't have any ongoing costs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's say for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/16_ECS, ECR & Fargate - Docker in AWS/182_Amazon EKS.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's talk about the other way to run containers onto AWS, and this is using Amazon EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So Amazon EKS stands for Amazon Elastic Kubernetes Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is a way, as the name indicates, to launch and manage Kubernetes cluster onto AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is Kubernetes?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, this is the blue logo you see in the top right corner of the screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations, Deployment Automation, Elasticity and Availability
- Services: (none explicit)
- Key Insights: Kubernetes is an open-source system for automatic deployments, scaling and management of containerized, usually Docker, applications.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So it is an alternative to ECS, which has a similar goal which is to run your containers, but a very different API.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The idea is that ECS is definitely not open-source.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whereas Kubernetes is open-source and used by many different cloud providers which gives you some sort of standardization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: Amazon EC2, Amazon EKS
- Key Insights: So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So the use case for using EKS is that your company is already using Kubernetes on-premises, or already using Kubernetes in another cloud, or they just want use the Kubernetes API, and they want to use AWS to manage the Kubernetes cluster, then they would use Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, Kubernetes from an exam perspective, is cloud agnostic, it can be used into any cloud such as Azure, Google Cloud and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And so that means that if you are trying to migrate between clouds or your containers, using Amazon EKS may be a much more simple solution.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in terms of diagram, this is what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a VPC, 3 AZ separated into public subnets and private subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EKS
- Key Insights: And so you would create EKS Worker Nodes they would be EC2 instances for example, and each of these nodes will be running EKS Pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So they're very similar to ECS tasks, but from a naming perspective, anytime you see pods, it relates to Amazon Kubernetes, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Auto Scaling
- Key Insights: So we have EKS Pods and they're running onto EKS Nodes, and so these nodes can be managed by an Auto Scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 19:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Amazon EKS, Elastic Load Balancing
- Key Insights: Now, very similarly to ECS, if you wanted to expose EKS Service and Kubernetes Service, we could set up a private load balancer, or a public load balancer to talk to the web.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's summarize the different node types that exist for Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you have the Manage Node Groups, and this is AWS that will create and manage Nodes, so EC2 instances for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Auto Scaling
- Key Insights: And these nodes are part of an Auto Scaling group, managed by the EKS service itself.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you have support for On-Demand and Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also choose if you wanted to, to self-manage nodes, this is if you want to have more customizations and more control.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon EKS, Auto Scaling
- Key Insights: So in that case you need to create the nodes yourself, and then you need to register them to an EKS cluster, and then you manage your own nodes as part of an ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EKS
- Key Insights: You can still use the pre-built Amazon EKS Optimized AMI for this, which saves you a bit of time, or you can build your own AMI, which is more complicated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This supports as well, the On-Demand and the Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 29:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now you can attach data volumes to your Amazon EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: For this, you need to specify a StorageClass manifest on your EKS cluster, and this leverages something called the Container Storage Interface, CSI compliant driver.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So keywords to look out for at the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Container Runtime Operations
- Services: Amazon EBS, Amazon EFS
- Key Insights: And you have support for Amazon EBS, you have support for Amazon EFS, and this is the only type of storage class that works with Fargate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: Amazon FSx
- Key Insights: You have Amazon FSx for Lustre and Amazon FSx for NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So that's it for Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/198_Docker Introduction.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon EKS
- Key Insights: Hello, and welcome to this section on containers where we'll be talking about Docker, ECS and EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is Docker?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Docker is a software development platform to deploy apps.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The idea is that it's a container technology.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So apps are going to be packaged into containers and these containers are sort of standardized.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so they can be run on any operating system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: That means that your apps, once they're containerized they run the same way, regardless of where they run.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be any machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't have any compatibility issue.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The behavior is predictable, which means that you have less work to do.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's easier to maintain and deploy and it should work with any kind of language any operating system and any technology.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for Docker are a microservice architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a good keyword to have in mind.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Lift and chip apps from on premises to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And anytime you wanna run a container, really.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does Docker work on an operating system?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, we have a server and in our case it may be EC2 Instances but it could be any kind of server and you're going to run a Docker agent.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then from there you can start Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so your first Docker container may contain a Java application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: And your second Docker container may contain a node JS application and Docker containers they can run multiple times the same.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 21:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM
- Key Insights: So you can have multiple Docker containers of the same Java application or multiple Docker containers of the same node JS application.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also run databases within Docker, for example My SQL and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Docker is very versatile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And from a server perspective all these things are Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So where do you store Docker images?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well you store them in something called a Docker Repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, we have multiple options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is Docker Hub and so it's a public repository and you can find base images for many technologies or operating systems such as Ubuntu, MySQL and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's very popular.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And then for more private integration you have Amazon ECR, Amazon Elastic Container Registry and you can run your private images on there but there's also a public repository option available on ECR called the Amazon ECR Public Gallery.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how is Docker different from a virtual machine?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, Docker is sort of a virtualization technology but not exactly, the purists will try to hit me if I say this, so the resources are shared with a host.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: That means that you can share many containers on one server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you look at the architecture for a VM, you have the infrastructure then you have the host operating system then you have a hypervisor and then you have your apps and your guest operating system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so this is how, for example, EC2 works, for example, when you get an EC2 machine it is actually a virtual machine running on a hypervisor.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so this allows Amazon to offer many EC2 instances to many different type of customers and all these EC2 instances all these virtual machines are going to be separate.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: They're not going to share resources and they're going to be isolated, but for a Docker container you still have the infrastructure and the host OS which may be this time an EC2 instance then you have the Docker Daemon and then on top of it, you can have a lot of containers that can be lightweight running on top of the Docker Daemon.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this allows the containers to really cohabitate together.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They can actually share networking share some data and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it's a bit less quote unquote, secure as a virtual machine, but it allows you to run more containers on a single server.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this is why we really like Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do you get started with Docker?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Well, first you have to write a Docker file, which is defining how your Docker container will look.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a base Docker image and we add some files and then we're going to build it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this will become a Docker image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And that Docker image, you can store it on a Docker repository it's called a Push and you push it to either Docker hub which is a public repository, or Amazon is ECR which is Amazon's version of Docker repositories.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you can pull back these images from these repositories and then you would run them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And when you run a Docker image it becomes a Docker container, which runs your code that you had built from your Docker build.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That is the whole process with Docker.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So how do you do Docker container management on AWS?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Well, the first one is called Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It's Amazon Elastic Container Service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's the own platform of Amazon for Docker management.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll have a look at it in deep dive.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Then we have Amazon EKS which is Amazon Elastic Kubernetes Service which is Amazon's managed version of Kubernetes which is an open source project.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll have a quick look at it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: We have AWS Fargate which is Amazon's own serverless container platform.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon EKS
- Key Insights: And Fargate works both with ECS and EKS and we'll do a deep dive of Fargate in this section.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And then we have Amazon ECR used to store container images as I showed you from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have an overview of how to do Docker and what is Docker and how to do Docker in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now let's do a deep dive onto Amazon ECS and the rest.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/199_Amazon ECS.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Okay, so now let's talk about Amazon ECS, and we're gonna get an overview into all different aspects of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So the first thing I wanna talk to you about is the EC2 Launch Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So ECS stands for Elastic Container Service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And when you launch Docker Containers on AWS, you are launching what's called an ECS Task on ECS Cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And an ECS Cluster is made of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And with the EC2 Launch Type, well these things are EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And in that case, if you use an ECS Cluster with an EC2 Launch Type you must provision and maintain the infrastructure yourself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So that means that your Amazon ECS/ ECS Cluster is going to be composed of multiple EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: Now, these instances are a little bit special because each of them must run the ECS Agent, and then this Agent is going to register each, EC2 Instance into the Amazon ECS service and the specified ECS Cluster.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now, once you have that in place then when you start ECS tasks then AWS is going to be starting or stopping the containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: That means that whenever we have a new Docker container it's going to be placed accordingly on each EC2 Instance over time as you can see right here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And you can start or stop the ECS task, and it will be placed automatically.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So that's the EC2 Launch Type, and Docker containers are placed on Amazon EC2 instances that we provision in advance, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, there's a second launch type called the Fargate Launch Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And again, you launch Docker containers on AWS but this time you do not provision the infrastructure so there are no EC2 instances to manage it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: It's all serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because we don't manage servers but there of course, there are servers behind.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So, in the Fargate type, if we have an ECS Cluster we just create task definition to define our ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then AWS will run these ECS tasks for us based on how many CPU and RAM we need.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So when we want to run a new Docker container, simple as that, it's going to be run, without us knowing where it's run and without an EC2 Instance to be created in the backend in our accounts for it to work.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a little bit magic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then to scale, well you just need to increase the number of tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Simple, you don't need to manage any more EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: Amazon EC2
- Key Insights: And the exam loves to go and tell you to use Fargate because Fargate is serverless, and it's way easier to manage than the EC2 Launch Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Okay, so we've seen the two launch types for Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Now let's talk about the IAM Roles for ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So let's take an example of the EC2 Launch Type in which we have an EC2 Instance running the ECS Agent on Docker.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So in this case, we can create an EC2 Instance Profile which is only valued of course if you use EC2 Launch Type.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon CloudWatch, Amazon EC2, Amazon ECS
- Key Insights: And it's going to be used by the ECS Agents only, and then the ECS Agent will use the EC2 Instance Profile, to make API calls to the ECS service to restore the instance, is going to make API calls to CloudWatch Logs to send container logs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: It's going to use the API calls to ECR, to pull Docker images from ECR and also reference sensitive data in Secrets Manager or the SSM Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And then our ECS tasks are going to get ECS Task Roles.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And so this is valued for both EC2 Launch Type and Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And so here I have two tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: And we can create a specific role per task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: So my first Task A will have an ECS Task A Role, and the first Task B and second Task B is going to have the Task B Role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Well, why do we have different roles?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Because each role allows you to be linked to different ECS services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS, Amazon S3
- Key Insights: And so, for example, the ECS Task A Role allows you to have your Task A, runs some API calls against Amazon S3.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB
- Key Insights: Whereas Task B Role allows you to run, again API calls against DynamoDB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 40:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And you define the Task Role in the task definition of your ECS service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon EC2, Amazon ECS
- Key Insights: So remember this, the distinction between EC2 Instance Profile Role and the ECS Task Role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Next, Load Balancer Integrations.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 43:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So in example, I'm in the EC2 Launch Type but it could be Fargate as well, of course, and have multiple ECS Tasks running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: It's all in the ECS Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And we want to expose these tasks as a HTP or HTTPS endpoint.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: Therefore we can run an Application Load Balancer in front of it and then our users will be going to the ALB and in the back end to the ECS tasks directly.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 47:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So in that case the ALB is supported and will support most use cases, and that's a good choice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: The Network Load Balancer is recommended only if you have very high throughput or high performance use cases, or as you learn later on in this course, if you use it with AWS Private Link.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 49:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Or, if you want to use the older generation Classic Load Balancer you can, but it's definitely not recommended because you don't get any advanced features and you cannot link your Elastic Load Balancer to Fargate.
- Hidden/Implicit Meaning: Constraint or limitation signal; Elasticity and resilience signal.

Line 50:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Whereas if you're using the Application Load Balancer then it works of course, with Fargate.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 51:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So what about data persistent on Amazon ECS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: Amazon EFS
- Key Insights: For this you need Data Volume, and they're different kinds but one of them is noticeable and that's EFS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So say you have an ECS cluster, and in this case are represented both the EC2 Instance as well as the Fargate Launch Type for my ECS Cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And we want to mount a file system onto the ECS task to share some data.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EFS
- Key Insights: In that case, we use an Amazon EFS file system, because it's a network file system is going to be compatible with both EC2 and the Fargate launch types.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And it allows us to mount the file system directly onto our ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EFS
- Key Insights: Well then tasks running in any AZ linked to this Amazon EFS file system will share the same data, and therefore can communicate with another via the file system if they wanted to.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 59:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: Amazon ECS, Amazon EFS
- Key Insights: So the ultimate combo, is to use Fargate to launch ECS task in the serverless fashion and Amazon EFS for file system persistent, because EFS again is also serverless, we don't manage any servers, it's pay as you go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's just provisioned in advance and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Amazon EFS
- Key Insights: So the use cases of using EFS with ECS is to do persistent multi-AZ shared storage for your containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/200_Creating ECS Cluster - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So let's have a look at Amazon ECS, and we're going to create our first cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side, let's click on Clusters, and then click on Create cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the cluster name can be whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, DemoCluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then under Infrastructure, we have the way to select how to obtain capacity.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we have several options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the options is Fargate only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: This is serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't think about servers, and AWS will provide them for you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: You have Fargate and Manage Instances, and Fargate and Self-managed instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: So this is the old way in which you manage your EC2 instances, and you have to create an auto-scaling group, and then you have to select the type of AMI that you want, the type of EC2 instance you want, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: It's nice to see these options, but we're not going to go over this because now AWS is trying to move you away from self-managed instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: Fargate and Managed Instances is very similar in which we're also going to have Fargate, but also AWS is going to manage our EC2 instances behind the scenes.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And here what we have to do is to create an instance profile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So you can click on Create new instance profile right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then this is for ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon EC2, Amazon ECS
- Key Insights: And this is for EC2 Role for ECS Managed Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And then this is called ecsInstanceRole.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And click on Create role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So my role already exists, so I'm going to just use this role right here, and I'm good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then for infrastructure role, I'm going to create a new infrastructure role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I scroll down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: You use this one, Infrastructure for ECS Managed Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: This is a new role, so I'm going to create this role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And now my role is created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back at it, I can just put it right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we are good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next, we have the instant selection.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So do we want to have the ECS default to choose based on the test definition and service requirements?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for a production workload, this is definitely necessary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Or do you want to use custom?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here you would choose between the vCPU attribute and the memory, say how much min and max you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is more advanced.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And also, if you wanted to force, for example, a specific instance type, you would say Allowed instance type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you would say, for example, only t3.micro.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then you would only have t3.micro as part of these managed instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 40:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's quite nice because AWS is going to manage these instances for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can go and click on Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now, to be compatible with the next lectures that I've done, but they're very similar things, instead of managing our instances, we'll have self-managed instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Here we're going to create a new auto-scaling group of on-demand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We specify the instance type to be t3.micro.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And then we'll use the default role for the EC2 instance role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We say a maximum 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: No need for SSH.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: We specify the min root EBS volume size of 30 gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we leave everything for network settings as defaults, and then click on Create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So while this is happening, let's have a look at the auto-scaling group that is being created on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And then on the left-hand side, I will click on Auto Scaling Groups right here.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 52:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: And it's showing, as you can see, there was an auto-scaling group created for me called Infra-ECS-Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these are capacity 0, min capacity 0, max capacity 5.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And this was created directly by my ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the creation is in progress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And what this cluster has, we'll have maybe EC2 instances for me to launch tasks on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can see it's in three available two zones.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we know that the ECS tasks are going to be launched across three AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is just wait for this cluster to be created, which is the case now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what I can do now is explore this DemoCluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So if I click on it, I'm in the DemoCluster, and I can go to Services, are 0, tasks are 0 because we haven't launched anything yet.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we go to the more interesting, Infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So if you go here to the Infrastructure, we have three capacity providers in this ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The first one is FARGATE.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: That means that we can launch Fargate task onto our ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: The second one is FARGATE_SPOT.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: That means that we can launch Fargate task in Spot mode, select Spot instances for EC2.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And the last one is a ASG provider.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Platform Design
- Services: Amazon EC2, Auto Scaling
- Key Insights: And this one means that we can launch EC2 instances in this cluster directly through this ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So it's managed scaling right now, and the current size is 0.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But I can change it if I wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me show you what it would look like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I go here, I go to Details, and I would edit the desired capacity to be 1, just to show you what it's like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So what's going to happen out of this is that an EC2 instance is going to be created, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when is created is going to register itself into the DemoCluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then I will see it under Container instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS, Auto Scaling
- Key Insights: That means that when we create an ECS task, it can either be launched on a Fargate or Fargate Spot capacity provider, or it can be launched on the container instances that I will have launched as part of this ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 78:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So what I'm going to do now is just wait for this instance to be in the running state and registered into my ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let me refresh now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: My instance is in service, and it's t2.micro.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And if I go back into my Amazon ECS cluster, it is registered as a container instance that is currently, of course, running 0 tasks, and has 1024 CPU available, and 982 memory available.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So this is giving me the capacity of this instance, and I can launch, as you'll see, tasks on it until the capacity runs out.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we have an ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've seen two capacity providers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Three.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: We've seen the container instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's go ahead and do run our first service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture to do that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/201_Creating ECS Service - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So now let's create an ECS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But before we do so, we need to create a task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So I'm going to create a new task definition from the task definition panels, and I need to give it a name.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'll call this nginxdemos-hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is coming from this docker image called nginxdemohello on docker hub.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this is the one we're going to be using in our demo.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is why I call my test definition nginxdemo with a hyen of hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next we need to choose the infrastructure requirements.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So do we want to launch on Fargate or Amazon EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: Well, Fargate is serverless compute, so we'll leave it enabled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And if we enable this, we could launch this task, this service on our Amazon EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: But for simplicity's sake, right now I'm just going to use AWS Fargate and launch our containers in two serverless compute mode.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we need to choose what type of OS and architecture we have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Linux is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And what is the task size for our Fargate container?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can say for example, that we have 0.5 or one vCPU, and you can go up to 16 vCPU in this example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can also adjust memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can say, hey, I want up to, for example, 120 gigabytes of memory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: So all of this would be provided by Fargate in a serverless fashion.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To keep things very cheap and simple, I will choose 0.5 vCPU, and one gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: Next we have task role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: So task roll is an IM role that we can assign to our task if we wanted to make API request to AWS services.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: But because we don't do this right now, we are not going to specify a task role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But this is something of utmost importance if your containers need to use AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: Now for the task execution role, leave it as default and if this ECS task execution role is not created yet, it's going to be created automatically by ECS service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Next our container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the name is going to be nginxdemos-hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the image URL is going to be nginxdemoshello/hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is going to pull automatically this image from the docker hub right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So this is very handy and it's an essential container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we have lots of different options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, the port mappings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we want to map the port 80 to the port 80 of the container, which is great, and we'll leave it as is.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you could add more port mappings if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You could for example, set the resource allocation limits, the environment variables from file or manually and the logging.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But all these things I'm gonna leave as default because this is going to work fine for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Storage, Fargate comes with some ephemeral storage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll leave it as is again, from 21 gigabytes, which is a default right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is fine, just leave the value you have right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's create this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this is creating our first task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you see version two for me because I've just created it twice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But for you, you should see version one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So next, let's launch this task definition as a survey.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go into clusters and then demo cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And under services, I'm going to create a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I should specify the details of the service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So first we're going to select a task definition family.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll choose the nginxdemoshello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then you choose whatever task definition revision is available for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I choose the latest, which is number two for me.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then service name, you can keep this or you can remove this, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now the service name is going to be created on this cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: We need to choose the compute configuration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we'll use capacity provider strategy, we'll leave it as default, and then we'll use Fargate to launch our own services and tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, platform version will leave it as latest as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We don't touch any of these.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Deployment Automation
- Services: AWS Config
- Key Insights: For the deployment configuration, which is replica.
- Hidden/Implicit Meaning: Platform automation signal.

Line 60:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we'll have a number of tasks across our cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And right now we want one task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 62:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But if you wanted more tasks, for example, select four, and you would have four containers of your nginxdemo available to you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we wanna keep it small to keep the cost at a minimum.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we leave everything as is for AZ rebalancing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: This is an ECS feature to rebalance in case you have too many tasks in one specific AZ.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: We don't touch any of the deployment options or this.
- Hidden/Implicit Meaning: Platform automation signal.

Line 67:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For networking we're gonna go in here, we're good with these subnets, we're going to create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can keep this name, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to allow HTP traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This allows us to access the port80 of our nginx service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, next we'll use public IP turn on, yes, perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then for load balancing, we're going to allow load balancing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: To have a load balancer we have an application load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's going to be connected to our port80 of our nginx demo.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: We're going to create it, I'll call it DemoALBForECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Listener on port 80, And then we're going to create a new target group, nginxdemosTG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: On port 80, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we will not touch the VPC lattice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Elasticity and Availability
- Services: Amazon CloudWatch, Auto Scaling
- Key Insights: We will not touch the service auto scaling since we wanna scale up and down based on the CloudWatch alarm.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We will not set up any volume.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll just go ahead and create this service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So our service has now been deployed successfully.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's click on the service and have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So as we can see right now we have one desired task and one is running and the status is active.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is really good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we can see that the service is linked to a target group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: So I click on the target group, and in the target group itself, we can see that it's linked to our demoALB, which is the application balancer that was created as part of this service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it looks like one IP address is registered as a target.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And this is the IP address of my container, which is very good.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 90:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: So now if we have a look at this load balancer itself, it is active, I can copy the DNS name and then open a new tab and paste it.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I get the nginx welcome page, which is very good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that means that everything is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: The server address is the exact same as the IP we have registered in here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the private IP, which is good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what else?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 96:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So if we go under the service itself, now we can have a look at tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 97:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So as you can see, one container is running right now, and this is this one task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 98:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And I can click on it and have a look at this task itself.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Container Runtime Operations
- Services: AWS Config
- Key Insights: So it tells me the configuration, the task revision, where it's been launched, the private IP, the containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 100:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: We can have a look at logs to know the logs of our nginx container as well, which is good.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we look at the service itself, so we are on the service, and then we go to events, we can have a look at what were the events of this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So that means that we have one task that has been started.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 103:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: It was registered in Atari group, and then it's been complete deployment, and now we have a steady state.
- Hidden/Implicit Meaning: Platform automation signal.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see in this, I can go to slash test for example, and the URI will change in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So nginx is working as expected.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now what we can do, because we're under ECS, is that we have a look at our task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 107:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have one of them, but we can launch some more.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So I will show you how easy it is to launch more tasks with Farget.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's update this service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And now the desired number of task is going to be three.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So one per AZ, for example, and the rest I will just leave as is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So we'll leave the test definition to the same.
- Hidden/Implicit Meaning: Platform automation signal.

Line 113:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: AWS Config
- Key Insights: We'll leave the compute configuration as Fargate and load balancing does not change in terms of health checks and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's just click on updates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And now what's going to happen is that we have asked the ECS service to run two more tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 116:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So if I refresh this and wait a little bit, now we have two more tasks being provisioned and they are provisioned on the Fargate engine.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 117:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So that means that behind the scenes, AWS is going to provision automatically the resource that it needs to launch these tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 118:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're pending.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now they're activating, and now they're running.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this was very quick actually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if I go under here and now refresh this page, as you can see, the IP address is changing every time I refresh.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the application balancer is distributing the load between all my containers on ECS, which is great.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 124:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: So this is quite powerful, and we just demonstrated the scaling of ECS while scaling up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And just to scale back the demo and save on cost, we can update the service here and have the desired number of tasks to be zero.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 126:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: This way the service is still there, but we don't have any containers running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 127:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And under my application my auto scaling group, sorry, then I'm going to click on this and make sure the desired capacity is also zero.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 128:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: This way we are sure not to be running any type of instances on our EC2 cluster for ECS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So now you can verify this, that the tasks are gone and you're good to go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 131:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And you can look at the events to see what has ECS done while we were asking it to update the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We've seen how to create an ECS cluster, we've seen how to create an ECS service on Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/202_Amazon ECS - Auto Scaling.txt

Line 1:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: So now let's talk about ECS Service Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So as we can see, we can manually increase the number of ECS tasks in our service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: But we can also automatically increase or decrease the number of tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: For this, we can leverage the service called the AWS Application Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have three metrics we can scale on using the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We can scale on the CPU Utilization of the ECS Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We can scale on the Memory Utilization, which is the RAM of the ECS Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: Elastic Load Balancing
- Key Insights: Or, the ALB Request Count Per Target, which is a metric coming from the ALB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So only these metrics you have to remember.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: Then, you can set up different kind of auto scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can set up Target Tracking to track for a specific target for the three metrics shown above.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Or Step Scaling.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: Or Scheduled Scaling, if you wanted to scale your ECS Service ahead of time thanks to predictable changes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Amazon ECS
- Key Insights: Remember, that scaling your service, your ECS Service, at the task level is not equal to scaling your cluster of EC2 instances if you are in the EC2 launch type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability, Serverless Execution Model
- Services: Amazon EC2, Auto Scaling
- Key Insights: And so therefore, that's why when you don't have an EC2 auto scaling that's necessary, when you don't have EC2 instances in the backend, then using Fargate makes service auto scaling much easier to set up, because everything is serverless.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And it's why I'm fan of Fargate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the exam is pushing you to use Fargate a lot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So for the EC2 launch type, how can we actually scale the EC2 instances in the backend if we're using it?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have multiple ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: We can use an Auto Scaling Group Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 21:
- Concepts: Compute Operational Context
- Services: Auto Scaling
- Key Insights: And so we scale our ASG, for example, based on CPU Utilization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then we can add EC2 instance over time if the CPU skyrockets.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Or, we can use the newer and more advanced feature called the ECS Cluster Capacity Provider that we've seen before in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And with this one, the Capacity Provider is very smart.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Auto Scaling
- Key Insights: And as soon as you lack capacity to launch new tasks, it's going to automatically scale your ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: So the Capacity Provider is paired with a Auto Scaling Group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then when you're missing RAM or CPU, there you go, EC2 instances are created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the second option is the smarter way of doing things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Amazon ECS, Auto Scaling
- Key Insights: So if you have to choose between Auto Scaling Group Scaling and ECS Cluster Capacity Provider, please use ECS Cluster Capacity Provider for your EC2 launch type.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So we have a Service A with two tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have CPU Usage.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: And it's going to be auto scaled by the AWS Application Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 34:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon CloudWatch, Amazon ECS, Auto Scaling
- Key Insights: But let's assume we have more users, and therefore your CPU usage goes really up, then your CloudWatch Metric, which monitors the CPU Usage at the ECS service level again, is going to trigger a CloudWatch Alarm, which will trigger a scaling activity in your Auto Scaling for your ECS service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 35:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The desired capacity will increase for your ECS Service, and a new task will be created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And optionally, if this service is running on the EC2 launch type, then the ECS Capacity Providers can help you scale your ECS cluster backed by EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/203_Amazon ECS - Solutions Architectures.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now let's talk about a few solution architectures you can encounter with Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the first one are ECS tasks invoked by Event Bridge.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon S3
- Key Insights: So for example, say we have an Amazon ECS cluster, it's backed by Fargate, and we have S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Our users are going to upload objects into our S3 buckets, And these S3 buckets can be, for example, integrated with Amazon Event Bridge to send all the events to it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And Amazon Event Bridge can have a rule to run ECS tasks on the go.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB, Amazon ECS
- Key Insights: Now, when ECS tasks are going to be created, they will have an ECS task role associated with them, and from the task itself what it can do is that it can get the objects, process it, and then send the results into Amazon DynamoDB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And that is thanks to the fact that we have an ECS task role associated with it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: Amazon S3
- Key Insights: And so effectively here, what we've done is that we've created a serverless architecture to process images, or to process objects, from your S3 buckets using a Docker container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB, Amazon ECS, Amazon S3
- Key Insights: And that is using Amazon Event Bridge ECS in the Fargate mode, as well as an ECS task role to talk to Amazon S3 and Amazon DynamoDB.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Another architecture using, again, Event Bridge, is to use an Event Bridge schedule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we have an Amazon ECS cluster backed by Fargate and Amazon Event Bridge, and we schedule a rule to be triggered every 1 hour.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Now, this rule is going to run ECS tasks for us in Fargate, and so that means that every 1 hour, a new task will be created in our Fargate cluster, and the task can do whatever we want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: AWS Batch, Amazon ECS, Amazon S3
- Key Insights: For example, we can create an ECS task role with access to Amazon S3, and therefore our task, our Docker container, our program can, for example, do every 1 hour some batch processing against some files in Amazon S3.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: And again, all of that architecture is fully serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: A last example is using ECS and an SQS queue, so we could have a service on ECS with two ECS tasks, and messages are being sent into an SQS queue, and the service itself is pulling for messages from the SQS queue, and processing them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 16:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: We can enable ECS Service Auto Scaling on top of this service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 17:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS
- Key Insights: That means that, for example, the more messages we have in our SQS queue, the more tasks we're going to have into our ECS service, thanks to auto-scaling.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Another integration is when you want to use Event Bridge to actually intercept events from within your ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, for example, say you wanted to react to tasks being exited.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: In that case, any task exiting or starting in your ECS cluster can be triggered as an event in Event Bridge, and it will look like this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: For example, the ECS task state change for "stopped" and the stopped reason.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then from there, for example, we could alert an SNS topic and send emails to your administrators.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So, bottom line, Event Bridge does allow you to understand the lifecycle of your containers in your ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/204_Amazon ECS - Clean Up - Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's make sure to destroy everything before we're done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first, we need to stop the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So to stop the service, make sure you have zero tasks running.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: If not, you update the service and you set the desired task to zero.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you can click on Delete Service, type in Delete, and this will delete the service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, when you delete the service, this is actually going to go into a service called CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And CloudFormation is going to take its time to delete the entire stack that it created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And so part of the thing it's going to delete is the ECS service, but also you LoadBalancer Listener, you LoadBalancer itself, the security group, and the target groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this can take a little bit of time and we need to wait for everything to be deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And when the service is fully deleted, then you can go and delete this cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this, you just click on Delete Cluster and it's going to delete the demo cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we can do this right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS CloudFormation, Amazon ECS
- Key Insights: And again, this is going to start something in CloudFormation to delete the infrastructure of the ECS cluster.
- Hidden/Implicit Meaning: Platform automation signal.

Line 14:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So that includes the capacity provider, the auto-scaling group that we have created, the cluster, and the launch templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is very good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Finally, for your task definition, you can leave them as is.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They don't cost you any money, they're just definitions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to, you could also click on one of them and deregister.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Do Action and deregister the test definition itself.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/205_Amazon ECR.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Okay, so let's do a short intro to Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So Amazon ECR stands for Elastic Container Registry, and it's used to store and manage Docker images on AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So so far, we've been using online repository such as Docker hub but we can also store our own images on Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And actually you have two options for ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: We can store images privately, just for your account or your own accounts with an s or you can use a public repository and publish to the Amazon ECR public gallery.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: Now ECR is fully integrated with Amazon ECS, which is great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And your images are behind the scenes stored by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: So your ECR repository may contain different Docker images and then your ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And for example, an EC2 instance on your ECS cluster may want to pull these images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So to do so while we're going to sign an IAM role to our EC2 instance and this IAM role will allow our instance to pull Docker images.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So of course, all access to ECR is protected by IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECR
- Key Insights: That includes that if you have a permission error on ECR have a look at your policies and then your containers are going to be started on your EC2 instance after they are pulled by your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: And this is how ECS and ECR ECR work together.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Now, Amazon ECR is great because on top of being a repository, it, supports image vulnerability scanning, versioning, image tags, and image lifecycle.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So overall, anytime you see storing Docker images think ECR and that should be it for you at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/206_Amazon EKS - Overview.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's talk about the other way to run containers onto AWS, and this is using Amazon EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So Amazon EKS stands for Amazon Elastic Kubernetes Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is a way, as the name indicates, to launch and manage Kubernetes cluster onto AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is Kubernetes?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, this is the blue logo you see in the top right corner of the screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations, Deployment Automation, Elasticity and Availability
- Services: (none explicit)
- Key Insights: Kubernetes is an open-source system for automatic deployments, scaling and management of containerized, usually Docker, applications.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So it is an alternative to ECS, which has a similar goal which is to run your containers, but a very different API.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The idea is that ECS is definitely not open-source.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whereas Kubernetes is open-source and used by many different cloud providers which gives you some sort of standardization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: Amazon EC2, Amazon EKS
- Key Insights: So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So the use case for using EKS is that your company is already using Kubernetes on-premises, or already using Kubernetes in another cloud, or they just want use the Kubernetes API, and they want to use AWS to manage the Kubernetes cluster, then they would use Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, Kubernetes from an exam perspective, is cloud agnostic, it can be used into any cloud such as Azure, Google Cloud and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And so that means that if you are trying to migrate between clouds or your containers, using Amazon EKS may be a much more simple solution.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in terms of diagram, this is what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a VPC, 3 AZ separated into public subnets and private subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EKS
- Key Insights: And so you would create EKS Worker Nodes they would be EC2 instances for example, and each of these nodes will be running EKS Pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So they're very similar to ECS tasks, but from a naming perspective, anytime you see pods, it relates to Amazon Kubernetes, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Auto Scaling
- Key Insights: So we have EKS Pods and they're running onto EKS Nodes, and so these nodes can be managed by an Auto Scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 19:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Amazon EKS, Elastic Load Balancing
- Key Insights: Now, very similarly to ECS, if you wanted to expose EKS Service and Kubernetes Service, we could set up a private load balancer, or a public load balancer to talk to the web.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's summarize the different node types that exist for Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you have the Manage Node Groups, and this is AWS that will create and manage Nodes, so EC2 instances for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Auto Scaling
- Key Insights: And these nodes are part of an Auto Scaling group, managed by the EKS service itself.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you have support for On-Demand and Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also choose if you wanted to, to self-manage nodes, this is if you want to have more customizations and more control.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon EKS, Auto Scaling
- Key Insights: So in that case you need to create the nodes yourself, and then you need to register them to an EKS cluster, and then you manage your own nodes as part of an ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EKS
- Key Insights: You can still use the pre-built Amazon EKS Optimized AMI for this, which saves you a bit of time, or you can build your own AMI, which is more complicated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This supports as well, the On-Demand and the Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 29:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now you can attach data volumes to your Amazon EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: For this, you need to specify a StorageClass manifest on your EKS cluster, and this leverages something called the Container Storage Interface, CSI compliant driver.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So keywords to look out for at the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Container Runtime Operations
- Services: Amazon EBS, Amazon EFS
- Key Insights: And you have support for Amazon EBS, you have support for Amazon EFS, and this is the only type of storage class that works with Fargate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: Amazon FSx
- Key Insights: You have Amazon FSx for Lustre and Amazon FSx for NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So that's it for Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/207_Amazon EKS - Hands On.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So I wanna show you a quick hands on for Amazon EKS but this is completely out of the feature.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you do decide to do it it's going to cost you quite a bit of money.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I just suggest you just watch what I'm doing just to understand a bit better the Kubernetes per service from AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we are going to create a new cluster on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So I use demo EKS as a name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I can select a Kubernetes version.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: I will use the default and then we need to have a service role to manage everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: So to create this role I need to follow the instructions from the EKS user guide.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: So I go to IAM and then I will have to create a role for EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: And then I will need to add the EKS cluster role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: We're going to go to roles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Create a role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is for a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: This is for the EKS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And we'll do EKS cluster to allow access to other services that are operated by our cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Then the permission is selected already and the role name is EKS cluster role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Invalid name, so let's just remove the first space in the beginning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And now the role is being created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Okay, so let's refresh this and we can find this role right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Now, do we want to encrypt our secrets with KMS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For now I'm not going to do it, but this is a possibility for security.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then where do you want to deploy our clusters?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a VPC and subnet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is so we are, we are highly available.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Then security groups we want out of this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we could select, for example, the default security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we choose the IPv4 type of services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then the cluster endpoint access is going to be public so that we can access it from our computer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Do we want any networking add-ons?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll just choose the default again and the default for proxy and DNS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon EKS
- Key Insights: So as you can see, these are like a lot of configuration and EKS should be its own course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To be honest, I just want to run through you the options so you can understand what's happening.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Then we can configure logging for the control plane.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm not going to do it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we review the settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we have set up security groups, networking, cluster, API access to public, and we are good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's create this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And what this is going to do is that it's going to create the cluster itself and then we'll have to create the nodes for the cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So my cluster is now created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And the next step is to provision compute capacity for your cluster, by adding a managed node group or creating your fargate profile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've seen this in the overview and that's just what I wanted to show you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we go into the resources, this is where all your Kubernetes resources are going to be managed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is some Kubernetes specific knowledge, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But this is where you have it for the Kubernetes experts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then in compute, this is where we can add node groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I go into node groups, I can add node group here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I call this one demo node group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: You would need to create an IAM role for this node group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we go into the IAM console...
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then we create a new role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And this role are, is for the EC2 instances that are part of my manage node group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 58:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So I will just use EC2 and then I will search for policies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: I will type EKS and you want an Amazon EKS worker node policy added in it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And for this, I will enter and it's somewhere in documentation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I will enter the...
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: Amazon EKS node role and actually there's add permissions for this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And then we need to also add the Amazon EC2 container registry read only policy in this.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go back.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In here, we're going to edit permissions and add one more thing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: The Amazon EC2 container registry.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's look for this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's here, next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So just make sure it doesn't start with the space.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon EKS
- Key Insights: The role is created... and now I'm able to go in here refresh this, and I will find the Amazon EKS node role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then do we want to have a launch template for our EC2 instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can specify one but I will leave this unticked and then click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What type of node group do we want?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Amazon Linux 2 is great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Do we want on-demand or spot instances?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: What type of instances do we want?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we want T3 medium?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: T3 micro?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What is the disc size?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Elasticity and Availability
- Services: AWS Config
- Key Insights: What is the node scaling configuration?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 88:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how many nodes in your node groups do you want?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 89:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So this is the settings for the OS scaling group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then what is the node group update?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when you do update how many nodes can you tolerate to be done?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What subnets do you want access to?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then when we're good to go we create this managed node group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EKS
- Key Insights: And so to show you this this is the way to deploy EC2 instances for your Amazon EKS cluster, but they are entirely managed by AWS, which is, makes it very easy.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 96:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the other way to create nodes in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 97:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, we go one level up, we go back into computes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: The other way to create nodes, except from this node group is actually to have fargates and fargates allows you not to provision EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 99:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we would have with a setup to go and add a target profile.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we're not going do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: I just want to show you the options for node groups for fargate profiles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Actually don't need this one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 103:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'll delete it when it's finished creating.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the last option I wanna show you is around add-ons.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So if we wanted to actually use EBS volumes we can install add-ons.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And one of them is the Amazon EBS CSI driver.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Container Runtime Operations
- Services: Amazon EBS, Amazon EFS, Amazon EKS
- Key Insights: And this will allow us to leverage EBS for our Amazon EKS cluster and they will be STS side driver also for EFS X, EFS, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 108:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is all the actions, I am gonna show you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Kubernetes requires its own knowledge to be honest, and it's very very difficult and requires a full course on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is just go ahead and delete this cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So for this I'll just type demo EKS, and this will be it all I wanted to show you was how to create an EKS cluster and to delete the first need to delete the note groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 113:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will skip that from the video.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/208_AWS App Runner.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS App Runner service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a fully managed service that makes it easy to deploy web applications and APIs at scale and with this, anyone can deploy to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: You don't need to know anything about infrastructure, for containers or your source code or whatever you want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: AWS Config
- Key Insights: So the idea is that you start with your source code or a Docker container image and then you're going to configure the settings.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So it shows how many VCPS you want, how much memory you want for your containers, if you want autoscaling and a few health checks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So some basic settings to define your web application or your API, and then automatically, that's it, it will start building and deploying the web app using the App Runner survey.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So the container will be created and deployed, and then your API or your web app is deployed and you can access it right away using a URL and so, as you can see, there was no knowledge whatsoever of what goes on underneath.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Underneath, of course, uses the AWS services, but as a user, you just don't know about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's very quick.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So with App Runner, you get a lot of goodness, you get automatic scaling, it's highly available, you get load balancing, you get encryption and your application, your container can also get access to your VPC.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that you can connect to your databases, your cache, as well as your message queue services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Deployment Automation, Operational Guardrails
- Services: (none explicit)
- Key Insights: So the use case for this is to very quickly deploy web apps, API, microservices, and do rapid production deployment with best practices, all using the AWS App Runner service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a very simple service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It does very simple things, but it's very powerful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/209_AWS App Runner - Hands On.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I want to show you how AWS App Runner works but this is not part of the feature so if you do decide to follow along with me just know you're going to pay some money for vCPU and per gigabytes, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go and create an App Runner service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: So first we have to say the source of our deployment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Is it part of a Container Registry or is it part of a Source Code that we can connect, for example, from GitHub, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: We are going to use a Container Registry.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Now it can either be Amazon ECR, if it's an internal, private docker container that you have in your infrastructure or Amazon ECR Public if you wanted to deploy a public image, and we're going to do this.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon EBS, Amazon ECR
- Key Insights: We're going to go into the Amazon ECR Public Gallery website, and I'm going to do HTTPD just to deploy a very simple HTP server to do basically nothing but show you how to deploy an HTTPD server.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to just copy this right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Copy this address and paste it here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Next, what is the Deployment Setting?
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So whether or not we want to manually deploy our application or automatically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So if we were enabled with a Source Code Repo or Amazon ECR, we could do automatic but we are doing something manual right now, which is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then I'll call it DemoHTTP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We choose how many vCPUs we want and how much memory we want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So one vCPU and two gigabytes is fine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is the lowest I can get.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can pass environment verbals.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: We can configure the port of our service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if we go in here and we have a look at the documentation, we can probably find that the ports of it is port 80 of our image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we are going to use port 80 and then pretty quick, because you don't need to know why exactly, but here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Elasticity and Availability
- Services: AWS Config, Auto Scaling
- Key Insights: So it's port 80, then do we want to configure Auto Scaling?
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 24:
- Concepts: Compute Platform Design
- Services: AWS Config
- Key Insights: So do we want to have the default configuration from one instance to 25 instances and what is the concurrency?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So with this scaling, we'll have 100 request concurrent request, per instance, which is great.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: Or you can use your custom configuration or add a new one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you can do health checks.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So do you wanna perform health checks on your application to make sure it's healthy?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can leave this as is.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: Security if you want your containers to have an instance role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: AWS X-Ray
- Key Insights: Networking, if you wanted to deploy into your Custom VPC, but for now, we'll use a public access type of access, and do we want tracing with AWS X-ray.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for now I'll keep everything as default and press next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we verify the settings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we use a public HTTPD image, and then the port is on port 80.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: (none explicit)
- Key Insights: So this is pretty simple because we just specified one container, and then we just click on create and deploy, and behind the scenes App Runner is actually going to deploy an auto-scaling group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 37:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: It's going to deploy scaling triggers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: It's going to deploy most likely like target containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: It's going to deploy a load balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's going to give us a domain and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: So it's quite handy, and from this one interface, I can get access to my logs, my activity, my metrics, my observability, my configuration, as well as connect any custom domain.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So it's very powerful, all-in-one service to deploy containers in a production fashion on AWS, and I really like it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I took a bit of time, but my service is now created, and if I click on this I'm able to access my default domain, and it just says it works, which is the message that is displayed when you have deployed HTTPD correctly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's good news.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It works, and if you have a look at it we can look at the event log into where to see if everything was being deployed, the health checks and so on, and that's about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: It's as simple as that, and if we were to have a lot of concurrent requests on this website then automatically it would scale, which is quite nice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it really, I find App Runner incredibly easy to use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we can just delete this application just type delete and we're done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/18_Containers on AWS_ ECS, Fargate, ECR & EKS/210_AWS App2Container.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, now, let's talk about AWS App2Container or A2C.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, it's a CLI tool that is used to migrate and modernize Java and .NET web applications into Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The idea is that you wanna do a migration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's called a lift-and-shift migration, where your apps are running on premises on whatever you have, for example, bare metal or visual machines, and then you migrate it to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, the idea is that you accelerate modernization, but you don't change any code and you migrate legacy apps this way to the cloud without doing any code changes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, this will in the end, generate a CloudFormation templates for your compute, your network, and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS, Amazon EKS
- Key Insights: It will also register the generated Docker containers into Amazon ECR, and then you can choose to deploy to ECS, EKS, or App Runner.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this supports as well prebuilt CI/CD pipelines.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, the idea is that you're going to use the CLI to discover and analyze which apps can be migrated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Then, everything's going to be extracted and containerized.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Deployment Automation
- Services: (none explicit)
- Key Insights: Then, the deployment artifacts are going to be generated.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS CloudFormation, Amazon ECS, Amazon EKS
- Key Insights: That means that there's going to be a CloudFormation templates with ECS Task and EKS Pod definitions, anything CI/CD if needed, and other infrastructure.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, deployed to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS, Amazon EKS
- Key Insights: So, the image of the Docker container is going to be stored in Amazon ECR, and then deployed anywhere you want on ECS, EKS, or App Runner.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, the very simple concept to remember in this instance that if you want to migrate a web application using Java or .NET to AWS very simply, then you should use AWS App2Container.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's the level of detail required for the exam.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/049_Amazon ECS - Elastic Container Service.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So now let's talk about Amazon ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And first, what is Docker?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Because Docker is at the center of ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Docker is a software development platform used to deploy apps.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And apps are going to be packaged in containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And these containers have the specificity that they can be run on any operating systems.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So apps will run in the same way, regardless of where they're run.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: That means that any machine can run Docker container, there will be no compatibility issues, and you will have predictable behavior.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means less work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They're easier to maintain, and it works with any language, any operating system and any technology.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Thanks to this, we can control how much memory and CPU will be allocated to each container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And then that allows our container to use just the right amount of resources.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 13:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: These containers can be scaled up and down very quickly within seconds.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Thanks to the Docker management system.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are therefore for writing applications, more efficient than virtual machines.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So Docker container management on AWS can take several forms.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: We need a container measurement platform.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we have either ECS, which is the Amazon Elastic Container Service, which is Amazon's own container platform.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Or we can use EKS, which is Amazon Elastic Kubernetes Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is Amazon's managed version of Kubernetes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And Kubernetes is an open source software that's widely accepted for managing Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: (none explicit)
- Key Insights: And then we have Fargate, which is Amazon's own serverless container platform.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Amazon EKS
- Key Insights: And it works equally well with ECS and EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So let's do a deep dive into ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon ECS
- Key Insights: So ECS, the use cases are to run microservices, for example, to run multiple Docker container on the same machine, or to have service discovery features to enhance communication between these microservices.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 26:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: We have a direct integration of ECS containers with the Application Load Balancer and the Network Load Balancer.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 27:
- Concepts: Elasticity and Availability
- Services: Auto Scaling
- Key Insights: We have Auto Scaling capabilities.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 28:
- Concepts: Container Runtime Operations
- Services: AWS Batch
- Key Insights: It's also very helpful if you wanted to run batch processing or schedule task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So you can schedule ECS task to run on-demand on reserves or on spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then ECS is also very helpful when you migrate to the cloud because you first Dockerize your applications running on premises, and then you move these Docker containers to run on Amazon ECS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So, concepts you need to know for Amazon ECS, but hopeful this is not new.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So we have an ECS cluster, which is a logical grouping of EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 33:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We have an ECS service, which defines how many tasks should run and how they should be run.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 34:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: We have the task definition, which defines what is the JSON form of the definition of the task to allow and to tell ECS how to run a Docker container.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it could be, what is the image name?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How much CPU, how much RAM, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The ECS task itself is an instance of a task definition running within a service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And the ECS task is actually running Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: And then you have the ECS IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So you have two types of roles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: You have the EC2 instance profile that is used by the EC2 instance that will be managed by the ECS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So this EC2 instance is going to make API calls to the ECS service, send logs, et cetera, et cetera.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECS
- Key Insights: But then for each ECS task, we can attach an ECS task IAM role, which allows each task to have a specific role.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: And these roles are allowing these task to make API calls to Amazon S3, DynamoDB, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 45:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So if we look at all it in a diagram, we have a cluster here, we have an EC2 instance, and we run a service-A.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 46:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Now, to run the service-A, we need to first provide a task definition.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And when this task definition is instantiated, then we're going to get containers running on the EC2 instance for that specific service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 48:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it's possible for you to scale the number of EC2 instances you have.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can add one here and one there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And then the service may place also ECS tasks onto these EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 51:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Auto Scaling
- Key Insights: Well, because we have multiple EC2 instances, we can have as well an Auto Scaling group that will manage these EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 52:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon CloudWatch, Amazon EC2, Amazon ECS
- Key Insights: And to make sure that these are part of an ECS cluster, we need to define an EC2 instance profile that will be allowing our EC2 instances to be registered to the ECS service, and also send logs to the CloudWatch logs service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 53:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, in case my services and my task within my services need to access, for example, on these three buckets, then we need to make sure to provide the task IAM role for my task within my service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 54:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And if you wanted to have a second service within your ECS customer, you could, and as well as a third and a fifth, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And so each service will have different tasks and it will be replaced all along your available EC2 instances if there is space for them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: So then Amazon ECS has a great integration with an Application Load Balancer.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 57:
- Concepts: Compute Platform Design, Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: So for this, it's called the dynamic port mapping feature, which allows us to run multiple instances of the same application, same Docker container, on the same EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 58:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: And the ALB, even though each container will have a different mapping port, is able to find the right port on your EC2 instance and map it to the load balancer.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So we have an ECS cluster running one service and we have four tasks across two EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 61:
- Concepts: Compute Platform Design, Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EC2
- Key Insights: And so as we can see, each EC2 instance has two of the same task.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 62:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: Now, we have users accessing our application through our load balancer, okay?
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 63:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And so each ECS task is going to get a different port.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 64:
- Concepts: Compute Platform Design, Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: So the first ECS task going to get this port and the Application Load Balancer is smart enough to find this port, thanks to the dynamic port mapping feature.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 65:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: Then the second ECS task is going to get a different port, but the ALB is smart enough to find it as well.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: So even though the port is not stable across all my ECS tasks, because the service of ECS is mapped to the ALB, this dynamic port mapping future comes in and then the ports are mapped gratefully.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 68:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: So in terms of use cases, well, you get increased resiliency because even if you're running on one EC2 instance, you can have multiple Docker containers running on it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 69:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: You're going to also maximize the utilization of your CPU and your cores on your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 70:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And if you wanna perform rolling upgrades, you can do it, because now you have many Docker containers, ECS tasks, on the one instance, and therefore, you can take them down one by one without impacting your overall app uptime.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So we've seen ECS with EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 73:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And so we have to provide EC2 instances ahead of time to run ECS tasks on them.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 74:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: But it is possible for you to launch Docker containers on Fargate.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 75:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2
- Key Insights: And with Fargate, we do not provision the infrastructure, there are no EC2 instances to manage.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 76:
- Concepts: Serverless Execution Model
- Services: (none explicit)
- Key Insights: Instead it's all serverless.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We don't even know or see that there are some background hardware.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Well, the Fargate service runs on ECS and you can submit Docker containers to a Fargate service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 80:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: And the ECS tasks other than Fargate, are going to be created automatically without you having you think about EC2 instances at all.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 81:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So you just create task definitions and then you specify how much CPU and RAM you need per task, and then they will be created for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 82:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And if you need to scale, just increase the number of tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 83:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: Simple, you don't need to manage any EC2 instances in the backend, which makes it a very convenient way of running ECS services.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 84:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, in terms of security and networking.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 85:
- Concepts: Container Runtime Operations
- Services: AWS Config, Amazon ECR
- Key Insights: So you can inject secrets and configuration as environment variables into the running Docker containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 86:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So there is deep integration with the SSM Parameter Store and the Secrets Manager service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And you also need to know about the different ways to do networking on ECS tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 88:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So the first one is none, which gives no network connectivity at all to your task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: No port mappings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: Bridge will use Docker's virtual container-based network.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Host will just bypass Docker network, and will use the underlying host network interface.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And then AWSVPC, which is a special one, is going to make sure that every ECS task launched on the instance will get their own elastic network interface and their own private IP address.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 93:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon VPC Flow Logs
- Key Insights: And it's going to give you simplified networking, enhanced security, security groups, monitoring VPC Flow Logs, and then it is going to be the default mode for Fargate tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: Next, for Amazon ECS, we have Service Auto Scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 96:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So this allows you to automatically increase or decrease the desired number of tasks of your service.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 97:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Auto Scaling
- Key Insights: And so for it in the backend, the ECS service is going to leverage to Amazon, the AWS Application Auto Scaling Service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 98:
- Concepts: Container Runtime Operations
- Services: Amazon CloudWatch, Amazon ECS
- Key Insights: So other general facts, CPU and RAM are tracked as metrics in CloudWatch at the ECS service level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Elasticity and Availability
- Services: Amazon CloudWatch
- Key Insights: And so therefore we can set up target tracking to scale based on the target value of a specific CloudWatch metric, or we can set step scaling, or we can set up schedule scaling, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Container Runtime Operations
- Services: Amazon ECS, Auto Scaling
- Key Insights: Just like you would do for an ASG, but this time for an ECS service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS
- Key Insights: So even though you can auto scale your ECS service at the test level and it works really great, if that ECS service is not running on Fargate but it is running instead on EC2 instances, then you should make sure you also auto scale your EC2 instances to add more capacity to your ECS cluster.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 102:
- Concepts: Container Runtime Operations, Elasticity and Availability, Serverless Execution Model
- Services: Auto Scaling
- Key Insights: Therefore, Fargate auto scaling is much easier to set up because is serverless and we don't need to think about the underlying resources to run your auto scaling.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 103:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Okay, next we have spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 104:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So spot instances work on ECS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 105:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon ECS, Auto Scaling
- Key Insights: So for ECS classic, the EC2 launch type, then we can have underlying EC2 instances as spot instances managed by an ASG.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 106:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: And in case the spot instances are going to be removed, then they may go into draining mode, which is going to remove the running tasks and move them over to other instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 107:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So it's good for cost savings, but it can impact reliability because we are using spot instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 108:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: For the Fargate type, we can also specify a minimum number of on-demand instances within Fargate, so on-demand tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 109:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: (none explicit)
- Key Insights: But we can also add tasks using Fargate Spot for cost saving, even though we know that, again, because there are spot instances, they can be reclaimed by AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 110:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So regardless of on-demand or spot, Fargate is going to scale really easily and well based on the load you give it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Finally, to store these Docker images, we have Amazon ECR, which is the elastic container registry.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 112:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to store and manage Docker images on AWS, you have a private registry repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 113:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for your own accounts.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But also public repo in case you wanted to share some images publicly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so your repo is going to have multiple Docker images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 116:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon EC2, Amazon ECS
- Key Insights: Then in case an ECS cluster needs to pull that image onto EC2 instances, then thanks to the IAM role of the EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 117:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: They can pull images from the ECR repository, and run them as ECS task.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 118:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: So we have deep integration with ECR and ECS and there is access control through IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in case you get permission errors, then it should be an IAM policy issue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now it's possible for you to pull obviously images from repository A or repository B.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: And the ECR is really cool because it supports image vulnerability scanning, versioning, image tags, and image life cycle.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So that's a lot on ECS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I know, but this is necessary for the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Hopefully by now you should know everything.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/050_Amazon ECR - Elastic Container Registry.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So now let's talk about Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So the Elastic Container Registry is used to store and manage Docker images on AWS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you have two kind of repositories, you have the Private and the Public repositories.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: By the way, there is a whole repository you can see called gallery.ecr.aws, it has public images you can get.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: So you have an ECR repository, and for example, you have two Docker images, A and B and then you have an ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design, Container Runtime Operations, Operational Guardrails
- Services: Amazon ECR
- Key Insights: And the Instance is going to have a role that allows it to pull images from the ECR repository and therefore start containers on it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECR, Amazon ECS
- Key Insights: So the ECR is fully integrated ECS in terms of pulling Docker images and the access to ECR is controlled through IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in case you have any permission errors, you need to check the policies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Now, ECR has many features.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll see those in a bit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have vulnerability scanning, versioning, image tags, image lifecycle, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So some features you must know, for example, is the cross-Region replication.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So it both supports cross-Region and cross-account replication in ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Say you have a pipeline to build images from CodeBuild.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So CodeBuild will run container, will build images and will register and push these images to Amazon ECR.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Then from ECR, if you've set up cross-Region replication these images are going to be replicated directly into other regions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The advantage that you don't have to rebuild these images into other regions and you can start launching, for example, your task on ECS from other regions as well, giving you a global application.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Another feature is the image scanning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So Amazon ECR creates containers and it's important to scan these containers to look for vulnerabilities.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So they can be either manual scan or automatic scan with scan on push.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So whenever you push an image into your ECR repository then the image is going to be scanned.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you have two types of scan.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You have the basic scanning that looks for common vulnerability.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So we push an image into ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: ECR is going to scan the image through its service itself and then the results in case, for example, you have vulnerabilities.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: Amazon EventBridge
- Key Insights: They can be triggered and sent as events into EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's for the basic scanning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you have enhanced scanning, and that actually leverages the Amazon Inspector Service, and it's going to do more than just looking for common CVE is going to look for operating system and programming language vulnerability.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a deeper scan, it's enhanced scanning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So again, we push an image into ECR but this time the inspector service is going to scan our image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: Amazon EventBridge
- Key Insights: And then in case we have any results of that scan, it's going to be in EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: But this time the trigger service is inspector, it's not ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, you can view the scan results directly from the AWS console for both types of scanning.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: Okay, so that's it for Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/051_Amazon EKS - Elastic Kubernetes Service.txt

Line 1:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's talk about the other way to run containers onto AWS, and this is using Amazon EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So Amazon EKS stands for Amazon Elastic Kubernetes Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is a way, as the name indicates, to launch and manage Kubernetes cluster onto AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is Kubernetes?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, this is the blue logo you see in the top right corner of the screen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Container Runtime Operations, Deployment Automation, Elasticity and Availability
- Services: (none explicit)
- Key Insights: Kubernetes is an open-source system for automatic deployments, scaling and management of containerized, usually Docker, applications.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So it is an alternative to ECS, which has a similar goal which is to run your containers, but a very different API.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The idea is that ECS is definitely not open-source.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whereas Kubernetes is open-source and used by many different cloud providers which gives you some sort of standardization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Container Runtime Operations, Serverless Execution Model
- Services: Amazon EC2, Amazon EKS
- Key Insights: So EKS supports two launch modes, again the EC2 launch mode if you want to deploy worker mode like EC2 instances, or the Fargate mode if you wanted to deploy serverless containers in an EKS cluster.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So the use case for using EKS is that your company is already using Kubernetes on-premises, or already using Kubernetes in another cloud, or they just want use the Kubernetes API, and they want to use AWS to manage the Kubernetes cluster, then they would use Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, Kubernetes from an exam perspective, is cloud agnostic, it can be used into any cloud such as Azure, Google Cloud and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And so that means that if you are trying to migrate between clouds or your containers, using Amazon EKS may be a much more simple solution.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in terms of diagram, this is what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have a VPC, 3 AZ separated into public subnets and private subnets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EC2, Amazon EKS
- Key Insights: And so you would create EKS Worker Nodes they would be EC2 instances for example, and each of these nodes will be running EKS Pods.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 17:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So they're very similar to ECS tasks, but from a naming perspective, anytime you see pods, it relates to Amazon Kubernetes, okay?
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Auto Scaling
- Key Insights: So we have EKS Pods and they're running onto EKS Nodes, and so these nodes can be managed by an Auto Scaling group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 19:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Amazon EKS, Elastic Load Balancing
- Key Insights: Now, very similarly to ECS, if you wanted to expose EKS Service and Kubernetes Service, we could set up a private load balancer, or a public load balancer to talk to the web.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So let's summarize the different node types that exist for Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So you have the Manage Node Groups, and this is AWS that will create and manage Nodes, so EC2 instances for you.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 22:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon EKS, Auto Scaling
- Key Insights: And these nodes are part of an Auto Scaling group, managed by the EKS service itself.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 23:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And you have support for On-Demand and Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can also choose if you wanted to, to self-manage nodes, this is if you want to have more customizations and more control.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Container Runtime Operations
- Services: Amazon EKS, Auto Scaling
- Key Insights: So in that case you need to create the nodes yourself, and then you need to register them to an EKS cluster, and then you manage your own nodes as part of an ASG.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design, Container Runtime Operations
- Services: Amazon EKS
- Key Insights: You can still use the pre-built Amazon EKS Optimized AMI for this, which saves you a bit of time, or you can build your own AMI, which is more complicated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: This supports as well, the On-Demand and the Spot Instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And finally, if you don't wanna see any nodes at all, then Amazon EKS, as I told you, supports the Fargate mode in which there is no maintenance required, and no nodes are managed at all you can just run containers on top of Amazon EKS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 29:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now you can attach data volumes to your Amazon EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: For this, you need to specify a StorageClass manifest on your EKS cluster, and this leverages something called the Container Storage Interface, CSI compliant driver.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 31:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: So keywords to look out for at the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Container Runtime Operations
- Services: Amazon EBS, Amazon EFS
- Key Insights: And you have support for Amazon EBS, you have support for Amazon EFS, and this is the only type of storage class that works with Fargate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: Amazon FSx
- Key Insights: You have Amazon FSx for Lustre and Amazon FSx for NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So that's it for Amazon EKS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/052_AWS App Runner.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS App Runner service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a fully managed service that makes it easy to deploy web applications and APIs at scale.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: And with this, anyone can deploy to AWS, you don't need to know anything about infrastructure for containers or your source code or whatever you want.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: AWS Config
- Key Insights: So the idea is that you start with your source code or a Docker container image, and then you're going to configure the settings.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Auto Scaling
- Key Insights: So it shows how many vCPUs you want, how much memory you want for your containers, if you want Auto Scaling, and a few health checks.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So some basic settings to define your web application or your API.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, automatically, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It will start building and deploying the web app using the App Runner service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Container Runtime Operations
- Services: (none explicit)
- Key Insights: So, the container will be created and deployed, and then your API or your web app is deployed and you can access it right away using a URL.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, as you can see, there was no knowledge whatsoever of what goes on underneath.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Underneath, of course, it uses the AWS services, but as a user, you just don't know about it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's very quick.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So with App Runner, you get a lot of goodness.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: (none explicit)
- Key Insights: You get automatic scaling, it's highly available, you get load balancing, you get encryption, and your application, your container, can also get access to your VPC.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that you can connect to your databases, your cache, as well as your message queue services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Deployment Automation, Operational Guardrails
- Services: (none explicit)
- Key Insights: So the use case for this is to very quickly deploy web apps, API, microservices, and do rapid production deployment with best practices, all using the AWS App Runner service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a very simple service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It does very simple things, but it's very powerful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's look at an architecture using App Runner in a multi-region architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have two regions, us-east-1 and us-west-2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And, first of all, we want to start with the Docker image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So we're going to have an image on the ECR Registry, but we've learned about the Cross-Region Replication feature of ECR, and therefore, that image can be replicated to another region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB
- Key Insights: Therefore, in the first region, we can start using the App Runner service and it's going to leverage that image and we can persist data in the DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Deployment Automation
- Services: AWS SAM, Amazon DynamoDB
- Key Insights: We also know that DynamoDB Tables can be globally replicated, so we can replicate it to another region and then run the App Runner service in that other region as well, connecting to the same image and connecting to the same data source through DynamoDB.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we have a very good setup in two regions, but how do we distribute our traffic across regions?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, for this, very simple, we can use Route 53 where we set up a latency type of record that points to both end points of App Runners, and then, automatically, your user is going to be redirected to the best end point in terms of latency.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/05_Compute & Load Balancing/053_ECS Anywhere & EKS Anywhere.txt

Line 1:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: (none explicit)
- Key Insights: So now let's talk about the integration between the container services of AWS and your on-premises deployments.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 2:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the first one is Amazon ECS Anywhere which allows you to easily run containers on customer-managed infrastructure, so that means your on-premises servers, your VMs, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 3:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And so that allows you to deploy any Amazon ECS task in any environment.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 4:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So we have the Cloud and our Corporate Data Center and we're going to leverage the ECS Service, the ECS Control Plane to manage our containers on-premises.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So for this, we need to install the ECS Container Agent and the SSM Agent on-premises on our servers, and then we will specify the external launch type for our services and our tasks.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And so therefore, the ECS Agent will register with the ECS Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: The SSM agent will register with the SSM Service, and then from there, we can use the ECS Service directly from the console on AWS to launch our containers.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So as you can see, there is a tight connection and an internet connection between your Cloud and your On-Premises Data Center which allows you to use the ECS Service to connect and launch containers on your corporate data center.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you must have a stable connection to your designated AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So the use cases for Amazon ECS Anywhere is to meet compliance, regulatory, and latency requirements and to run apps outside of AWS Regions and closer to other services which allows you to perform, for example, some on-premises machine learning, videos processing, data processing, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: So here we bring the benefits of ECS on-premises and we need an internet connection between the two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Now for Amazon EKS Anywhere, even though the name is similar, the concepts are a little bit different.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here, we want to create and operate Kubernetes Cluster created outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So you're on your On-Premises Data Center, you're going to create an EKS Cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: For this, we will leverage the Amazon EKS Distro, which is the Amazon's flavor of Kubernetes, that's their own release with a bit more tools on top of it, and that's the one they use to run Amazon EKS Service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS SAM, Amazon EKS
- Key Insights: So you can install the same Distro that they use to run EKS on-premises.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: And the reason why you would use the Amazon EKS Distro is to reduce support costs and avoid maintaining redundant third-party tools.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, this works without any connection to AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So to get this EKS Cluster started on-premises, you must use the EKS Anywhere installer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: Then, if you somehow, but this is optional, wanted to connect the EKS Cluster, the EKS Anywhere Cluster into AWS, you could use the EKS Connector, and using the EKS Connector, now, Amazon EKS can manage your EKS Cluster on-premises, which gives you different modes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have to define a mode, and you can be either in fully connected or partially disconnected mode.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: That means that there is a connection between your On-Premises Data Center and Amazon EKS, and therefore, we can use the EKS Console to manage our Amazon EKS Cluster on-premises.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: The other mode is a fully disconnected mode in which case, we don't have a connection to AWS, we just install the EKS Distro and then we leverage open-source tools on-premises to manage your clusters.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Container Runtime Operations
- Services: Amazon EKS
- Key Insights: So this gives you different modes, but nonetheless, with a fully disconnected mode, we can get the benefits of an EKS cluster on-premises without having a connection into AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
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
- AWS Lambda
- AWS SAM
- AWS X-Ray
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EFS
- Amazon EKS
- Amazon EventBridge
- Amazon FSx
- Amazon Kinesis
- Amazon Lex
- Amazon OpenSearch
- Amazon RDS
- Amazon S3
- Amazon Translate
- Amazon VPC Flow Logs
- Auto Scaling
- Elastic Disaster Recovery
- Elastic Load Balancing

### 3. Features List
- auto scaling
- batch
- cloudformation
- ec2
- ecr
- ecs
- eks
- lambda
- load balancer
- sam

### 4. Use Cases
- 234_Section Introduction.txt:6: But when it comes to the Kubernetes, it is also difficult to just talk about the networking because without understanding the Kubernetes core components, it's difficult to relate how networking works in Kubernetes.
- 235_Kubernetes Architecture.txt:6: Now, as I said earlier, the purpose of this course is to focus only on the networking part, but I think it's essential to know all those core components so that when we talk about the Kubernetes networking, you understand what those components are.
- 235_Kubernetes Architecture.txt:17: You can treat them as like hosts, so that when you deploy your application, they are spread across multiple nodes.
- 235_Kubernetes Architecture.txt:19: Now, when it comes to hosting the application, these applications are hosted on the nodes, but they're hosted as something called pods.
- 235_Kubernetes Architecture.txt:35: Now, important thing here to know that when you are sitting outside of the cluster, of course, as a person, you would want to interact with the Kubernetes cluster.
- 235_Kubernetes Architecture.txt:47: For example, if you're deploying, say, different pods, and what are the configuration of those pods, you are exposing those pods as a service.
- 235_Kubernetes Architecture.txt:52: So whenever some changes you have to make, API call will make those changes persistent into the etcd key value store.
- 235_Kubernetes Architecture.txt:65: Now, as the name suggests, controller process does some job, for example, if you want to schedule a job to be running at certain time of the day.
- 235_Kubernetes Architecture.txt:68: Similarly, replication controller, if there is one replica of the pod and you want to make it clear replicas, for example, then the replication controller will do that.
- 235_Kubernetes Architecture.txt:70: So whenever you expose your pods as a service, then there is a networking component called kube-proxy, which does that.
- 235_Kubernetes Architecture.txt:76: For example, Kubernetes has a load balancer as a service.
- 235_Kubernetes Architecture.txt:78: For example, you can use application load balancer, or network load balancer in Kubernetes.
- 235_Kubernetes Architecture.txt:82: Similarly, other cloud provider will develop their own providers, and you just plug it into the Kubernetes and then it can provision those resources for you when you make some deployments into the Kubernetes.
- 235_Kubernetes Architecture.txt:95: For example, API server says, "Run this pod." Now how API server communicates with this node?
- 235_Kubernetes Architecture.txt:104: And when you want to expose pod as a service, because maybe there are multiple pods for the same service, of course, in order to scale that, right?
- 235_Kubernetes Architecture.txt:111: Because you're running containers, you need a container runtime engine inside this node, for example, if you're using Docker, then you would be having Docker engine.
- 235_Kubernetes Architecture.txt:120: Now, let's look at the process when you want to launch any pods, or say application, inside the Kubernetes cluster, then what that flow will look like.
- 235_Kubernetes Architecture.txt:121: So for example, there is a developer on the left side here.
- 235_Kubernetes Architecture.txt:150: For example, Containerd in terms, in case of Docker, container runtime engine will understand that there is one Docker image, which is available in Docker Hub, which needs to be deployed as a container or as a pod.
- 236_Amazon EKS Architecture.txt:4: Now, when it comes to the EKS, of course architecture remains the same, but the responsibility of control plane, and data plane, changes.
- 236_Amazon EKS Architecture.txt:15: You know that there are different components like for example, APIs, server, SD, data store cube controller manager, and all this has been taken care of.
- 236_Amazon EKS Architecture.txt:17: Now, when it comes to the data plane, there are multiple options for the way you would launch your nodes.
- 236_Amazon EKS Architecture.txt:19: Now, when it comes to the EC2 options, there are two ways in which you can launch this EC2 machine.
- 236_Amazon EKS Architecture.txt:28: That means provisioning the nodes, and then adding it to the Kubernetes cluster, as well as draining those nodes, in case you want to reduce the capacity, or adding new nodes when you want to increase the capacity.
- 237_EKS Cluster Networking.txt:7: But here, we are talking about EKS Cluster Networking, that means when you create EKS cluster, then how does your network look like and what are controls you have over that network?
- 237_EKS Cluster Networking.txt:32: Now further, when you create EKS cluster, it also creates security group and these security groups are attached to these ENIs.
- 237_EKS Cluster Networking.txt:41: When we talked about the Kubernetes architecture, we said that Kubernetes APIs servers kind of the heart of the communication.
- 237_EKS Cluster Networking.txt:48: Now, there are ways to disable the internet access and we'll see that in the same lecture, but this is what happens when you create the EKS cluster.
- 237_EKS Cluster Networking.txt:50: For example, launching pods, launching services, and then there is something called EKS APIs, those are AWS EKS APIs.
- 237_EKS Cluster Networking.txt:52: For example, if you launch an EC2, you make an API call to EC2 service.
- 237_EKS Cluster Networking.txt:61: Now, with that, let's look into the particular use cases.
- 237_EKS Cluster Networking.txt:62: Now to start with, let's see what are the options you have when you say you want to access the EKS Kubernetes API server?
- 237_EKS Cluster Networking.txt:71: For example, to let control plane know that some of the pod went down, so there should be a replacement pod.
- 237_EKS Cluster Networking.txt:87: So when it tries to resolve the DNS, it results to the ENI private IP.
- 237_EKS Cluster Networking.txt:100: Now, for example, if you're creating the EKS cluster altogether.
- 237_EKS Cluster Networking.txt:105: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- 237_EKS Cluster Networking.txt:119: So you don't need NAT gateway, but then if you want to allow only outbound access then you need egress only internet gateway.
- 237_EKS Cluster Networking.txt:127: For example, pod wants to send some logs to the S3 service or pod needs to access the EKS service, so all these endpoints are available because we are still operating as a normal VPC, right?
- 237_EKS Cluster Networking.txt:130: For example, you could connect it to on-premise data center or a VPN, or a Direct Connect.
- 238_EKS Pod Networking - Part 1.txt:19: Similarly, all nodes can communicate with all pods without NAT, so there shouldn't be NAT when nodes wants to communicate with the pod.

### 5. Constraints / Limitations
- 235_Kubernetes Architecture.txt:6: Now, as I said earlier, the purpose of this course is to focus only on the networking part, but I think it's essential to know all those core components so that when we talk about the Kubernetes networking, you understand what those components are.
- 235_Kubernetes Architecture.txt:59: There are many features in Kubernetes with which you can decide this pod should go to this node or that node.
- 235_Kubernetes Architecture.txt:130: Now, if you are aware of the Docker, you must very well understand that, but ultimately, from the instructions of the DockerFile, where my code is or my deployables are, and which port this container will be running, or all this information is there in the DockerFile.
- 235_Kubernetes Architecture.txt:132: It will install required libraries, binary, everything, and it will create a DockerFile out of it.
- 235_Kubernetes Architecture.txt:146: So with kubectl and Deployment file, it will reach to the API server as an instruction, and API server will then communicate with control manager ETCD scheduler, and if required, to the cloud-controller-manager to take a decision what to do about this deployment.
- 237_EKS Cluster Networking.txt:15: Of course, there should be some mechanism and you are already aware of this if you know the requester managed ENIs.
- 237_EKS Cluster Networking.txt:28: Now if you look at this architecture, typically it is advised that for this ENIs, you should have a dedicated subnet.
- 237_EKS Cluster Networking.txt:29: Now you could very well use these worker node subnets to provision these ENIs, but you know, it's always better to have better control over those subnets so that you can define the NACL rules, you can have the routing rules for your subnet and then you dedicate these subnets only for these ENIs.
- 237_EKS Cluster Networking.txt:30: And then EKS doesn't need lot of IP addresses from this subnet, only six IPs are required, but you know, in AWS you can create the smallest subnet as /28, which gives you 16 IP addresses.
- 237_EKS Cluster Networking.txt:59: That means, pod cannot have both the IPs at the same time, either they can have IPv4 addresses or they can have IPv6 addresses.
- 237_EKS Cluster Networking.txt:69: Because as I said, this ENIs by default will only allow access from control plane to the data plane.
- 237_EKS Cluster Networking.txt:71: For example, to let control plane know that some of the pod went down, so there should be a replacement pod.
- 237_EKS Cluster Networking.txt:75: Now, for that, as you might have understood your nodes needs to be in public subnet and then you should be allowed to connect to the internet through internet gateway.
- 237_EKS Cluster Networking.txt:82: So if you know the customer side of the CIDR then you can provide that and only traffic from those IPs will be allowed.
- 237_EKS Cluster Networking.txt:97: Now, in this case, we have disabled the EKS cluster endpoint public access, but we have enabled the private access so that it can only be accessed from this EKS owned ENI.
- 237_EKS Cluster Networking.txt:105: You can access that, but in certain cases you want to only allow the client inside a VPC, for example, or client inside a private network to create the EKS cluster.
- 237_EKS Cluster Networking.txt:113: Now, few additional things, maybe recommendation or best practices, what you can do inside your customer VPC.
- 237_EKS Cluster Networking.txt:119: So you don't need NAT gateway, but then if you want to allow only outbound access then you need egress only internet gateway.
- 237_EKS Cluster Networking.txt:120: Now, what is egress only internet gateway?
- 237_EKS Cluster Networking.txt:121: It only allows traffic from IPv6 addresses to go out, right?
- 237_EKS Cluster Networking.txt:122: But from outside, traffic cannot reach to those IP addresses.
- 237_EKS Cluster Networking.txt:124: But if it's IPv4 address, as you know, you should have the NAT gateways.
- 237_EKS Cluster Networking.txt:125: And then NAT gateway should be in public subnet, so traffic goes from your pods to the NAT gateways to the internet gateway, to out to the internet.
- 238_EKS Pod Networking - Part 1.txt:7: You should be able to understand what's happening here.
- 238_EKS Pod Networking - Part 1.txt:14: That means port should be treated more like a first class citizen of the network, not like containers, like if multiple containers are running on the same host, typically, they have a different OL network inside, but pod should get their own IP address.
- 238_EKS Pod Networking - Part 1.txt:19: Similarly, all nodes can communicate with all pods without NAT, so there shouldn't be NAT when nodes wants to communicate with the pod.
- 238_EKS Pod Networking - Part 1.txt:48: It doesn't assign the primary IP, it only assigns the secondary IPs.
- 238_EKS Pod Networking - Part 1.txt:63: If that is the case where you can only attach the secondary IPs, then how many parts I can host on a node?
- 238_EKS Pod Networking - Part 1.txt:85: Now for that, AWS launched a new feature, but it is only supported on Nitro-based instances.
- 238_EKS Pod Networking - Part 1.txt:99: Though technically you can launch those many pods, but then Kubernetes itself has some kind of limitation, and recommendation how many maximum pods you should typically have on any node.
- 238_EKS Pod Networking - Part 1.txt:100: And that limited based on, you know, your processes which are running on those nodes kube-proxy, kubelite, EPS server traffic, and the way Kubernetes manages the state of the nodes, and schedule the pods on the nodes, there is a recommended number, which is 110.
- 238_EKS Pod Networking - Part 1.txt:101: So it's recommended that you shouldn't typically exceed this limit of number of pods per instance type.
- 238_EKS Pod Networking - Part 1.txt:108: But then there are certain limitations which you need to know.
- 238_EKS Pod Networking - Part 1.txt:115: That means pod cannot have both IPv4 and IPv6 address at the same time, so keep that in mind.
- 238_EKS Pod Networking - Part 1.txt:116: Now for EC2 nodes, you must configure the Amazon VPC CNI add-on with IPv6 prefix delegation, and IPv6, that means if you want to use IPv6 addresses then you should must use the prefix delegation what we just learned in the last slide.
- 238_EKS Pod Networking - Part 1.txt:118: Further, you must also assign IPv4 address to your VPC.
- 238_EKS Pod Networking - Part 1.txt:119: Now, this is confusing one way we are saying that you can't use both the IP addresses at the same time for the pods, that's true.
- 238_EKS Pod Networking - Part 1.txt:121: And then subnet must have auto-assign and IPv6 address enabled so that when pods are launched in that subnet, and the nodes are launched in that subnet, they automatically get the IPv6 addresses.
- 238_EKS Pod Networking - Part 1.txt:125: And if you remember, this was kind of defined in a specification as well that pod should be able to communicate with each other without any NAT, right?
- 239_EKS Pod Networking - Part 2.txt:24: Now whatever we are talking, it applies to the IPv4 addresses only because IPv6 addresses are not network translated because they are public by default, so they don't need NATing to be enabled.

### 6. Patterns / Architectures
- 234_Section Introduction.txt:15: So we will cover Kubernetes open source architecture.
- 234_Section Introduction.txt:18: And within the EKS, we will see EKS architecture that is control plane and data plane.
- 234_Section Introduction.txt:31: So with that, let's get started with Kubernetes Architecture.
- 235_Kubernetes Architecture.txt:1: Hello, and let's first see the Kubernetes architecture, and here we are going to talk about Kubernetes open source.
- 235_Kubernetes Architecture.txt:5: So it's important for us to first understand the Kubernetes architecture.
- 235_Kubernetes Architecture.txt:29: So this is an high level architecture of the Kubernetes.
- 235_Kubernetes Architecture.txt:75: And Kubernetes has extensible architecture, which means you can integrate Kubernetes with the cloud resources.
- 235_Kubernetes Architecture.txt:158: For Kubernetes architecture, I hope it is clear that Kubernetes has control plane and data plane, and what are the components of those control plane and data plane.
- 235_Kubernetes Architecture.txt:159: With that, now, we'll move to the EKS architecture.
- 235_Kubernetes Architecture.txt:162: But we'll see how the architecture of the Kubernetes cluster looks into the AWS world.
- 236_Amazon EKS Architecture.txt:4: Now, when it comes to the EKS, of course architecture remains the same, but the responsibility of control plane, and data plane, changes.
- 236_Amazon EKS Architecture.txt:8: So the architecture is similar to what we saw earlier.
- 236_Amazon EKS Architecture.txt:13: Now this is the Kubernetes architecture.
- 236_Amazon EKS Architecture.txt:36: So that's a very brief about EKS architecture, very similar to the Kubernetes architecture.
- 237_EKS Cluster Networking.txt:1: Hello and welcome to this lecture, "Amazon EKS Cluster Networking." So in the earlier lecture, we understood the EKS architecture.
- 237_EKS Cluster Networking.txt:28: Now if you look at this architecture, typically it is advised that for this ENIs, you should have a dedicated subnet.
- 237_EKS Cluster Networking.txt:41: When we talked about the Kubernetes architecture, we said that Kubernetes APIs servers kind of the heart of the communication.
- 237_EKS Cluster Networking.txt:63: So here is the same architecture and then you have kubectl as a client which you can install on your workstation, assuming that you have permissions to connect to the Kubernetes API server then you can very well go over the internet.
- 237_EKS Cluster Networking.txt:76: And we'll talk about more patterns of public or private network going forward.
- 238_EKS Pod Networking - Part 1.txt:29: Now if you look at this VPC, you have the subnets, and then you could assign IPv4 or IPv6 that we already learned in EKS architecture.
- 238_EKS Pod Networking - Part 1.txt:110: So Nitro is Amazon design hypervisor, which is much more efficient than the open source, or commercial hypervisor which are there in the market.
- 239_EKS Pod Networking - Part 2.txt:82: But like EC2 could have multiple ENIs for multi-home kind of architecture, similarly pods could also have multiple ENIs and this is enabled through something called Multus ENI.
- 240_Security Group in EKS - Node and Pod level.txt:56: But with this architecture, it is not possible.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:75: So this is a layered service architecture you can see here.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:76: Now do you think this is a great idea to use a NodePort service type because it's the same problem like it's anti pattern to use port IP address.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:77: It's also anti pattern to use node IP address because even nodes keep changing, they die, new nodes come to the life.
- 241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt:141: So this is a great way to simplify your architecture using the Kubernetes Ingress resource.
- 243_EKS Networking Summary.txt:22: And we saw that with the architecture.
- 167_Docker Introduction.txt:12: So the use cases for Docker are a microservice architecture.
- 167_Docker Introduction.txt:34: So if you look at the architecture for a VM, you have the infrastructure then you have the host operating system then you have a hypervisor and then you have your apps and your guest operating system.
- 170_Creating ECS Service - Hands On.txt:13: Then we need to choose what type of OS and architecture we have.
- 173_Amazon ECS - Solutions Architectures.txt:1: Now let's talk about a few solution architectures you can encounter with Amazon ECS.
- 173_Amazon ECS - Solutions Architectures.txt:8: And so effectively here, what we've done is that we've created a serverless architecture to process images, or to process objects, from your S3 buckets using a Docker container.
- 173_Amazon ECS - Solutions Architectures.txt:10: Another architecture using, again, Event Bridge, is to use an Event Bridge schedule.
- 173_Amazon ECS - Solutions Architectures.txt:14: And again, all of that architecture is fully serverless.
- 174_Amazon ECS Task Definitions - Deep Dive.txt:68: And so, it's a common pattern.
- 180_AWS CoPilot - Overview.txt:5: On top of it, if you wanted to integrate it with CodePipeline you could, and that will give you automated container deployments using only one command.
- 180_AWS CoPilot - Overview.txt:8: Use the CLI or YAML file to describe the architecture of your applications in the Microservice way.
- 180_AWS CoPilot - Overview.txt:11: You can get a deployment pipeline, and you can get effective operations and troubleshooting.
- 181_AWS CoPilot - Hands On.txt:22: You have a worker service when you have a SQS to ECS on Fargate type of architecture.

## Step 3 - Deep Expansion (Compute Concepts)

### Core Services in This Topic
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS X-Ray: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Data Firehose: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DynamoDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

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
