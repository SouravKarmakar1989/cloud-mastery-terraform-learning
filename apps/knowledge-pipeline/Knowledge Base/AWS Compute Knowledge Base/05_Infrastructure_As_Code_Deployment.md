# 05_Infrastructure_As_Code_Deployment.md

## Scope
- Topic: CloudFormation, SAM, CDK, and platform deployment automation
- Files processed: 27
- Extracted non-empty transcript lines: 1280
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Compute Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Compute: Infrastructure As Code Deployment)

This section is the study-first architecture guide for cloudformation, sam, cdk, and platform deployment automation.

### Phase 1 - Foundations

#### Module: Infrastructure As Code Deployment Mental Model
- Use infrastructure as code deployment decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Infrastructure As Code Deployment Mental Model
- Primary transcript files:
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/387_CDK - Commands & Bootstraping.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/388_CDK - Unit Testing.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/385_CDK - Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/386_CDK - Constructs.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/210_CloudFormation - Stack Policy.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/209_CloudFormation - Deletion Policy.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/207_CloudFormation - Service Role.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/384_CDK Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/212_CloudFormation - Custom Resources.txt
- Top concept clusters from transcript metadata:
- Deployment Automation
- Operational Guardrails
- Serverless Execution Model
- Compute Platform Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 27
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1280
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- So the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- And the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- Next, we're going to run cdk synth to get the target CloudFormation template that is going to be generated out of our stack.
- They are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- So this is the transformation between your CDK stack as code into a CloudFormation templates.
- A CloudFormation stack called CDKToolkit is going to be created with what we need.
- The first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- That means if you want to have some kind of, loop structures, if else condition, that is very difficult in CloudFormation, but then, with AWS Cloud Development Kit, which is CDK, you can write a code in these languages to generate the CloudFormation template.
- So, when you have a CloudFormation Stack update, by default, any action is going to be allowed on all resources so you can change your stack as you wish, but sometimes, you may want to protect your stack against updates, or part of your stack against updates.
- DeletionPolicy is a setting you can apply to resources on your CloudFormation templates, which allows you to control what happens to a resource when the resource is removed from your CloudFormation templates or when the CloudFormation stack is deleted.
- So here, we have an example where the first statement is saying "Allow update*" on everything, meaning that everything in your CloudFormation Stack can be updated, and the second part is saying "Deny update*" on Resource Production Database.

##### Polished Architect Notes
- Transcript signals that so the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Transcript signals that and the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- Transcript signals that next, we're going to run cdk synth to get the target CloudFormation template that is going to be generated out of our stack.
- Transcript signals that they are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Transcript signals that so this is the transformation between your CDK stack as code into a CloudFormation templates.
- Transcript signals that a CloudFormation stack called CDKToolkit is going to be created with what we need.
- Transcript signals that the first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Transcript signals that now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- Transcript signals that that means if you want to have some kind of, loop structures, if else condition, that is very difficult in CloudFormation, but then, with AWS Cloud Development Kit, which is CDK, you can write a code in these languages to generate the CloudFormation template.
- Transcript signals that so, when you have a CloudFormation Stack update, by default, any action is going to be allowed on all resources so you can change your stack as you wish, but sometimes, you may want to protect your stack against updates, or part of your stack against updates.
- Transcript signals that deletionPolicy is a setting you can apply to resources on your CloudFormation templates, which allows you to control what happens to a resource when the resource is removed from your CloudFormation templates or when the CloudFormation stack is deleted.
- Transcript signals that so here, we have an example where the first statement is saying "Allow update*" on everything, meaning that everything in your CloudFormation Stack can be updated, and the second part is saying "Deny update*" on Resource Production Database.

##### Architect Synthesis (Transcript-Derived)
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Serverless Execution Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Design implication: and the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- Design implication: next, we're going to run cdk synth to get the target CloudFormation template that is going to be generated out of our stack.
- Design implication: they are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Design implication: so this is the transformation between your CDK stack as code into a CloudFormation templates.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/388_CDK - Unit Testing.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/384_CDK Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/387_CDK - Commands & Bootstraping.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/385_CDK - Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/207_CloudFormation - Service Role.txt
- outputs/aws-solutions-architect-professional/12_Deployment and Instance Management/124_AWS CDK - Cloud Development Kit.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/386_CDK - Constructs.txt
- Top concept clusters from transcript metadata:
- Deployment Automation
- Operational Guardrails
- Serverless Execution Model
- Compute Platform Design
- Container Runtime Operations
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 27
- Module-selected transcript files: 8
- Key insight candidates scanned (topic): 1280
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Well, because you are using code with CDK you can actually test your code the same way you would test normal standard Python code or JavaScript code, and so on.
- There's also a way where you can combine the CDK and the SAM framework.
- So you can use the SAM CLI to locally test your CDK applications.
- So you may ask me, what is the difference between CDK and SAM?
- The first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- That means if you want to have some kind of, loop structures, if else condition, that is very difficult in CloudFormation, but then, with AWS Cloud Development Kit, which is CDK, you can write a code in these languages to generate the CloudFormation template.
- So this is something you have to do once per account per region, and of course you should be running this command from a directory one level up because there is a cdk.json file in it which contains some important information around how we want to be set up.
- So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Well, first we must run cdk synth, and when we do that, we have a Lambda function say, in the CDK application, we run the cdk synth command and this is going to generate a CloudFormation template that has been synthesized from the CDK.
- So if you want to give the ability to users to actually create, update and delete stack resources, but they don't have the permissions to directly work with the resources, what you would do is use a service role.
- So just as a quick reminder we're going to use the CDK to create an S3 bucket, a Lambda function that will invoke Amazon Recognition and DynamoDB tables to save the results of our action all using the Amazon CDK.

##### Polished Architect Notes
- Transcript signals that well, because you are using code with CDK you can actually test your code the same way you would test normal standard Python code or JavaScript code, and so on.
- Transcript signals that there's also a way where you can combine the CDK and the SAM framework.
- Transcript signals that so you can use the SAM CLI to locally test your CDK applications.
- Transcript signals that so you may ask me, what is the difference between CDK and SAM?
- Transcript signals that the first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Transcript signals that now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- Transcript signals that that means if you want to have some kind of, loop structures, if else condition, that is very difficult in CloudFormation, but then, with AWS Cloud Development Kit, which is CDK, you can write a code in these languages to generate the CloudFormation template.
- Transcript signals that so this is something you have to do once per account per region, and of course you should be running this command from a directory one level up because there is a cdk.json file in it which contains some important information around how we want to be set up.
- Transcript signals that so the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Transcript signals that well, first we must run cdk synth, and when we do that, we have a Lambda function say, in the CDK application, we run the cdk synth command and this is going to generate a CloudFormation template that has been synthesized from the CDK.
- Transcript signals that so if you want to give the ability to users to actually create, update and delete stack resources, but they don't have the permissions to directly work with the resources, what you would do is use a service role.
- Transcript signals that so just as a quick reminder we're going to use the CDK to create an S3 bucket, a Lambda function that will invoke Amazon Recognition and DynamoDB tables to save the results of our action all using the Amazon CDK.

##### Architect Synthesis (Transcript-Derived)
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Serverless Execution Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Container Runtime Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: well, because you are using code with CDK you can actually test your code the same way you would test normal standard Python code or JavaScript code, and so on.
- Design implication: there's also a way where you can combine the CDK and the SAM framework.
- Design implication: so you can use the SAM CLI to locally test your CDK applications.
- Design implication: so you may ask me, what is the difference between CDK and SAM?
- Design implication: the first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/207_CloudFormation - Service Role.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/387_CDK - Commands & Bootstraping.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/196_CloudFormation - Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/388_CDK - Unit Testing.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/213_CloudFormation - StackSets.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/385_CDK - Hands On.txt
- outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/386_CDK - Constructs.txt
- outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/210_CloudFormation - Stack Policy.txt
- outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/209_CloudFormation - Deletion Policy.txt
- Top concept clusters from transcript metadata:
- Deployment Automation
- Operational Guardrails
- Serverless Execution Model
- Compute Platform Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 27
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1280
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- So the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- In terms of cost, well, all the resources within your CloudFormation stack is going to be tagged with an identifier so you can easily see how much a CloudFormation stack is going to cost you.
- And the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- And within an organization, only an administrator account or someone who's been designated as an administrator can create StackSets, of course.
- Next, we're going to run cdk synth to get the target CloudFormation template that is going to be generated out of our stack.
- They are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- So this is the transformation between your CDK stack as code into a CloudFormation templates.
- A CloudFormation stack called CDKToolkit is going to be created with what we need.
- So now let's talk about CloudFormation StackSets.
- The first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.

##### Polished Architect Notes
- Transcript signals that so the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Transcript signals that so the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Transcript signals that in terms of cost, well, all the resources within your CloudFormation stack is going to be tagged with an identifier so you can easily see how much a CloudFormation stack is going to cost you.
- Transcript signals that and the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- Transcript signals that and within an organization, only an administrator account or someone who's been designated as an administrator can create StackSets, of course.
- Transcript signals that next, we're going to run cdk synth to get the target CloudFormation template that is going to be generated out of our stack.
- Transcript signals that they are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Transcript signals that so this is the transformation between your CDK stack as code into a CloudFormation templates.
- Transcript signals that a CloudFormation stack called CDKToolkit is going to be created with what we need.
- Transcript signals that so now let's talk about CloudFormation StackSets.
- Transcript signals that the first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Transcript signals that now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.

##### Architect Synthesis (Transcript-Derived)
- Treat Deployment Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Guardrails as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Serverless Execution Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Compute Platform Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Design implication: so the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Design implication: in terms of cost, well, all the resources within your CloudFormation stack is going to be tagged with an identifier so you can easily see how much a CloudFormation stack is going to cost you.
- Design implication: and the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- Design implication: and within an organization, only an administrator account or someone who's been designated as an administrator can create StackSets, of course.

### Phase 2 - Core Services
- AWS CloudFormation should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- Amazon ECR should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Compute Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Compute Platform Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Container Runtime Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Deployment Automation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Elasticity and Availability becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design infrastructure as code deployment with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when infrastructure as code deployment decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Signal 2: They are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Signal 3: Now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- Signal 4: Transcript signals that so the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Signal 5: Transcript signals that they are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Signal 6: Transcript signals that now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- Signal 7: Design implication: so the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Signal 8: Design implication: they are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Signal 9: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Signal 10: So if you want to give the ability to users to actually create, update and delete stack resources, but they don't have the permissions to directly work with the resources, what you would do is use a service role.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for CloudFormation, SAM, CDK, and platform deployment automation
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

### Activity 2: AWS Lambda Lab for CloudFormation, SAM, CDK, and platform deployment automation
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

### Activity 3: Amazon VPC Lab for CloudFormation, SAM, CDK, and platform deployment automation
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

### Activity 4: Elastic Load Balancing Lab for CloudFormation, SAM, CDK, and platform deployment automation
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

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study CloudFormation, SAM, CDK, and platform deployment automation in a cloud-agnostic way: focus on capability first, provider name second.

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
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |

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

## CloudOps Transcript Additions — CloudFormation for CloudOps

### Source Files
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/079_[DVA] CloudFormation - Overview.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/080_[DVA] CloudFormation - Create Stack - Hands On.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/081_[DVA] CloudFormation - Update & Delete Stack - Hands On.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/082_[DVA] YAML Crash Course.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/083_[DVA] CloudFormation - Resources.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/084_[DVA] CloudFormation - Parameters.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/085_[DVA] CloudFormation - Mappings.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/086_[DVA] CloudFormation - Outputs & Exports.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/087_[DVA] CloudFormation - Conditions.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/088_[DVA] CloudFormation - Intrinsic Functions.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/089_[DVA] CloudFormation - Rollbacks.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/090_[DVA] CloudFormation - Service Role.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/091_[DVA] CloudFormation - Capabilities.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/092_[DVA] CloudFormation - Deletion Policy.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/093_CloudFormation - UpdateReplace Policy.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/094_[DVA] CloudFormation - Stack Policy.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/095_[DVA] CloudFormation - Termination Protection.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/096_[DVA] CloudFormation - Custom Resources.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/097_[DVA] CloudFormation - Dynamic References.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/099_CloudFormation - User Data.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/100_CloudFormation - cfn-init.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/101_CloudFormation - cfn-signal & Wait Condition.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/102_CloudFormation - cfn-signal Failures.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/103_CloudFormation - Nested Stacks.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/104_CloudFormation - Depends On.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/106_CloudFormation - StackSets.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/107_CloudFormation - Create StackSets - Hands On.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/108_CloudFormation - Update StackSets - Hands On.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/109_CloudFormation - Delete StackSets - Hands On.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/110_CloudFormation - Drift.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/111_CloudFormation - Troubleshooting.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/112_CloudFormation - Stack Failures.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/113_CloudFormation - Stack-level Tags.txt
- outputs/aws-certified-cloudops-associate/07_CloudFormation for CloudOps/114_CloudFormation - ASG Update Policy.txt

### CloudOps Synthesis
- StackSets are the organization-scale deployment primitive for pushing the same stack across many accounts and regions.
- StackSets permission models matter operationally:
  - self-managed permissions require administrator and execution roles with explicit trust relationships
  - service-managed permissions rely on AWS Organizations trusted access and can auto-deploy to newly created organization accounts
- Drift detection is the right control when manual console changes may have modified stack-managed resources outside CloudFormation.
- Drift can be detected at the resource, stack, stack instance, and StackSet level.
- Common `DELETE_FAILED` causes are operational, not template syntax issues: non-empty S3 buckets, security groups still attached, and resources that need special teardown sequencing.
- `DeletionPolicy=Retain` is the safe bypass when teardown is blocked but the stack operation must proceed.
- `UPDATE_ROLLBACK_FAILED` usually means the forward update failed and the rollback also hit a dependency, permission, or out-of-band drift problem; fix the root cause, then use `ContinueUpdateRollback`.
- Cross-region template portability depends on avoiding hardcoded AMI IDs, region-specific ARNs, and globally unique names that already exist.
- Auto Scaling Group update strategies in CloudFormation have two distinct operational behaviors:
  - rolling update updates instances in place with batch and healthy-capacity controls
  - replacing update creates a replacement ASG and preserves the old group if the new rollout fails

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/246_AWS CloudFormation.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Hello, and welcome to this lecture, AWS CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, as I said, from the management services, we'll be looking at few services here, and we are talking about AWS CloudFormation, because we have seen some question, one or two times maybe around AWS CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, first of all, let's understand what is AWS CloudFormation service.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can say, it is infrastructure as a code service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, instead of manually creating everything, you can just write a code for that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, if you're doing a lot of manual work for creating AWS infrastructure, like creating VPCs, and the Subnets, and the VPN connection, it is no more required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And if you're working in AWS, I'm sure, you know AWS CloudFormation, because it's pretty much, very powerful service in AWS.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you can always create these resources interpretable manner in different AWS region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Maybe for day one test purpose, You are launching your resources in US, East one region, because cost is relatively lower there, but for production, you want to launch it in, maybe Singapore region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: Then you can use the same CloudFormation template, and just deploy it in Singapore, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So, you can deploy same resources in another region, another AWS account.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Container Runtime Operations, Deployment Automation
- Services: AWS CloudFormation, AWS SAM, Amazon ECR
- Key Insights: And, even if within the same region, if everything was deleted accidentally, you can recreate that using the CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, wouldn't it to be great?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you could do that as a code, of course, it'll be great.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And that's where, it's AWS CloudFormation service, that helps you with.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's a declarative way of outlining your AWS infrastructure for any resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, when we say any resources, typically what I have seen is, whenever AWS launches new AWS services, they will also have a support for that service in AWS CloudFormation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you compare this with, maybe a third party tools, for example, you know, Terraform, you know, Ansible.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, these are not native to AWS, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in that case, I think it will take some longer time for, you know, resources support to be available in those tools.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So yeah, most of the AWS resources are supported in AWS CloudFormation as of today.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, why would you use AWS CloudFormation?
- Hidden/Implicit Meaning: Platform automation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to create everything, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: VPC, Subnets, internet gateways, security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we have been doing a lot of exercises, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In this course, and you know that we are creating all this one by one, sequentially, manually, and it takes certain amount of time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, of course, we would want to use AWS CloudFormation instead, because it creates your resources in right order.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Because for example, if you're creating EC2, it knows that, it has to first create a subnet, and before subnet, it has to first create VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, all these dependencies typically managed by AWS CloudFormation internally.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't have to really worry a lot, but there have been cases where you need to manage the dependency and we'll talk about that.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then it creates those resources in the right order.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, what are the benefits of CloudFormation, of course, infrastructure as a code, no resources created manually.
- Hidden/Implicit Meaning: Platform automation signal.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means no manual errors, code can be controlled using the git kind of repository.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's source controlled.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means you could also see or track the changes happening to your infrastructure through the code, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, if somebody changes your template, which has been added to git repository, you can review, what changes have been made to your infrastructure, just looking at that template change.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it is reviewable.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Cost.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: You could also get a cost for per CloudFormation template, ultimately templates create resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, what's the total cost of all those resources inside my AWS CloudFormation template, that cost you can get.
- Hidden/Implicit Meaning: Platform automation signal.

Line 41:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Because CloudFormation adds automatically attached to every resource it creates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 42:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: That means you could also, you know, estimate how much this CloudFormation template will cost, if somebody deploys that.
- Hidden/Implicit Meaning: Platform automation signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Further, you could also have a saving strategy, for example, in development environment, you want to delete everything at 5:00 PM, because it's a development, and you don't want those resources to be running throughout the night.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, you could have this kind of automation set, because you created your all resources using CloudFormation, and you can make one API call to delete the CloudFormation stack that it created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you are saving a lot of cost there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, how does it work?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You write a template.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Template could be JSON and YAML, and you just store that template in S3 bucket, or you can even have it on your machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You upload that in that case.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then, CloudFormation will create all the resources, which are part of that template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 52:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So, this is a simple template for VPC peering in the same account.
- Hidden/Implicit Meaning: Platform automation signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is a type of the resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You define it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And there is a documentation in AWS, which tells you what the resource name is, and what are the properties of the resources are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, here we say, VPC ID is a current VPC, which is making and request for other VPC to peer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, there will be peer VPC ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, after you deploy that in a CloudFormation, there will be a VPC peering, between this VPC and other remote VPC, basically.
- Hidden/Implicit Meaning: Platform automation signal.

Line 59:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Now, this is in the same AWS account, but that could be another AWS account as well.
- Hidden/Implicit Meaning: Platform automation signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you add additional parameters here, who is the owner of that account?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What is the rule that the other account will be using?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What tags I need to add?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, not all the properties are mandatory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Most of the properties are optional, as you can see here, but then, depending on what resources you create, there will be different properties.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: The best way to really check is to go to AWS documentation for CloudFormation and look at all those properties.
- Hidden/Implicit Meaning: Platform automation signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is just one example out there.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, some feature and components of CloudFormation, which are again important to know.
- Hidden/Implicit Meaning: Platform automation signal.

Line 68:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: CloudFormation Designer.
- Hidden/Implicit Meaning: Platform automation signal.

Line 69:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: As I said, you can provide the template, and CloudFormation can show you the diagrams on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 70:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: You can also basically create those diagrams, and automatically it will create the CloudFormation template for you.
- Hidden/Implicit Meaning: Platform automation signal.

Line 71:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: ChangeSets, what it means is, if you have one CloudFormation template already developed, and then you deployed a stack using that CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, you want to change something.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Maybe you want to add one more security group rule, for example, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, before making changes to your live environment, you want to make sure that you understand what changes your template is going to make to your environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in that case, you create a ChangeSet.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Then it'll tell you that it's going to add a new security group, is that okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you review it, and then you go, and apply those changes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is like a pre step before you apply new changes, or you update the template, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Before that you can look at this ChangeSets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: StackSets.
- Hidden/Implicit Meaning: Platform automation signal.

Line 81:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: Now, if it's a same stack, and you want to deploy it across multiple AWS account, or multiple regions.
- Hidden/Implicit Meaning: Platform automation signal.

Line 82:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: Maybe you are a SAS provider and you want to deploy, you know, per customer one stack, exactly same stack in different regions or accounts.
- Hidden/Implicit Meaning: Platform automation signal.

Line 83:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Then you can use StackSets.
- Hidden/Implicit Meaning: Platform automation signal.

Line 84:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, you don't have to repeat those things for every account, rather StackSets will take care of that.
- Hidden/Implicit Meaning: Platform automation signal.

Line 85:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Stack Policies.
- Hidden/Implicit Meaning: Platform automation signal.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, important one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Maybe you are creating CloudFormation stack with a lot of resources, and you want ability to delete those resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 88:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: You will just go and delete the CloudFormation stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 89:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you're using say a database, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 90:
- Concepts: Compute Operational Context
- Services: Amazon RDS
- Key Insights: RDS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 91:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you don't want database to be deleted, because there is a lot of data in there, and that's valuable to you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 92:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Even if you are deleting the environment, you want to reuse that data somewhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Or maybe if you're launching again an application, you want to use the same database.
- Hidden/Implicit Meaning: Platform automation signal.

Line 94:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, you could provide a Stack Policies, which says, don't delete this particular resource, delete everything else, but don't delete this.
- Hidden/Implicit Meaning: Platform automation signal.

Line 95:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, all that can be done using Stack Policies.
- Hidden/Implicit Meaning: Platform automation signal.

Line 96:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Few more, Cross Stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 97:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, Cross Stacks are something like, you know, you have a base, stack basically.
- Hidden/Implicit Meaning: Platform automation signal.

Line 98:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is more, you know, programming kind of thing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: Every other stack uses the same base stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 100:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, you're creating one VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 101:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in that one VPC, you want to launch multiple applications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 102:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, instead of every application launching their own VPC, you use one VPC stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 103:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: As a separate stack, it'll just launch that VPC, and required subnets.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 104:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: And then, all the other stack will use the same VPC.
- Hidden/Implicit Meaning: Platform automation signal.

Line 105:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, they can refer the resources in the centralized, or base stack into their stack, basically.
- Hidden/Implicit Meaning: Platform automation signal.

Line 106:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, that is a Cross Stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 107:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then, Nested Stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 108:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: It's more about, you can reuse your existing stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 109:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon RDS
- Key Insights: So, instead of creating the RDS database, or including the code for RDS database into every CloudFormation template, you just wrap it into one separate CloudFormation template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 110:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then, you could have one big CloudFormation template, which just refers to other template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you are not rewriting the code, basically.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: You are reusing your other CloudFormation templates, which you have already written.
- Hidden/Implicit Meaning: Platform automation signal.

Line 113:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it also provides you some kind of standardization.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon RDS
- Key Insights: You want to make sure the DBAs write this RDS stack, and nobody changes that, right?
- Hidden/Implicit Meaning: Platform automation signal.

Line 115:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, you just refer to those stack for creating the database rather than writing your own code.
- Hidden/Implicit Meaning: Platform automation signal.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Moving on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 118:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Many a times, it happens like in CloudFormation, you write a template, and then you want to make sure, before creating one of the resource, some other resource should be created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, most of the time AWS manages that, but there are certain scenarios where AWS can't decide, whether you want to create resource first, and then add the entry somewhere, because it's all, not directly related.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to create a VPN gateway in your architecture, and you also want to add a route table entry for that VPN gateway for route propagation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, if you want to really enable that route propagation, first the VPN gateway has to be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, CloudFormation natively you cannot manage that, but then CloudFormation provides you some levers, like for example, there is something called DependOn as an Attribute.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, what it does is, you can say, before creating the route table propagation, it DependsOn the VPN gateway resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, what CloudFormation will do it, before creating this root propagation, it'll wait for your VPN gateway attachment to happen.
- Hidden/Implicit Meaning: Platform automation signal.

Line 125:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then only, it will enable that route propagation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 126:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this kind of conditions, helps you really manage the dependencies of the AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, there is one more such condition like DependsOn, which is WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, WaitCondition is interesting.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Many a times, you would want that, you launch EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And also in that EC2 machine, you would want to install some applications.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 131:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Now, AWS won't know, what kind of application you're installing in EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Maybe you're using user data of the EC2 to, you know, download some packages, and install.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And before you move to the next resources to be created through CloudFormation, you want to wait.
- Hidden/Implicit Meaning: Platform automation signal.

Line 134:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Because maybe then, EC2 also making a call to a database, or there is some dependencies between, you know, all these things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, what you can do is, you can create a WaitCondition, and then, through your EC2 user data, you install everything, and you can send signal to the WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 136:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, WaitCondition moves forward.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Otherwise it'll wait for the maximum time amount period, that you have defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, you can give your EC2 machine, to have maybe 10 minutes of, you know, boot strap time, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 139:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you put that under the WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 140:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, without WaitCondition, what would happen?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 141:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: CloudFormation will create EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 142:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So, as soon as EC2 instances up and running, CloudFormation thinks that, yeah, it is done, right?
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 143:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's move to the next resources to be created, or other parallel resources to be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 144:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if there is some kind of dependencies, then it can't handle that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 145:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you would have to use WaitCondition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 146:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, we are not using DependsOn clause here, because again, DependsOn just looks at the AWS resource creation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 147:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: It doesn't really wait for EC2 to be become active, which only, you know, when the EC2 installs all the scripts inside within the user data, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 148:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you have to externally make a signal to the WaitCondition, and there is a way to do that, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 149:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: It gives you one URL, you send a signal to that URL, which is S3 based URL, which WaitCondition handler gives you.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 150:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then, once that handler receives the signal as success, then only, CloudFormation will proceed from there.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 151:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: I know, little mercy here, but then, if you're interested, just read more about it through CloudFormation documentation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 152:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But then, DependsOn and WaitConditions are the two things, we have seen, coming into your exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 153:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 154:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, that's about the CloudFormation basically.
- Hidden/Implicit Meaning: Platform automation signal.

Line 155:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And just, as I said, there is an extension to the CloudFormation, which is Cloud Development Kit.
- Hidden/Implicit Meaning: Platform automation signal.

Line 156:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, CloudFormation itself is a template, which you write in a JSON or YAML format.
- Hidden/Implicit Meaning: Platform automation signal.

Line 157:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if you want to really write a real code using Java, or a TypeScript, or Python.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 158:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, it will create then CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 159:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, that's really the powerful, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 160:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: That means if you want to have some kind of, loop structures, if else condition, that is very difficult in CloudFormation, but then, with AWS Cloud Development Kit, which is CDK, you can write a code in these languages to generate the CloudFormation template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 161:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And then, you can deploy using the CDK CLI, basically.
- Hidden/Implicit Meaning: Platform automation signal.

Line 162:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So, you write your code, you synthesize that code through CDK CLI, which generates the template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 163:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then, you deploy that using the CloudFormation to create the stack, basically.
- Hidden/Implicit Meaning: Platform automation signal.

Line 164:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So, that is CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 165:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you can write a code in Java, Python, as I said.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 166:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is the new way of doing the things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 167:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, you can also create libraries.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 168:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: It is called as CDK Construct.
- Hidden/Implicit Meaning: Platform automation signal.

Line 169:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you can share your Construct with other developers.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 170:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You could add that to your open source code, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 171:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, all the developers can use your code, and change it as required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 172:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, instead of really sharing the template, you are now sharing the code, which generates those templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 173:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And the process is like your cdk init, which folks a project into your repository.
- Hidden/Implicit Meaning: Platform automation signal.

Line 174:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you build that, you synthesize that, which creates the template.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 175:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: If you are making an update to existing template, you can also look at the cdk diff, which is like a ChangeSets in CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 176:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And then you say cdk deploy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 177:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So, ultimately same thing, but you know, doing it more in programmatic way.
- Hidden/Implicit Meaning: Platform automation signal.

Line 178:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So, that's about CDK, and that's about the CloudFormation, that you need to know for your exam.
- Hidden/Implicit Meaning: Platform automation signal.

Line 179:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope, most of the things are clear.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 180:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/17_AWS Elastic Beanstalk/189_Beanstalk CLI and Deployment Process.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, we have the EB CLI available to us, but there is an additional CLI called, the "Elastic Beanstalk CLI," which makes working with Beanstalk from the CLI much easier.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: AWS Config, AWS Elastic Beanstalk
- Key Insights: And there's a bunch of commands such as eb create, eb status, health, events, logs, open, deploy, config, terminate, and all these commands and more can help you reproduce what we've been doing from the Elastic Beanstalk console, but with a command line interface.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, it's helpful to use the EB CLI when you want to automate your development pipelines.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is not necessary to know these commands going into the developer exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is more necessary to know them when you go into the DevOps exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, I deal with those in my DevOps exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So there will be no hands on on the EB CLI, but just you know, the EB CLI does exist and helps you speed up your efficiency when using the CLI against Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Now, this Elastic Beanstalk CLI helps you with deploying your Beanstalk application.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So, regardless, to deploy a Beanstalk application, you need to describe your dependencies.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, you need to create a requirements.txt for Python or you create a package.json for Node.js.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you package all your code as a zip and you described your dependencies in that file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we said, these two files.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Then you upload the zip file into Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This will create a new app version and then when the app version is uploaded, we can deploy it using the console or using the CLI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: We can do the exact same thing with the EB CLI, it will create a zip file, upload that zip and deploy it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: That zip, by the way, when you upload it onto Beanstalk, it actually gets uploaded onto Amazon history, and then refers the Amazon is free bundle from the Beanstalk interface.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: Okay, so then once this is done, Beanstalk will take these zips and will deploy them onto each EC2 instances, they will resolve the dependencies from the requirements, the Python or the package of json for Node.js, and then the application will start.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: This is the theory lectures that should explain you the backend process of how Beanstalk works.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: If you want to replay, try to go on the documentation website and install the EB CLI.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But just so you know, this is out of scope of the exam and out of scope for this course so I don't want to tell you with so many details, just know that it exists and hopefully that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/17_AWS Elastic Beanstalk/192_Beanstalk & CloudFormation.txt

Line 1:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Okay so let's have a look under the hood at how Elastic Beanstalk works.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: So under the hood, Beanstalk relies on something called CloudFormation, and we'll see CloudFormation in this course later on, but as a sneak peak, CloudFormation is used to provision other AWS services so we have our infrastructure as code.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: So Elastic Beanstalk is using CloudFormation as it's basis to do a lot of it's operations.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So why would I tell you this?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Well the use case is that using the CloudFormation resources in your .ebextensions folder that we just saw before, you can provision anything you want.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB, Amazon ElastiCache, Amazon S3
- Key Insights: So you can provision an ElastiCache, an S3 bucket, an DynamoDB table, whatever you want and that you'll see in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Config, AWS Elastic Beanstalk
- Key Insights: So the beautiful thing is that Elastic Beanstalk, even though the UI only allows you to configurate a few things, with EB extensions and CloudFormation, you can configure anything you want in your AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So let's have a sneak peek into it to see how CloudFormation was used during this session.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: So I'm here in Beanstalk and we have our application with two environments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now I'm going to go to CloudFormation and show you what happens behind the scene.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So in CloudFormation I can see I have two stacks, don't worry about this one, I have two stacks called eb-e stack and eb-e stacks and so they are different.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So the first stack is actually, we can have a look here, for -en and this one is for -prod.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's make it very simple let's look at the -en one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So if I click on the stack, it corresponds to a CloudFormation template and you can have a look by clicking on template and this would show you the entire template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you don't need to know how to read this right now, don't worry we'll learn about it later in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But the cool thing is that if you go to resources it shows you everything this CloudFormation stack has created for us.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Elasticity and Availability
- Services: AWS Config
- Key Insights: So as we can see, it has created an autoscaling group, an autoscaling group launch configuration, there was a Elastic IP, so EIP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: There was as well as EC2 security group, and there was wait conditions that we can simply ignore for now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then if I go to the other stack, so the -prod stack, this time they created 16 resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Elasticity and Availability
- Services: AWS Config
- Key Insights: So we have an autoscaling group, a launch configuration, a scaling policy, right here, another scaling policy, we can simply ignore this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation, Elasticity and Availability
- Services: AWS CloudFormation, Amazon CloudWatch
- Key Insights: So CloudFormation, a CloudWatch alarms, another CloudWatch alarm, this is used for the scaling policies.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: And then EC2 security group, another security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Elasticity and Availability
- Services: Elastic Load Balancing
- Key Insights: And finally and elastic load balancer alongside listener rules and a target group.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 24:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: So CloudFormation was used behind the scenes to provision our Elastic Beanstalks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon DynamoDB, Amazon ElastiCache, Amazon S3
- Key Insights: Now we don't need to touch anything in CloudFormation, but just so you know using CloudFormation you could deploy Elasticache, or DynamoDB, or S3 buckets.
- Hidden/Implicit Meaning: Platform automation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And so that would allow us to expand our Elastic Beanstalk applications to include anything we wanted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it for this Halil review, I hoped you liked it,
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/196_CloudFormation - Overview.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now let's learn about AWS CloudFormation, which is one of my personal favorite services in AWS.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So CloudFormation is a way for you to outline your AWS infrastructure for any resources for this using just code.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: For example, in a CloudFormation template, you're going to say, I want a security group.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: I want two EC2 instances that are going to be using the security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I want Elastic IPs for these EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 6:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: I want an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: I want a load balancer in front of these EC2 instances.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Config
- Key Insights: And then by declaring what you want by just saying, hey, all these things should exist and they should be linked together, automatically, CloudFormation will create them for you in the right order with the exact configuration that you specify.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Config
- Key Insights: So this removes any need of doing manual configuration and manual work, and all the things is provisioned through CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So a CloudFormation template is going to be some code, and the code will involve in a declarative way what you want your infrastructure to be composed of.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then we'll be able to visualize this infrastructure using Infrastructure Composer to see how the components relate to each other in CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So why should you use AWS CloudFormation?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, first, it is your infrastructure as code.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that no resources are being manually created, which is going to be excellent for control.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And all the code that makes up these CloudFormation templates can be used for version control, for example, using Git.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, any changes to your infrastructure is going to be reviewed through code changes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: In terms of cost, well, all the resources within your CloudFormation stack is going to be tagged with an identifier so you can easily see how much a CloudFormation stack is going to cost you.
- Hidden/Implicit Meaning: Platform automation signal.

Line 18:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And we can also estimate the cost of resources from your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, you can have saving strategy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: For example, in your development environment, you could automate the deletion of the templates at 5:00 PM and recreate them automatically at 8:00 AM in a safe matter because everything is automated.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: For productivity, this is amazing because you have the ability to destroy and recreate an infrastructure on the cloud on the fly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is really leveraging the whole power of the cloud, which is to just create and delete things and only pay as you go.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You also have automated generation of diagrams for your template, which is very good for your architecture diagrams and its declarative programming.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you don't need to figure out the order of the creation of the resources and the orchestration of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: All these things are done by CloudFormation for you.
- Hidden/Implicit Meaning: Platform automation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There's also a separation of concern.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: You can create many CloudFormation stacks for many applications and many layers.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: For example, you may want to have stacks for your network and your VPCs.
- Hidden/Implicit Meaning: Platform automation signal.

Line 29:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: You may want to have stacks for your applications and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Finally, you don't reinvent the wheel because you can leverage existing templates on the web and the documentation to quickly write your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 31:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, how does CloudFormation work?
- Hidden/Implicit Meaning: Platform automation signal.

Line 32:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon S3
- Key Insights: Well, your templates must be uploaded in Amazon S3 and then referenced from CloudFormation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 33:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So you upload it, and then from CloudFormation you reference it and a stack will be created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And what is a CloudFormation stack?
- Hidden/Implicit Meaning: Platform automation signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, it is made of AWS resources, and it could be any kind of things you can create on AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to update a template, you cannot edit the previous one.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: What we have to do is to re-upload a new version of the template to AWS and then update your stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 38:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, your stacks are identified by a name within the region, and if you delete a CloudFormation stack, every single artifact and resource that was created by CloudFormation will be deleted.
- Hidden/Implicit Meaning: Platform automation signal.

Line 39:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, how do we deploy CloudFormation templates?
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Well, there is the manual way in which we're going to use something like Infrastructure Composer or a code editor to directly create our CloudFormation templates, and then we use the console to input the parameters and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we'll do this method mostly in this course for learning purposes, or you can go the automated way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you're going to edit your templates in a YAML file, and then you use the CLI to deploy the templates, or you use a continuous delivery tool to this automatically on the cloud.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And it's recommended if you want to fully automate your flow to deploying CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 44:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, the building blocks of CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So your template is made of different components, and we'll have a look at them in detail, so don't be overwhelmed by this, but we have the AWSTemplateFormatVersion, which defines the version of how to read the templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is for internal purposes from AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: The description, which is the comments about the templates, the resources, which is the actual only mandatory section in CloudFormation, which is going to define all the AWS resources that are declared in the templates, the parameters, which are the dynamic inputs for your templates, the mappings, the static variables for your templates, and we'll see the differences between parameters and mappings, the outputs to get references to what has been created in your templates, conditionals, which are a list of conditions to perform resource creation, and we'll have a few template helpers such as references and functions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But don't worry.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll have a look at all of this and code examples in this section, so don't worry.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So that's it for an introduction to CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/197_CloudFormation - Create Stack - Hands On.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, let's go ahead and practice using CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, very important, first thing you need to do is to select the US East, Northern Virginia, us-east-1 region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And the reason I want you to be in us-east-1 is that all the templates have been designed for that region, especially when talking about AMI IDs, which are region-specific, so just for the sake of learning, please use Northern Virginia, us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Okay, so next, let's first have a look at CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is a service.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: As you can see, I currently have zero stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Elastic Beanstalk
- Key Insights: You may have some stacks if you already use Beanstalk, or stuff like this, but it doesn't matter if you have zero or more.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, let's go ahead and create a stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And we have several options, we can choose an existing template, or use a sample template, or build directly from Application Composer.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: We're going to use a sample template just so I can show you exactly what CloudFormation is made of.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And then, in the list of sample templates, you can use, for example, Multi_AZ_Simple, WordPress blog.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It doesn't really matter what you choose, but select this one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're not going to launch it, but we're going to click here to view it in Application Composer.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, once we are in Application Composer, we get to see how our application is made.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We get to see it visually, and as well with code.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let me show you first the code.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, you click here on Template, and we have the option to choose YAML or JSON.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I prefer YAML, but some people prefer JSON, but I prefer YAML for the readability, and this is what we're going to do in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so this entire file right here is your YAML template of your CloudFormation file.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And as you can see, there's a lot of code, we have a lot of things to look at, and right now, we don't know anything about CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, don't worry too much about this, but later on in this course, you'll be able to understand at least some of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this template is actually rendering into components, and these components can be a lot of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this is why you can see here in the Canvas what these components are.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: AWS Config, Amazon EBS
- Key Insights: So, if you were to zoom in, for example, you see here we have a WebServerSecurityGroup, a LaunchConfig, a WebServerGroup.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: Here we have a database instance, a database security group, and so on.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Config
- Key Insights: So, if you click on it, you can see, for example, that there are some resource configuration directly from the CloudFormation templates that are here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, bottom line is, you have a direct representation of your CloudFormation template directly in a visual setting, which is very nice.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we know that this code right here corresponds to some resources in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now, instead, let's go back to CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we're not going to deploy the template, because it would be useless, and it would cost us some money.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Instead we're going to create a stack, and this time we're going to use the code that I've provided.
- Hidden/Implicit Meaning: Platform automation signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first, let's have a look at the files we have.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So within your code, go to CloudFormation, and you will find 0-just-ec2.yaml, and open this file.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is our first YAML file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at what it does.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, we have Resources, and this is the mandatory thing you need to have in your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 37:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then you have a name of your first CloudFormation resource named MyInstance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 38:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: The type of MyInstance is AWS::EC2::Instance, this right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And by the way, all the popups you see is just made of VS Code, and the CloudFormation plugin for VS Code, but don't worry if you don't have it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, the type is EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have Properties.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: And so we're saying, hey, please create an EC2 instance, and the first thing is that the availability zone must be us-east-1a, the ImageId AMI ID should be this AMI, and the InstanceType should be t2.micro.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Elasticity and resilience signal.

Line 43:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And these three parameters are enough for us to start using and creating an EC2 instance, in which we have specified a few parameters.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, nothing has been decided and defined in the console, only through code.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So, let's upload a template file, and let's choose 0-just-ec2.yaml.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And we're going to name it EC2InstanceDemo.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And right now we have no tags, no permissions, we are not going to look at these settings either, or those, they will come in due time when we look at the rest of the lectures in CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, right now, we just have a template.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: The template is ready, as you can see, it has been uploaded to Amazon S3 by AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon S3
- Key Insights: So when we click on upload a file, it goes to S3, and then CloudFormation is referencing this file in Amazon S3.
- Hidden/Implicit Meaning: Platform automation signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, if we're good to go, then we click on Submit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And voila, our first stack is being created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 54:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now, as you can see in Events, we have one event, which is that the stack is being created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 55:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if I refresh this, as you can see, there is MyInstance, CREATE_IN_PROGRESS, and it was very quick, now MyInstance is in CREATE_COMPLETE.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 56:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And what that means is that the EC2 instance has been created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how do I access it?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: Well, if you click on Resources, here, you see that one resource has been created, and the Physical ID is right here, and if you click on it, this takes you directly into the Amazon EC2 Console for you to look at this EC2 instance that has been created by CloudFormation.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 59:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, as we can see, the instance type is t2.micro, just as you requested it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: If we have a look at the availability zone, which is, I'm not exactly sure where it's going to be, yeah, right here, us-east-1a.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 61:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And if you have a look at the AMI, it's going to be using the Amazon image that we've requested, exactly that one, which is Amazon Linux 2023.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So, this EC2 instance was created exactly as it was requested in the CloudFormation template.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 63:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: On top of it, if you look at Tags, you can see that this instance has been tagged by CloudFormation.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 64:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: We have the stack ID, the logical ID, and the stack name, that have been tagged properly, so, stack name is EC2InstanceDemo.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 65:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: The logical ID of my resource is MyInstance, and then the stack ID is a link to the ID of my CloudFormation stack.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 66:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, now going back here, we can have a look at the Stack Info, the Events, which is all the events that happened to my creation of my stack, the Resources, which is linked to the resources that are being created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Outputs, we can only have nothing.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Parameters, nothing.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And template is the exact template as we uploaded it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So, now we've seen the power of CloudFormation, we started to create one EC2 instance directly from the templates, and I will see you in the next lecture for more hands-on on CloudFormation.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/198_CloudFormation - Update & Delete Stack - Hands On.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now that we have created the stack, we want to update it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And the only way to update a CloudFormation stack if we click on update is to replace the current template.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: Or if you wanna say use the current template, is going to just use the same as it was, but you cannot modify it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we want to replace the current template with a new one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so for this, let's go into our code and let's go to one EC2 with SG-EIP-YAML.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this one is actually an update over the previous one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have created a new template and we've added a lot of things that we're going to learn about in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we have a parameter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: We have the resources of the EC2 instance, which has more parameters, so it has security groups attached to it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so we are referencing security groups that are being created later on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So before that, we also have an elastic IP, which is attached to my EC2 instance, and then one security group here and a second security group here.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we will have a look at these in greater detail later on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So don't need to look at it too much, but you can start to have a look and see if you can read these transformation templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The idea is that things are changing, so let's upload a template file and we're going to choose one with SG-EIP.YAML.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we click on next and we are prompted with a parameter being called security group description.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: This is coming straight from this, so we are going to have to enter, "This is a cool security group" and you can enter whatever you want here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I just wanna show you the effect of this in a second.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we scroll down next and we have a look at the summary.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So we're going to specify now stack details with a new security group description.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And at the bottom we have access to a change set preview.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So a change set represents a list of things that is going to change as part of your CloudFormation updates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see here, four things are going to happen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is that it will be added, a elastic IP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: It will be added an SSH security group of type security group, a server security group of type security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And finally, my instance, which was my EC2 instance from before is going to be replaced, replacement true.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that the previous one is going to be terminated and the new one will be created to replace it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Sometimes you will have replacement false, which means that the resource can have a change in place.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And that is for CloudFormation to define and to say based on the changes you've operated.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And of course if you're not happy with it, you can try to understand why there is a replacement and change your code and hopefully get the outcome you want.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But here now we have replacement true.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's submit this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: And as you can see now in the same stack, we now have an update in progress.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we refresh and the first two things that are happening is that we have a server security group and an SSH security group being created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And then after this we have my EC2 instance that is going to be updated and it says the requested update requires the creation of a new physical resource, hence creating one.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is due to replacement true.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so what we can observe is that if you go to EC2 instances and refresh, so let's remove this filter.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 38:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Now we have access to the previous instance and then this new instance that is being created.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's why it's in the standing state, which is going to replace the previous one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now it is in the running states.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So back into CloudFormation, I'm going to refresh this.
- Hidden/Implicit Meaning: Platform automation signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see the new resource has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we have the elastic IP being created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So create in progress.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we have a look at on the left hand side, the elastic IP, we're going to find that this elastic IP that has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we have a look at the tags of this elastic IP, as you can see it has again been tagged.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So it has a logical ID, a stack ID and a stack name in its stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 48:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So all of this is done automatically by CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 49:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so if you refresh, and as you can see, this elastic IP is going to be attached to my EC2 instance, and the previous one is going to be deleted because it is a replacement.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So back in here, let's refresh.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, this one is shutting down and being terminated and the one that was created, if we have a look at the public IP, it is right here and it corresponds to this elastic IP address.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: As you can see, if we look at the summary of this, this elastic IP has an associated instance ID, which is the one that was created by CloudFormation.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is extremely powerful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: Of course, we can go to security and have a look that yes, indeed two security groups have been attached to my EC2 instance, and we can have a look at them both.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So one and two in here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So this first one is the SSH security group and has an inbound rule on port 22.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And if you have a look at the tags, well again, it has been tagged by CloudFormation as expected.
- Hidden/Implicit Meaning: Platform automation signal.

Line 58:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And if we have a look at the second one, this server security group, then we have more rules, SSH, and HTP.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: And on top of it, if we look at the description of this group, it says "This is a cool security group." So the parameter that we put actually helped us write at runtime the description of this security group.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's the whole power of parameters.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So back into my CloudFormation stack, I can refresh, I'm at update complete.
- Hidden/Implicit Meaning: Platform automation signal.

Line 62:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And if I have a look at my resources, we now have four resources that we just looked at under my CloudFormation stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 63:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: The parameter we set from before, which was "This is a cool security group," got inserted as the security group description for this one security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And we've seen the whole power of doing updates through CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, nothing was done manually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The template was updated and uploaded.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then here we go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: CloudFormation figured out how to get to the final states.
- Hidden/Implicit Meaning: Platform automation signal.

Line 69:
- Concepts: Compute Platform Design, Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: Now to clean up CloudFormation, you could right click here and terminate your instance, but then it's going to be a problem because your security groups are still going to be here.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Your elastic IP is still going to be here and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do we clean up?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Well, actually from CloudFormation you can click on delete and to delete a stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 73:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: This will delete all the stack resources and this will clean up everything that was created by CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to do it right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now we have a delete in progress, and if you have a look at your events, again, my elastic IP is being deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Then the next thing being deleted is my EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if I refresh this now, it's shutting down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then finally we will have our security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And the cool thing about it is that CloudFormation was able to determine on its own the order of which it should delete things, which is very handy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 80:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So from CloudFormation you'll see how to create, how to update, and how to delete all resources within a stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 81:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And hopefully that is a good intro to the power of CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 82:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/199_YAML Crash Course.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So in this course and in CloudFormation, I think what you will see most often is going to be YAML templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And YAML is a language, as well as JSON, that you can use to write CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: I personally think that JSON is a horrible way to write CloudFormation templates because of many string interpolations and so on, and YAML is great in so many ways, especially for readability, and to construct it in an easy matter.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's learn a little bit more about YAML in this lecture, so you feel confident about reading these things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side, what I have, as you can expect, is a YAML document.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And a YAML document is made of key value pairs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as you can see on the left-hand side, the first one we have is invoice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Invoice with a value, it's a number.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have date, and then we have a string.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have bill-to, and within bill-to, as you can see, the column has a indentation to the right, and then we have multiple key value pairs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it turns out that this is what's called a nested object.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can nest objects within JSON.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And so the bill-to key has access to an object within given, Chris, family, Dumars, and then address and so on is another nested object.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It supports array.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you look at products, there is a minus sign here, which represents an array.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have multiple products.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the first one, and this is the second one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in each product we have SKU, we have a quantity, we have a description, and a price.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And it supports multi line strings, so around address lines, we have a vertical bar here, which represents a multi line string.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And also, we can include comments.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: They haven't been represented here, but I will show you them in our own CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So learning how to read YAML and how to make sense of it is very important, and better if you can even write it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But let's have a look at the CloudFormation templates we have used so far.
- Hidden/Implicit Meaning: Platform automation signal.

Line 24:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this one is a CloudFormation template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first block was resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have a nested object within resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We had MyInstance, which had another nested object, and the type was a key value.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So type was EC2 instance, this is a string.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then properties also was a nested object in which we had three key value pairs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If we have a look at this one, we had, again, a bunch of nested objects here too.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Here we have a dash, so we have a list of security groups here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Here's the first security group, and here is the second security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We also had a hash sign here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So hash is for comments, so here you can have comments in YAML, which is very, very nice.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here is another list made of one element, but still, it's a list.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here is a list of two elements.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, YAML makes our templates very easy to read, in my opinion.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And once you get used to it, you really unleash the power of CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope this introduction to YAML was good for you, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/200_CloudFormation - Resources.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And as I said before, the resources are the core of your CloudFormation templates, and this is the only mandatory section in your entire CloudFormation templates.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 3:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: These resources are going to represent the different AWS components that will be created and configured as part of your templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The resources are declared and can reference each other, and then AWS is going to figure out the creation, the updates, and the deletes of the resources for us.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: There are so many types of resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They are always increasing in number.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Right now, there are over 700 types of resources, and I can't teach you them all, but I can teach you how to read the documentation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the resource type identifiers are going to be in the form of service-provider::service-name::data-type-name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do we find the resource documentation?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, there's a page in which we right now which has them all.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we just read the docs and by the knowledge acquired in this course and the docs, we should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at these two links.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So the first link represents all the possible CloudFormation resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we can see here the format. and then we can select the resource types.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: Amazon Kinesis
- Key Insights: So for example, let's have a look at Amazon Kinesis.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: Amazon Kinesis
- Key Insights: Within Kinesis we have two resource types.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if you scroll back and you just look at Amazon EC2, we have all these resources for Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if we wanted to have a look at a specific one, for example, AWS::EC2::Instance, this is the documentation for this type.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 19:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And so this is the same page as the one I had linked in my slides.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So these two pages are the same.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here we have the syntax of this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've been using this before, and the syntax is either in JSON form, which to me is very difficult to read, or YAML.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so we can have a look at the type, it's EC2::Instance, and then we get properties.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And properties are a list of key value pairs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, they're all here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And by clicking on one of them, you get to learn how to use it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, if you click on IamInstanceProfile, you click on it and then you get the information that this is the name of an IamInstanceProfile.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Then it tells you how to create an instance profile by going here, and then you would have to look at the YAML form and see how to create it.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then it tells us that it's not required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we haven't been using it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So it's not a mandatory property to fill in to create an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The type is String.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if you do add it, or if you do create it on an existing EC2 instance, it requires no interruption.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 34:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: That means that the EC2 instance is not going to be stopped, it's not going to be terminated or replaced.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 35:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But if you were to change the ImageId, the AMI ID, then the update requires a replacement, of course, right?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you get an access of all the syntax of all the properties of the return values, the examples that show in YAML and in JSON how to use these things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's quite handy, as well as more links if need be.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So going back into our stack, we had a look at just EC2 YAML.
- Hidden/Implicit Meaning: Platform automation signal.

Line 39:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: So we have type EC2::Instance, and we had three properties that we put in, AvailabilityZone, ImageId, and InstanceType.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 40:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And if we have a look at this one, we had an EC2::Instance, but also had SecurityGroups.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, it's a list.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So going back into the documentation, let's have a look at the syntax and click on SecurityGroupsId, or security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Here we go, security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And it says it's an Array of String, and it says here are the names of the security groups.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So very easy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have these references right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again, the documentation can help us understand these things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: For the elastic IP, this is a whole different type of documentation page.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So to find it, I would type "elastic IP cloudformation," and then automatically you will find on the docs the correct page, which tells you how to declare an elastic IP.
- Hidden/Implicit Meaning: Platform automation signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is how to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then in the bottom under examples, you can see as well how to create one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is what I've been using in my own templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so here you have SSHSecurityGroup.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Again, look at the docs to understand how it works, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this is the whole power of resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you know how to create resources and how to find the documentation to properly fill in the properties you need.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: As you can see, there are tons of properties available for many resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so this is all the things you can specify in the console, usually can also be specified through CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, there are a few frequently asked questions for resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So first one, "Can I create a dynamic number of resources?" So yes, you can and you need to use CloudFormation Macros and Transform, but it is really not in scope for this course.
- Hidden/Implicit Meaning: Platform automation signal.

Line 61:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: In this course, everything you write in the template is what's being created, and you cannot dynamically create a number of resources. "Is every AWS Service supported?" The answer is almost.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Only a select few things are not there yet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And the way to work around it, and the way the exam expects you to know how to work around it, is by the usage of CloudFormation Custom Resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 64:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So remember that, and I will be talking to you about them a little bit more later in this course.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/201_CloudFormation - Parameters.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now let's talk about CloudFormation parameters in detail.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So parameters are a way for you to provide inputs into your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So you have a CloudFormation template and you want your user to provide parameter values, and these parameters are defined as part of the CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: We actually used them before when we were giving a security group a description.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, they're super important to know about if you want to reuse your templates across the company so that many people can put many parameters and because the inputs cannot be determined ahead of time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the parameters are extremely powerful, they're controlled, and they also can prevent errors from happening in your templates thanks to the types, and we'll have a look at those in a second.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when should you use a parameter?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is the SecurityGroupDescription parameter we have used from before, and the question you need to ask yourself when defining if something should or shouldn't be a parameter is this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS Config
- Key Insights: Is this CloudFormation resource configuration likely to change in the future?
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If so, make it a parameter, because whenever you want to update that value, you will not have to re-upload the template to change its contents.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, if it cannot be determined ahead of time, then again, you should make it a parameter.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the parameters have multiple settings and the first one is Type.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: It could be a String, a Number, a CommaDelimitedList, a List of numbers.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be an AWS-Specific Parameter, for example, to help you catch invalid values or a list of those.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be an SSM Parameter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could also have a Description.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could have a DonstraintDescription if you have a constraint.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could have a Min and a MaxLength, a Min and a Max Vlue, a Default value, a list of AllowedValues, regex of an AllowedPattern and NoEcho, and it could have other things maybe not represented in this slide.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you don't have to remember all of those, but what you need remember is that the parameters are not just strings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can have constraints and validation, allowing you to make sure they are safe to use.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I want to give you two important examples going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is AllowedValues.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: We have a parameter called InstanceType.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: To choose an EC2 InstanceType of Type: String.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we have defined AllowedValues being t2.micro, t2.small, or t2.medium with a Default being t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And this parameter is reused in the EC2Instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So thanks to it, we'll have a dropdown and the user can only select one of these three values, hence giving them choice while giving you control.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have NoEcho.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Container Runtime Operations
- Services: Amazon ECR
- Key Insights: So for example, say we want as a parameter to put in the database password, but of course it is a password so we have to keep it secret.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we want to remove it from the logs and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we'll have NoEcho: true so that the password is not displayed anywhere.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how do we actually use these parameters?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it is this little !Ref function you've seen before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Maybe if you had to look at the CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this function !Ref can be leveraged to reference parameters, and these parameters can be used then anywhere in the templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you've seen I wrote Fn::Ref, but actually there's a shorthand version in YAML called the !Ref.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's easier to use and easier to read.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so this function allows you to reference parameters, but also reference other elements within the template.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the templates we have to see how this was being used.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here I am in my template, and as you can see, one parameter was being defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We named it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: We had the description, Security Group Description, and a Type: String.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it was a very simple parameter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We did not have any types of constraint on it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: Now, this SecurityGroupDescription is representing the description of a security group and therefore we're going to find its usage by scrolling down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And in here for our second EC2 SecurityGroup, under properties GroupDescription, we have a !Ref.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So here the !Ref function, pointing to SecurityGroupDescription, which is the exact same name here as the name of our parameter above.
- Hidden/Implicit Meaning: Platform automation signal.

Line 49:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this is the usage of the !Ref function and how to reference a parameter within your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But on top of it, this !Ref function is used in other places.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, under the SecurityGroups property of our EC2::Instance we had a !Ref for SSHSecurityGroup.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this SSHSecurityGroup is the exact name as the resource SSHSecurityGroup defined in our template.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have used the !Ref function to reference a resource and not a parameter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So they're used the same way.
- Hidden/Implicit Meaning: Platform automation signal.

Line 55:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: And that's why you need to make sure that your resources don't have the same name as your parameters.
- Hidden/Implicit Meaning: Platform automation signal.

Line 56:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have the !Ref to SSHSecurityGroup.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have a !Ref to ServiceSecurityGroup.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And then for the elastic IP we have a reference to MyInstance, which was defined right above.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 59:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now that we've had a look at parameters in depth, let's look at pseudo parameters.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 60:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So AWS is offering us pseudo parameters in any CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these are things that are already existing even if you don't create them, and they can be used at any time and are enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I'm giving you a list of important ones, not all of them, but so you can understand.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for example, if you use a !Ref to the AWS AccountID reference value, then the return value will be your actual account ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So from your CloudFormation template, it is possible to figure out automatically your account ID.
- Hidden/Implicit Meaning: Platform automation signal.

Line 65:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Or the AWS region you are in, or the stack ID or the stack name or notifications ARN or just no value too.
- Hidden/Implicit Meaning: Platform automation signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You don't get any kind of value.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So these pseudo parameters are very handy and I think one of the most used is, for example, to figure out the region and the account ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So you don't need the user to actually tell your CloudFormation templates that they are in us-east-1.
- Hidden/Implicit Meaning: Platform automation signal.

Line 69:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The template knows itself that it is in us-east-1 thanks to pseudo parameters.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/202_CloudFormation - Mappings.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now let's talk about mappings in CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So mappings are fixed variables within your CloudFormation templates, and they're very handy if you want to differentiate between different environments.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: For example, dev versus prod, and give different values for those, or regions, such as AWS regions or AMI types and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all the values that are possible are hardcoded within the template and here is the format of mappings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But to make it a bit more concrete, I'm going to show you a region map.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So here, based on the region you have, so us-east-1, us-west-1, or eu-west-1, and based on the architecture you're using, for example, HVM64 or HVMG2, this is going to give you a different AMI ID every time.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Well, we know that the AMIs are specific based on the region, so of course it makes sense to have a different AMI per region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's a great candidate for a mapping.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now to access the mapping values, here is an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance that is using an ImageId.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this ImageId is using the FindInMap function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And to use this FindInMap function, we first need to use a map name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here we have the RegionMap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have the top level key.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what we want to use in here, we have a reference to the pseudo parameter AWS::Region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you launch this template in us-east-1, it's going to be us-east-1, and if you launch it to us-west-1, automatically this pseudo parameter is going to resolve to us-west-1.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then finally, the type of architecture you want, for example, HVM64.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And this works great because, well, AMIs are region specific, and so you want to make sure you have the right AMI for the right region and the right architecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when do you use mappings versus parameters?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: Well, the mappings are great when you know in advance all the values that can be taken and that they can be deduced from variables such as the region, the availability zone, the AWS account, the environment, dev versus prod, et cetera, et cetera.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: They allow you safer control over the templates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: But if you have values that really depend on what the user wants and what they're thinking about at runtime, then you want parameters to give the user a maximum amount of freedom.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it for mappings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/203_CloudFormation - Outputs & Exports.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, now let's talk about outputs and CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, the output section is optional and it declares optional output values, but then if we declare them, we can import these values into other stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so, the idea is that we can link, for example, a network stack which has an exported output, which is your VPC ID, and we can reference that exported outputted value from another application stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is very handy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can also view the values of the outputs in the console or by using the CLA.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so it's very helpful to have an output if you define, for example, a network CloudFormation stack, and then you output the VPC IDs and the Subnet IDs and reuse them other ways.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: It's the best way to also perform some collaboration across stacks and let experts handle their own stacks and collaborate this way.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So, if you have a look at the output, here is a sample output.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So, we are creating an SSH security group as part of one template.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then we create an output that has a reference to the security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this specific output also has an export block, which is going to export the value of this output as a name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the name is SSHSecurityGroup.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this name has to be unique across all your exports in one specific region.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so now we can access through this SSH Security Group, the security group ID for our SSH Security Group in our company.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, how do we reuse it?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: Well, here is another CloudFormation template, and this one will leverage the security group from before.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it has an import value function, as you can see right now, outlined in red.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Platform Design, Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: And so that means that for this EC2 instance that we're creating, the security group has its value imported from another stack in which we had exported the value, which was right here.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this is how you link two different CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And therefore, because they're linked, it's impossible for you to delete the first stack that has its value exported until all the other ones don't reference it anymore.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it's important to know.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now you know about outputs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/204_CloudFormation - Conditions.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about conditions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So conditions, as the name indicates, allow you to control the creation of a resource or outputs based on the specific condition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So for example, you could have some things only created in a development environment such as the Dev Stack and some things only created in the production environment such as the Prod Stack.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And as you can see, the difference here is that one of these things has an EBS volume and the other one doesn't.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you can make conditions, whatever you want them to be.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the common one is to have conditions based on the environment you're in, such as dev, test and prod, or the region you're in, or a parameter value.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And each condition can reference each other and can reference as well parameter values or mappings.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We define a condition named CreateProdResources in which we have a look at Env environment type we have selected is equals to prod, if it is equals to prod, then you're going to have this condition being true and we'll see how to use it in the next slide.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to create a condition, you can have any function such as And, Equals, If, Not, and Or.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you have your conditions being created this way.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, how to use the condition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well here, as you can see, I apply my condition to a resource, but it could also be an output, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And so my MountPoint here of type EC2 VolumeAttachment has a condition CreateProdResources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that condition is the exact one I had defined before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, if that condition was true, then the MountPoint would be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if it was false, then the MountPoint would not be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So from an exam perspective, you don't need to know how to write conditions, this is too advanced, but you need to know that conditions exist if you need to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/205_CloudFormation - Intrinsic Functions.txt

Line 1:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about intrinsic functions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've seen them before, but I wanna give you a list and the ones that are in blue are the one you must know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have the Ref, the Get attribute function, the FindInMap, ImportValue, Join, Sub ForEach, ToJsonString.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The Conditions Function such as if, not, equals, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The Base64, Cidr, GetAZs, Select, Split, Transform, Length.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon EBS
- Key Insights: So all these are of course documented on the CloudFormation websites and so if one of them is not discussed in these slides but you want to have a look at it, please have a look online.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm going to discuss the most important ones, especially from an exam perspective.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first one is the Ref function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so the Ref functions we can see can be leveraged to get a reference.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be a reference to a parameter, to return the value of this parameter, or to resources to return the physical ID of the underlying resource that has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: For example, an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The shorthand is always with an exclamation point, so !Ref.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here is an example of how to use a Ref.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here, we are creating a subnet and we need to define the VPC to which the subnet belongs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we use the Ref to MyVPC and MyVPC is either another resource or it could be a parameter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we have the GetAtt function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is to get an attribute and attributes are attached to any resource you create.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now to know what attributes a resource has, the best place to look at is the documentation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's do it right now.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So here I am on the EC2 Instance documentation page for CloudFormation.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you have a look at return values.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for return values, we have Ref.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So whenever we use a Ref to a resource of type EC2 instance, what we're going to get is the instance ID, for example this one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So anytime we use Ref, we're going to get the reference ID out of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: But if we use GetAtt to get an attribute, we have the option to get more information out of this EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 26:
- Concepts: Elasticity and Availability
- Services: (none explicit)
- Key Insights: So here we have the AvailabilityZone.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 27:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So for example, we can know in which AZ an instance was launched, for example, us-east-1b.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You get the Id again, you could get the PrivateDNSName, the PrivateIp, the PublicDNSName, and the PublicIp.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So while the Ref gives you usually a reference to the ID of the resource you have created, the GetAtt allows you to get more out of the resource and you can only get what CloudFormation supports in terms of attributes that are defined in here in the documentation.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 30:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EBS, Amazon EC2
- Key Insights: So here, if you want to get the AvailabilityZone out of an EC2 instance, first we define an EC2 instance in our template and then we define for example, an EBSVolume and because we want this volume to be attached to our EC2 instance in the proper AZ, we need to know the AZ of our EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 31:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: And one way to do it is in the properties under AvailabilityZone to use the GetAtt intrinsic function to reference the EC2Instance.AvailabilityZone.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 32:
- Concepts: Compute Platform Design, Elasticity and Availability
- Services: Amazon EC2
- Key Insights: The first part, EC2Instance is the name of the resource as we defined it on the left hand side and .AvailabilityZone is the name of the attribute that is exposed by this resource.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Elasticity and resilience signal.

Line 33:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: So this is how we get the AZ out of it and we input it into our EBSVolume.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've seen FindInMap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So again it's to get a value directly from a specific key in a specific map.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this was used when we had mappings, of course, we have also seen the ImportValue intrinsic function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: This was used to import values that were exported in other stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 38:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EC2
- Key Insights: So here's an example in which we create an EC2 instance and we import the value of a security group ID named SSHSecurityGroup.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 39:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: And that security group was defined in another stack and of course exported.
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the Base64 function to convert a string into a Base64 representation.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And the reason why we do so usually is to pass data to the user data of an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: So we use the Base64 function before we define the string of the user data and automatically gets converted and passed to your EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's probably one of the only usage of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've seen the condition function, so this is when we had a condition to conditionally create resources and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so these intrinsic function can be used.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the End, the Equals, the If, the Not, and the Or functions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for intrinsic function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/206_CloudFormation - Rollbacks.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, let's talk about CloudFormation rollbacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And they're very important to understand at the exam.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, if you create a stack and the stack creation fails, you have two options.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is the default option, which is that everything rolls back and that means gets deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And you can look at the log of your CloudFormation create to understand what happened and why it failed, but you cannot look at your resources.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But if one of these resources has a problem and you want to keep it, you have the option to disable the rollback to troubleshoot what happened during your stack creation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: If it is a problem with stack updates, then automatically, by default, the stack is automatically going to roll back to the last previous known working states, again, deleting anything that was newly created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And again, you can look in the log to see what happened, and the error messages.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, in case of a rollback failure, so that means that there's a stack update, it rolls back, and during the rollback, there is a failure.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Then, this is a problem with your stack and you probably had resources that were manually changed.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: In that case, you need to go and fix these resources manually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then, through the console, or through the API, you can issue what's called a ContinueUpdateRollback to tell CloudFormation to try rolling back again.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, either you do it from the console or an API call or from the CLI using the ContinueUpdateRollback API call.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's practice failures.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, let's create a stack, and we'll upload a template file.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the file I'm going to upload is called trigger-failure.yaml, the number two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, why is this file problematic?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: Well, if you go into trigger-failure.yaml, you look at the image ID of my EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It is an image ID that does not exist, so therefore, it's going to create a failure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'll call this one TriggerCreationFailure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And here, under Stack failure options, we have two options.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Number one is to roll back all stack resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that they're going to be rolled back to the previous known stable states, or we can preserve successfully provisioned resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this will keep the successfully provisioned resources and roll back any failed resources to the last known stable states.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So, if we do this, which is the non default option, and then we click on Next, and then Submit, as you can see, we generate an SSH security group and we generate a server security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so, as you can see, I need to- First of all, there's one problem that I didn't provide the group description.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, it's a good example of the failure of this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So, as you can see, even though my server security group was not able to be created, my SSH security group was able to be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if I go into Resources, well one is still being kept.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whereas, if you had a creation and by default it would fail, it would delete everything.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this could be the occasion to just troubleshoot if you needed to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But of course, because this leaves some remainders, you need to absolutely delete the stack to get rid of it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 36:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, you cannot update the stack and fix things.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, we will delete it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now, it's gone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: So, this is showing you the option of what it is when there is a create failure, and you can do the exact same thing.
- Hidden/Implicit Meaning: Platform automation signal.

Line 40:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, you can create a stack right now.
- Hidden/Implicit Meaning: Platform automation signal.

Line 41:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: I'll create a stack based on the correct template called just-ec2.yaml.
- Hidden/Implicit Meaning: Platform automation signal.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'll call it FailureOnUpdate.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, right now, we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We know that this is going to work because, well, this is the template we've used from before.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's wait for things to be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we're good.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, I'm going to update my stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 48:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if you don't see this button, just refresh your page.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, update my stack, but this time, I will replace the template with the template file named trigger failure.
- Hidden/Implicit Meaning: Platform automation signal.

Line 50:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this time we'll have a group description called hello.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next...
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And here we have, again, the option to roll back all stack resources or to preserve successfully provisioned resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, where now we say roll back everything and see what happens and then we'll do the second option right after.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then click on Submit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So, this is going to create a few security groups, and then, it's going to trigger a rollback.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 57:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So, my security groups right now are being created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now they're done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: And as you can see, the instance get created, but then there was an update failed because, well, the invalid AMI was not found.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So therefore, what's going to happen?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Well, because we have specified everything to roll back, then everything is going to roll back based on the last known state.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And so, that means that my server security group and SSH security groups should disappear.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's wait for these events to happen.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And as you can see right now, my SSH security group and server security group get deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 65:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And similarly, as an exercise, if you update the stack, but this time you choose, again, the trigger failure and we just enter description again, and then the stack failure option, we just say preserve successfully provisioned resources, then you know what happens.
- Hidden/Implicit Meaning: Platform automation signal.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can try it out on your own.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 67:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: This would create SSH and server security groups, but it would not roll them back in case there is a rollback happening, a stack failure.
- Hidden/Implicit Meaning: Platform automation signal.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, this is up to you to choose what you want, but both the behaviors can be desirable based on what you're trying to do.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, when you're done, please go ahead and delete the stack and you'll be good.
- Hidden/Implicit Meaning: Platform automation signal.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/207_CloudFormation - Service Role.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So here is one thing you need to know about CloudFormation and security.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So CloudFormation can use service roles.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: What are they?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: Well, they are iam roles that you create and they're dedicated to CloudFormation and they allow CloudFormation to actually create update and delete stack resources on your behalf.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So if you want to give the ability to users to actually create, update and delete stack resources, but they don't have the permissions to directly work with the resources, what you would do is use a service role.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So for example, we define a template and our own iam permissions as a user is to do actions on the CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And we have iam PassRole.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: We also create a service role that we're going to be dedicating to CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Operational Guardrails
- Services: Amazon S3
- Key Insights: And this service role has the S3 star buckets, permissions, for example, to create, update and delete a bucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation, Amazon S3
- Key Insights: So here CloudFormation will be able to create this S3 bucket thanks to its service role because the user was able to pass that role to CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal; Platform automation signal.

Line 12:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: For this to work, remember the user must have the permission named iam PassRole, which is a necessary permission to give a role to a specific service in AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So let me show you an example of iam roles with CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 14:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So if you go to iam and then you go to the roles section in iam, we're going to create a role and it's for an AWS service, the service being CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 15:
- Concepts: Operational Guardrails
- Services: Amazon S3
- Key Insights: And next for permission policies, I'm going to give S3 full access just to have dedicated role for Amazon S3, just as an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Operational Guardrails
- Services: Amazon S3
- Key Insights: Click on next and I'll call it DemoRole for CFN with S3 capabilities.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation, Amazon S3
- Key Insights: And so this role allows CloudFormation to do anything with Amazon S3.
- Hidden/Implicit Meaning: Platform automation signal.

Line 18:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So this role has been created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now if I go to CloudFormation and create a stack, I will just use one of my existing templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I don't need to have anything very fancy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We will not go all the way with it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So I call this one DemoRole.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Click on next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And as you can see here, within permissions there is an iam role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is optional.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if I don't specify, then iam role is going to use my own personal permissions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Operational Guardrails
- Services: Amazon S3
- Key Insights: But if I want to specify an iam role, I can look at this DemoRole for CFN with S3 capabilities.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: And this role is going to be used for all stack operations.
- Hidden/Implicit Meaning: Platform automation signal.

Line 29:
- Concepts: Compute Platform Design, Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation, Amazon EC2, Amazon S3
- Key Insights: So that means that the role now will not use my own personal permissions, but this one, and because this one is just powered with Amazon S3 permissions, then actually my stack will fail because my stack is actually creating an EC2 instance.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 30:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: But this is where actually the permissions are defined if you want to use an iam role for CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/208_CloudFormation - Capabilities.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Finally, you need to learn about CloudFormation capabilities.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have CAPABILITY_NAMED_IAM and CAPABILITY_IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So they are capabilities you need to give to CloudFormation whenever your CloudFormation template is going to create or update IAM resources, such as when you create a IAM user, a role, a group, a policy, and so on, through your CloudFormation templates.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you specify NAMED_IAM if the resources are named, otherwise, just CAPABILITY_IAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And the reason we do so is that we want to explicitly acknowledge the fact that CloudFormation is going to create IAM resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: We have CAPABILITY_AUTO_EXPAND, which is when your CloudFormation template is including macro and nested stacks, so stacks within stacks, to perform dynamic transformations.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And in here, we're acknowledging that the template may change before being deployed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And finally, if you obtain a InsufficientCapabilitiesException while launching a template, that means that the CloudFormation templates was requiring capabilities, but you haven't acknowledged them.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, as a security measure, you need to redo the templates, upload, and launch using, this time, these capabilities.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's just an extra argument in your API call, or a box to tick on your AWS console.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So here, under 3_capabilities.yaml, I'm going to show you a CloudFormation template, which actually has an IAM role being created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And it's named, so there's a role name, MyCustomRoleName.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: And it's using a managed policy, which is the AmazonEC2FullAccess.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we're dealing with IAM, and so as such, we are creating some IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so therefore, if I create this stack and upload the template file being the capabilities.yaml.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I'll call this one DemoIAM.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And scroll all the way down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And scroll all the way down.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: As you can see, there is an acknowledgement that says that you need to have this capability, and it says, "Yes, I acknowledge the fact that CloudFormation might create IAM resources with custom names." And so therefore, we are giving the capability to CloudFormation to actually run this template and to create this role.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If we don't do this, then the submission is going to fail, as you can see.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if we do do this, then now we're saying, "Hey, I understand the risk of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: I understand the fact that we are creating IAM resources from within CloudFormation." And that's it, that's all I want to show you.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/209_CloudFormation - Deletion Policy.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So let's talk about CloudFormation- DeletionPolicy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: DeletionPolicy is a setting you can apply to resources on your CloudFormation templates, which allows you to control what happens to a resource when the resource is removed from your CloudFormation templates or when the CloudFormation stack is deleted.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It's a way for you to actually preserve and backup up resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So by default, we've seen that when we delete a CloudFormation template, all the resources within are also deleted.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: That means that the default DeletionPolicy is delete, so you don't have to specify it because it is the default.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Sometimes you wanna specify to be really explicit that things are being deleted, but so here's an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: We have an EC2 instance, and as you can see, DeletionPolicy is delete.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation, Amazon EC2
- Key Insights: So that means that the EC2 instance will be deleted whenever the CloudFormation stack is deleted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runtime and execution-path signal; Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Here is another example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: We have an S3 buckets and we have DeletionPolicy=Delete.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So everything probably should be working fine, but actually if you have an S3 bucket, this is an exception, and you have DeletionPolicy=Delete on it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: It will work only if the S3 bucket is empty.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: If it's not empty, then the delete will fail.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon S3
- Key Insights: So the way to fix this if you wanted to would be to either manually delete everything within the S3 bucket and then continue with the deletion of your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Or it would be for you to implement a custom resource to actually delete everything within the S3 bucket before automatically having the S3 bucket go away.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about DeletionPolicy retain.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So for the retain DeletionPolicy, it's actually specifying which resources you want to preserve in your CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon DynamoDB
- Key Insights: So example here, we have a DynamoDB table, and we know that by default, it would be deleted when I delete my CloudFormation template, but maybe we actually wanna keep it, keep the data within because we care about the data of this table.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so we would specify at the bottom DeletionPolicy retain.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon DynamoDB
- Key Insights: And so even if I delete my CloudFormation templates, this DynamoDB table would stay, and this works with any resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Finally, the last DeletionPolicy you need to know about is snapshots.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is to create one final snapshot before deleting the resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Platform Design
- Services: Amazon DocumentDB, Amazon EBS, Amazon ElastiCache, Amazon Neptune, Amazon RDS, Amazon Redshift
- Key Insights: And it's supported by EBS volumes, ElastiCache Cluster, ElastiCache ReplicationGroup, RDS DBInstance, DB cluster, Redshift, Neptune, DocumentDB, and maybe more.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you would specify at the bottom, of course, a DeletionPolicy snapshot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Platform Design
- Services: Amazon RDS
- Key Insights: And so that instance of database from RDS would be deleted, but a last snapshot would be taken before that instance is gone.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so that's very helpful for backups and safety purposes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And in this file deletionpolicy.yaml, there is a security group and the DeletionPolicy is retained.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CloudFormation
- Key Insights: So that means that if I delete my transformation stack, this security group should stay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 31:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: And there is an EBS volume, and the DeletionPolicy is a snapshot.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So that means that upon deleting the stack, the volume should go away, but a snapshot should be created first.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 33:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So let's verify this behavior by creating a stack and uploading the template file being DeletionPolicy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Next, DeletionPolicyDemo is the name of my stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Scroll down next and submit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this goes ahead and creates very quickly my CloudFormation stack, which is going to be made again of two resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 37:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have an EBS volume, and then we have an EC2 security group.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now they're both created and my stack has been fully created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now let's go ahead and try to delete it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So let's delete the stack and let's look at the events.
- Hidden/Implicit Meaning: Platform automation signal.

Line 41:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we see here that the My Security group has a delete skipped.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 42:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is because we did specify a DeletionPolicy of retain.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So if I wanted to get rid of this security group, as you can see, it is still here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: If I wanted to get rid of it, I would need to manually delete it because I told CloudFormation not to delete it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Now, regarding the EBS volume, it has been deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But if I go into the events, it turns out that a snapshot has been created and it was successful.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And here is the snapshot ID.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Compute Operational Context
- Services: Amazon EBS
- Key Insights: Therefore, if I go into my snapshots on the left-hand side, I have a new snapshot of one gigabytes that was just created right now from my EBS volume, but my EBS volume, as you can see, is gone.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 49:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you wanted to fully clean up, please make sure to also delete this snapshot manually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 50:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And please make sure to also delete the security group if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We've seen the power of the DeletionPolicy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/210_CloudFormation - Stack Policy.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now, let's do a quick lecture on CloudFormation Stack policies.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, when you have a CloudFormation Stack update, by default, any action is going to be allowed on all resources so you can change your stack as you wish, but sometimes, you may want to protect your stack against updates, or part of your stack against updates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: This is where Stack policies come in.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Stack policies are JSON documents, and they define what update actions are allowed on specific resources during Stack updates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So here, we have an example where the first statement is saying "Allow update*" on everything, meaning that everything in your CloudFormation Stack can be updated, and the second part is saying "Deny update*" on Resource Production Database.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: That means that whatever is named "Production Database" in your CloudFormation Stack is going to be protected against any kind of updates, so by default, and your production database is fine.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So, the goal of Stack policies is really to protect resources against unintentional updates and when you set a Stack policy by default, all the resources are protected, and so what you need is to have an explicit "allow" for the resources that you want to be allowed to be updated.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You should know enough to answer maybe one question on the exam on this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/211_CloudFormation - Termination Protection.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So a very quick lecture, but to actually prevent accidental deletes of your CloudFormation stacks, you must use Termination Protection.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I will show you right now how to enable it in the console.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So let me create a stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Platform Design
- Services: Amazon EC2
- Key Insights: I will upload and type of file, name just EC2, and then demo, next, scroll down, next, and then actually upload this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Okay, so this is my stack, and what I'm going to do now is that I'm going to edit the termination protection.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So as you can see right now it was deactivated, but I'm going to activate this termination protection.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now it was successfully changed.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So my stack right here, if I try to delete it, it's impossible.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: It says that termination protection is enabled in the stack, and first, I must disable the termination protection before deleting it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is a safety against accidental deletes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Now, if I have the necessary permissions to actually edit the termination protection, I can deactivate it, and then from there I can actually delete my CloudFormation stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You've seen termination protection.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/212_CloudFormation - Custom Resources.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now, let's talk about CloudFormation custom resources.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So as we said, many, many resources are supported by CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But you have custom resources to define resources that are not yet supported by CloudFormation or to define custom provisioning logic for resources that can be outside of CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS CloudFormation, AWS Lambda
- Key Insights: For example, your own on-premises resources or your third-party resources, or if you want to have custom scripts being run during the create, update, and delete phases of your CloudFormation stack through Lambda functions.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Serverless Execution Model
- Services: AWS Lambda, Amazon S3
- Key Insights: And one example I will give you, again, is to run a Lambda function to empty and S3 bucket before being deleted.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is a common exam question.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So to define a custom resource, you define it in the template, and the type of it is Custom::MyCustomResourceTypeName.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: It's backed by either a Lambda function, which is the most common one, or an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do we define a custom resource?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: I will only go over the Lambda custom resource because it's the most common one.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: So we have a custom resource of type custom, MyLambdaResource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, in the properties, we have a service token.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: And the service token is either your Lambda function, ARN, or your SNS ARN.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Deployment Automation
- Services: AWS SAM
- Key Insights: They must be in the same region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 15:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: And the idea is that this Lambda function is going to have its own logic to provision your customer resource or to do whatever it needs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: On top of it, thanks to input data parameters, you can provide input values to your Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon S3
- Key Insights: So the use case, for example, as I said, is to delete content from an S3 bucket because it turns out that you cannot delete a non-empty S3 bucket from CloudFormation.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So first, you must delete all the objects in it, and then you delete the buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: To do so, you use a custom resource.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And the idea is that when that custom resource is deleted, it's going to run API calls to actually delete your S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here's an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS CloudFormation, AWS Lambda, Amazon S3
- Key Insights: Whenever we run delete stack on CloudFormation, then your custom resource backed by Lambda function is going to run API calls to empty your S3 bucket.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 23:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, Amazon S3
- Key Insights: And then only then, when your S3 bucket is emptied, then CloudFormation is going to actually attempt to delete your S3 bucket, and everything will work.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's the most common use case from an example perspective.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that's the one I wanted to show you by the way of diagram.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/18_AWS CloudFormation/213_CloudFormation - StackSets.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So now let's talk about CloudFormation StackSets.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So the idea is that you want to create, update, or delete stacks across multiple accounts and regions, all within a single operation or template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So from an administrative account, you will take a template and you will create a StackSet out of it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And this StackSet will allow you to deploy your stack across multiple accounts in multiple regions, and that's why it's called a StackSet.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So when you update a StackSet, all the stack instances that are in all the target accounts and in all the target regions are also going to be updated, so it's really all at once.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Now, you can apply this to accounts you want, but also one of the most common use cases is actually to apply this to all accounts within an AWS Organization, which is a group of accounts in AWS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And within an organization, only an administrator account or someone who's been designated as an administrator can create StackSets, of course.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Otherwise it would be chaos and security risks, okay?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So that's it, you just need to know the StackSet concept at a high level.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/384_CDK Overview.txt

Line 1:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CDK
- Key Insights: Now let's talk about the AWS Cloud Development Kit, or CDK, which allows you to define your cloud infrastructure in a familiar programming language, such as JavaScript or TypeScript, Python, Java, and .NET.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So you may be saying, "Hey, it looks like this is overlapping with CloudFormation, because CloudFormation we can define the cloud infrastructure using YAML.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But now we can do it using a programming language.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So what is this?" Well, this is something that supersedes CloudFormation, as we'll see in a second.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's say we want to define our infrastructure using TypeScript, and so we have this code right here in which we are defining three different things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: We are defining constructs, and so there are high level components that we can use thanks to the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the first construct we're using is a VPC.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we create a new VPC, we give it a name, and we give it three AZs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And this creates a VPC for us which is going to contain some pre-made configuration.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: Then we define an ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Container Runtime Operations
- Services: Amazon ECS
- Key Insights: And the ECS cluster is named MyCluster and has a link to the VPC we just defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Container Runtime Operations
- Services: Elastic Load Balancing
- Key Insights: And then we define an application load-balanced Fargate service, so this is a Fargate service with an ALB which is linked to the cluster we just defined.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Elastic Load Balancing
- Key Insights: We define how much CPU, how many tasks we want, so six, the task image options, the memory limits, and that we want a public ALB.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runtime and execution-path signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So all of this is defined using a programming language, which means that if we don't have functioning code if the code doesn't compile, then it's going to give us an error, and that means that our template cannot be generated.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: But if the code can be compiled because it is sound and typesafe, then it is going to be compiled into a CloudFormation template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: It could be either JSON and YAML.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: And so therefore, we are using the CDK to define CloudFormation templates in the backend.
- Hidden/Implicit Meaning: Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: Amazon Lex
- Key Insights: But this is allowing us to be a lot more flexible about it and use a programming language.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So that also means that we can deploy infrastructure and application runtime code together.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 20:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: AWS Lambda, Amazon ECS, Amazon EKS
- Key Insights: So this is great for Lambda functions, great for Docker containers in ECS or EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So this is a revolution because CloudFormation template is YAML, it's not typesafe, you can make errors, and you only know at the very end if it worked or not.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform automation signal.

Line 22:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: But with the CDK, you can define those using constructs and a programming language.
- Hidden/Implicit Meaning: Platform automation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you want a diagram, then we have our application constructs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: AWS Lambda, Amazon DynamoDB, Amazon ECS, Amazon S3
- Key Insights: It could be Lambda functions, DynamoDB, Amazon S3, ECS, some step functions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we can use programming languages, such as Python, TypeScript, Java, .NET.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: We write our CDK file, I guess, and then we synthesize this using the CDK CLI into a CloudFormation template that we will apply into CloudFormation to define our infrastructure.
- Hidden/Implicit Meaning: Platform automation signal.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So it is a step above CloudFormation and makes it way easier to work with CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS SAM
- Key Insights: So you may ask me, what is the difference between CDK and SAM?
- Hidden/Implicit Meaning: Platform automation signal.

Line 29:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS Lambda, AWS SAM
- Key Insights: Well, SAM is going to be serverless focused, and we are going to write our templates declaratively in JSON or YAML, and this is great for quickly getting started with Lambda.
- Hidden/Implicit Meaning: Platform automation signal.

Line 30:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: It also leverages CloudFormation in the backend, okay?
- Hidden/Implicit Meaning: Platform automation signal.

Line 31:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS Lambda, AWS SAM
- Key Insights: But the focus of SAM is Lambda function and serverless applications.
- Hidden/Implicit Meaning: Platform automation signal.

Line 32:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: For the CDK, well, it is a super set of CloudFormation, so this supports every AWS services out there.
- Hidden/Implicit Meaning: Platform automation signal.

Line 33:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And you're going to write your infrastructure with a programming language you know, for example, TypeScript, Python, Java, and .NET And it also leverages CloudFormation because it generates CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So hopefully the difference is clear between these two services.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS SAM
- Key Insights: There's also a way where you can combine the CDK and the SAM framework.
- Hidden/Implicit Meaning: Platform automation signal.

Line 36:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS SAM
- Key Insights: So you can use the SAM CLI to locally test your CDK applications.
- Hidden/Implicit Meaning: Platform automation signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: How?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS CDK, AWS CloudFormation, AWS Lambda
- Key Insights: Well, first we must run cdk synth, and when we do that, we have a Lambda function say, in the CDK application, we run the cdk synth command and this is going to generate a CloudFormation template that has been synthesized from the CDK.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 39:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: But then, thanks to this CloudFormation template, we can use the same framework and do SAM local invoke reference the CloudFormation template and call the function.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these two frameworks work really well together.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So in the next lecture, we're going to do a hands-on on CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 42:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And with this hands-on, we're going to deploy an application that allows us to deploy an S3 bucket on which the users can put an image.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Serverless Execution Model
- Services: AWS Lambda, Amazon DynamoDB, Amazon Rekognition, Amazon S3
- Key Insights: This S3 bucket is going to trigger a Lambda function which is going to send an API call to Rekognition to analyze the image and get the results back from Rekognition, and then the Lambda function is going to save the results to Amazon DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And all of this is going to define all from within a CDK script.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go and do this in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/385_CDK - Hands On.txt

Line 1:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS CDK, AWS Lambda, Amazon DynamoDB, Amazon S3
- Key Insights: So just as a quick reminder we're going to use the CDK to create an S3 bucket, a Lambda function that will invoke Amazon Recognition and DynamoDB tables to save the results of our action all using the Amazon CDK.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Okay, so let's practice using the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: AWS CloudTrail
- Key Insights: For this I'm going to use CloudTrail to be able to run commands against my AWS environment.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: AWS CloudTrail
- Key Insights: So click on CloudTrail and CloudTrail is getting ready.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And in the meantime you can go under CDK and open the steps.sh to get started and run some commands.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So first of all, what we have to do is to initialize and install the CDK on our environments.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So for this, we do a sudo npm install and we install the aws-cdk-lib.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's paste this and press Enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS CDK
- Key Insights: And now we have installed the CDK lib on our computer.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So that means that if I type cdk now we're going to get some commands out of it as you can see.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Right now we get some error because we have to specified which CDK command we want, but it's working.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So next we're going to create a directory called cdk-app and then we're going to change directory to go in it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And this is very important to do so.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Next we're going to initialize our CDK application.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So for this the command is cdk init.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then we specify app and then we specify a language.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is what we will write the infrastructure in.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have JavaScript but we can also have for example, Python.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But we chose JavaScript in this example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, now everything is done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 22:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So we're going to verify that it has been successfully initialized by doing cdk ls, which should return one thing, it will return the CdkAppStack.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So next what we have to do is to actually copy the content of the cdk-app-stack into the lib directory.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So if you do ls lib, you'll see there's a cdk-app-stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 26:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's go into this lib directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: We're going to remove the cdk-app-stack, and then we touch the cdk-app-stack to create a new file and we'll use nano to edit this file.
- Hidden/Implicit Meaning: Platform automation signal.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you see nano command not found.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Just do sudo yum install nano.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Nano is a text editor.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Nano is a text editor, which will allow us to edit some files.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So let's clear this and we'll do again, nano cdk-app-strack.js.
- Hidden/Implicit Meaning: Platform automation signal.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now we're going to paste the content of lib, this file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's copy-paste it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Yes, please paste multiline.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Exit.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And Save, so Control + X and Y.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, just make sure you're good by doing a cat.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And cat allows you to see that, yes, you have indeed copied all the content into this file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Okay, so now let's do a little look into what this file is because this is the core of the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 42:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS CDK, AWS Lambda, Amazon DynamoDB, Amazon S3
- Key Insights: So at the top, we require the CDK library and then we require some specific constructs from CDK such as S3, IAM, Lambda, DynamoDB, as well as more.
- Hidden/Implicit Meaning: Platform automation signal.

Line 43:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we scroll down and then we see that thanks to code we start deploying and defining our infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 44:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: For example, here we define an S3 buckets and we say this is an S3 bucket, and by the way, the removal policy is destroy this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 45:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So that means that please destroy this bucket when the stack is destroyed.
- Hidden/Implicit Meaning: Platform automation signal.

Line 46:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we have an output that's defined out of it called CfnOutputs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the name is buckets and the value is the bucket name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 48:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And so this is going to be converted into CloudFormation but this is programmed as code.
- Hidden/Implicit Meaning: Platform automation signal.

Line 49:
- Concepts: Deployment Automation
- Services: AWS CDK, Amazon S3
- Key Insights: This is because the CDK knows what to expect to create an S3 bucket, and so therefore you can define different parameters.
- Hidden/Implicit Meaning: Platform automation signal.

Line 50:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And this allows you to be a lot more versatile, a lot more agile when creating your stacks because you just write code, you don't write CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 51:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So if you know a little bit of JavaScript or you know a little bit of Python, you may prefer this method.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 52:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: AWS Lambda
- Key Insights: So then we go ahead, we create a role for Lambda.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 53:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: So we call this one role and then we define how it's working to work.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 54:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: And then there's a function called addToPolicy where we can add a policy statement into a role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 55:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we've done this in two steps, in two lines of code, one and two.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 56:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And this really shows the power of mixing programmation and then at the end, compiling into CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 57:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So we have a DynamicDB table yet again we created, we defined the partition key, the removal policy as well as that becomes an output.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 58:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: Then we have a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 59:
- Concepts: Compute Platform Design, Operational Guardrails
- Services: (none explicit)
- Key Insights: We define the runtime, the role, some environment variables that are linked directly to the table we have defined from before.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 60:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the buckets we're defining right after, or right before right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 61:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So it really shows again the power of using programming languages.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 62:
- Concepts: Serverless Execution Model
- Services: AWS Lambda, Amazon S3
- Key Insights: We can add event sources to say that the Lambda function is going to be triggered from Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 63:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we have some very good shorthand such as we can grant read-write access to the Lamnda function on the bucket and the table by just having one line and using this function instead of figuring out what is the correct IAM policy.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 64:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So that's really the power of using the CDK right here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 65:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 66:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So once we're done, we need to actually set up the lamb function that will be invoked.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 67:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so to do so from the lib directory, we go one level up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 68:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now we're back into our top-level directory.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 69:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: We're going to create a Lambda directory and go in it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 70:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to create a file called index.py in it by doing touch index.py.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 71:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: Then we're going to edit it, so nano index.py and we copy the content of Lambda index.py.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 72:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's take everything from here and paste it and then paste it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 73:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then Control + X, Y Enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 74:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 75:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So now our index.py file is properly set up as you can see.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 76:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is perfect.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 77:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We can have a look at what it does.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 78:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what it does that it detects labels in images using Amazon Recognition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 79:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So it's going to actually look at the image coming from S3 and then run it through recognition.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 80:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB
- Key Insights: And then finally write the data, the target data into DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 81:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this function is now created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 82:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Now we need to bootstrap the CDK application, bootstrap CDK overall.
- Hidden/Implicit Meaning: Platform automation signal.

Line 83:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So this is something you have to do once per account per region, and of course you should be running this command from a directory one level up because there is a cdk.json file in it which contains some important information around how we want to be set up.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 84:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Let's go back, we run the CDK bootstrap again.
- Hidden/Implicit Meaning: Platform automation signal.

Line 85:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Paste this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 86:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Press Enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 87:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And this is going to create all the necessary stuff in your accounts to run the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 88:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So it actually goes into CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 89:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So if you open the CloudFormation service, so CloudFormation in here.
- Hidden/Implicit Meaning: Platform automation signal.

Line 90:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: As you see right now, there's a stack being created called the CDK Toolkit.
- Hidden/Implicit Meaning: Platform automation signal.

Line 91:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And this is what's necessary for CDK to work.
- Hidden/Implicit Meaning: Platform automation signal.

Line 92:
- Concepts: Container Runtime Operations, Operational Guardrails
- Services: Amazon ECR, Amazon S3
- Key Insights: So if you look at resources in here, you can see that there is SSM parameter, IAM roles, ECR repository, IAM role, IAM roll, and then an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 93:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: A bit of necessary stuff for the CDK to work.
- Hidden/Implicit Meaning: Platform automation signal.

Line 94:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is something you have to do once per region and per account.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 95:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: Next, we're going to run cdk synth to get the target CloudFormation template that is going to be generated out of our stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 96:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So by running cdk synth, what's going to happen is that we're actually going to get a whole CloudFormation template, as you can see in here, an entirely a big one.
- Hidden/Implicit Meaning: Platform automation signal.

Line 97:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that contains everything we need.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 98:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So it has an S3 bucket it has S3 bucket notifications being set up.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 99:
- Concepts: Operational Guardrails, Serverless Execution Model
- Services: AWS Lambda
- Key Insights: It also has a Lambda function and so on, and IAM role and SSM parameters.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 100:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So the idea here is that this is what's going to be deployed to CloudFormation, and we can preview it, but we don't need to necessarily do it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 101:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: And finally, we need to deploy the CDK stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 102:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So we'll run CDK deploy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 103:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And this is actually going to generate this CloudFormation template and deploy it into CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 104:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you say, yes, here are all the things that are going to be created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 105:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Everything looks good, let's say yes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 106:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And press Enter.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 107:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And now is going to actually deploy a new CloudFormation template that is going to be representing our stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 108:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So if I go in here, we have the CdkAppStack, actually yes, being created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 109:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And if we have a look at our resources, there's going to events and resources and refresh.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 110:
- Concepts: Operational Guardrails
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: We can see everything that is being created such as the IAM role, the S3 bucket, DynamoDB table, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 111:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's wait until everything is created.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 112:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: Okay, so my stack is fully created and if we refresh this page, we see we have 11 resources being created.
- Hidden/Implicit Meaning: Platform automation signal.

Line 113:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: So what's important to us is going to be the S3 bucket and the DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 114:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: So let's go into the S3 bucket right here, open it in a new tab, and then the DynamoDB table as well.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 115:
- Concepts: Serverless Execution Model
- Services: AWS Lambda, Amazon DynamoDB, Amazon S3
- Key Insights: So the idea is that whenever we upload a file into this S3 bucket, the Lambda function that get deployed will be run and then we will have some data in our DynamoDB table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 116:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So for this right now, if you go into explore table items, we don't have any items, but let's do a quick experiment and see if everything is working.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 117:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we go into these buckets and I'm going to upload the file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 118:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Add files, and then underneath my code, I'm going to choose the cdk, images and then we'll choose penguins.
- Hidden/Implicit Meaning: Platform automation signal.

Line 119:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's upload this file in our buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 120:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And we're done.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 121:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this file is right here.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 122:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I'm going to open it right here to show you what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 123:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Let's go, Preference, Allow.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 124:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is just a man with some penguins.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 125:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And so this is sent into our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 126:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: And then what's going to happen is that our Lambda function is being run.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 127:
- Concepts: Serverless Execution Model
- Services: AWS Lambda, Amazon S3
- Key Insights: It's going to be triggered because S3 sent a notification to our Lambda function and then recognition is going to be invoked.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 128:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And finally, if I refresh this, you see that now there's one item return in my table.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 129:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the image is penguins.jpeg and then we can have a look at the fact that a penguin, a mobile phone, animal, bird, person, man, adult, male, glove and shoe all get detected in my images.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 130:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you can play a bit more.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 131:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You can, for example, go back to your buckets and upload two more files.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 132:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we could upload kid_and_pigeons and swans and upload them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 133:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Okay, we good?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 134:
- Concepts: Compute Operational Context
- Services: Amazon DynamoDB
- Key Insights: So they've been uploaded and very quickly I go back into the DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 135:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And now I see that more of my images have had item detected in them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 136:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you can have a look at this table on your own.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 137:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 138:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: We've seen how to deploy a full stack using the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 139:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: Now to clean up everything, what we have to do is that we have to empty our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 140:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's take all these files and yes, we say yes, I want to permanently delete them.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 141:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that's step one.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 142:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: And then step two, to clean everything up we're going to do cdk destroy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 143:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So back into CloudShell, do cdk destroy and is going to destroy everything for you.
- Hidden/Implicit Meaning: Platform automation signal.

Line 144:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Yes, and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 145:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 146:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/386_CDK - Constructs.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So Constructs in CDK are very important, and we've seen them before.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: They are components that encapsulates everything CDK needs to create the final CloudFormation stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Compute Platform Design
- Services: Amazon S3
- Key Insights: And so a Construct can be a single AWS resource, such as an S3 bucket, or it can be a combination of multiple related resources, for example, an SQS worker queue with some computes.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So how do we get these Constructs?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Well, there is a Construct Library, which is a collection of Constructs that is included in the CDK and that contains the Constructs for every AWS resource.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you have three levels of Constructs: Level 1, Level 2, and Level 3.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 7:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We'll see them in the next slides.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Also, you have the Construct Hub.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: This is when you have Constructs from AWS but also third parties and open-source CDK community to allow you to create your CDK stacks faster and better.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about the Layer 1 Constructs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: They're called CFN Resources because they represent all the resources available within CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here, in this example, we do a bucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 13:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And it's new s3.CfnBucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Deployment Automation
- Services: AWS CloudFormation, AWS SAM
- Key Insights: And so we define the exact same properties as the one from the CloudFormation Resource Specifications.
- Hidden/Implicit Meaning: Platform automation signal.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And you know this is Layer 1 because it starts with Cfn.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So a CFN bucket must have all the resource properties that are required for a bucket.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So, bucket name.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Compute Operational Context
- Services: AWS Config
- Key Insights: And you can configure all of them individually.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So if you wanted to just migrate from CloudFormation to CDK, one by one, all your resources into code, you could use CFN bucket, CFN SQS queue, and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And that would be enough.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: But that would be using Layer 1 of CDK because this is quite basic.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you go into Layer 2.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So Layer 2 is AWS resources but with a higher level.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Because now we talk about intent.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 25:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: This is a higher level Construct.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 26:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: So if we have a look at what's in bottom, here we have an s3.Bucket.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So the difference is that it doesn't start with Cfn.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 28:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, as we can see, we have versioned: true.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 29:
- Concepts: Compute Operational Context
- Services: Amazon S3
- Key Insights: And then encryption, s3.BucketEncryption.KMS.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 30:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, automatically, knows how to do this.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 31:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then, out of this, from the bucket, we can get, for example, what is the HTTP URL of a specific object out of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 32:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So we have extra methods out of it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 33:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So when you use a Layer 2 Construct, you have similar functionality as Layer 1, but now we have convenient defaults and boilerplates.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 34:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you don't need to know everything about the resource properties.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 35:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then you have added methods, such as bucket.addLifeCycleRule.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 36:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And this would allow you to just add the Lifecycle rule, even though, behind the scenes, it may be a bit more complicated in raw CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 37:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Then you have Layer 3 Constructs.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 38:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these are called Patterns because they represent multiple related resources.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 39:
- Concepts: Serverless Execution Model
- Services: AWS Lambda
- Key Insights: So here what we have is a Lambda Rest API.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 40:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we add resources and add resources, and do an HTTP Integration, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 41:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: API Gateway
- Key Insights: And so, this Layer 3 Patterns will help you complete most common tasks in AWS, such as, for example, creating a Rest API with an API Gateway.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 42:
- Concepts: Serverless Execution Model
- Services: AWS Config, AWS Lambda
- Key Insights: But instead of configuring every single little resource behind the scene, you have a much easier API to deal with, where you just define the API, and then you define the resources and the methods, and the Lambda functions, but very easily.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 43:
- Concepts: Container Runtime Operations, Deployment Automation, Elasticity and Availability
- Services: AWS CloudFormation, Amazon ECS, Elastic Load Balancing
- Key Insights: You can also have, for example, an ECS pattern where you have an Application Load Balancer with a Fargate Service, which can be extremely complicated to write as raw CloudFormation.
- Hidden/Implicit Meaning: Elasticity and resilience signal; Platform automation signal.

Line 44:
- Concepts: Container Runtime Operations, Deployment Automation, Operational Guardrails
- Services: AWS CDK, Elastic Load Balancing
- Key Insights: But with CDK, you just fill in the blanks, and automatically you have your ALB and your Fargate Service connected on the correct ports with the correct security groups, and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 45:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And the correct listeners.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 46:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So, hopefully, you now understand the differences between all the layers in CDK Constructs and the power of CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 47:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/387_CDK - Commands & Bootstraping.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Okay, so what are the important commands to know for the CDK?
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So you have all of these and I will walk you through them and this should make sense to you right away.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So the first one is to install the CDK CLI and libraries so you can start writing your CDK stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: The second one, cdk init initializes an app from a specified template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And so you can choose Python, JavaScript and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: Cdk synth synthesizes and prints the CloudFormation template.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So this is the transformation between your CDK stack as code into a CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Cdk bootstrap is something we'll see in the next slide, so I will just skip it for now.
- Hidden/Implicit Meaning: Platform automation signal.

Line 9:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: Cdk deploy is to deploy the stack.
- Hidden/Implicit Meaning: Platform automation signal.

Line 10:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So once you have a CloudFormation template, of course, you want to deploy it.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Cdk diff is to look at the difference of the local CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So whatever you have changed and what is actually deployed on CloudFormation.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: And cdk destroy is to destroy the stacks.
- Hidden/Implicit Meaning: Platform automation signal.

Line 14:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So the last little thing that we haven't discussed in depth is cdk bootstrap.
- Hidden/Implicit Meaning: Platform automation signal.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So what is bootstrapping in CDK?
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Well, bootstrapping is the process of provisioning resources for CDK before you can deploy CDK apps into an AWS environment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 17:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So what is an environment in AWS?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 18:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Well, for CDK, it's the combination of an account and a region.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Deployment Automation, Operational Guardrails
- Services: AWS CDK, AWS CloudFormation, Amazon S3
- Key Insights: So the idea is that before you are able to deploy to an account and a region, you must deploy a CloudFormation stack called the CDKToolkit that will contain an S3 bucket and it will contain an IAM role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform automation signal.

Line 20:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: And these are necessary prerequisites to deploying any CDK stack in that specified environment.
- Hidden/Implicit Meaning: Platform automation signal.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So when you are deploying to a new account and region combination, so a new environment, you do cdk bootstrap and then aws://aws_account/aws_region.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is what happens.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have the account and the region, and the user runs the bootstrap.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: A CloudFormation stack called CDKToolkit is going to be created with what we need.
- Hidden/Implicit Meaning: Platform automation signal.

Line 25:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: Now, if you try to deploy a CDK stack after this, everything is going to work but if you didn't bootstrap into your environment, you will have an error when trying to deploy your CDK stack, which will say policy contains a statement with one or more invalid principle.
- Hidden/Implicit Meaning: Platform automation signal.

Line 26:
- Concepts: Operational Guardrails
- Services: (none explicit)
- Key Insights: That's because you're missing the IAM role.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 27:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So that should make sense.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Hopefully now you understand what bootstrapping is and all the necessary commands to make CDK work.
- Hidden/Implicit Meaning: Platform automation signal.

Line 29:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/26_Cloud Development Kit (CDK)/388_CDK - Unit Testing.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So here is a short lecture around testing in the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS SAM
- Key Insights: Well, because you are using code with CDK you can actually test your code the same way you would test normal standard Python code or JavaScript code, and so on.
- Hidden/Implicit Meaning: Platform automation signal.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So in the CDK apps you have what's called the CDK assertion modules, which will contain popular test frameworks such as Jest for JavaScript or Pytest for Python.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And with this assertion modules, we can verify if specific resources are what we need or rules or conditions or parameters, and so on.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So here is a simple test where we are going to have a look whether or not this synthesizes correctly.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 6:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: That means that the CloudFormation template that comes out of it contains what we need.
- Hidden/Implicit Meaning: Platform automation signal.

Line 7:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So there are two types of tests in CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: The first one is called a fine-grained assertion which is the most common, where you're going to test whether or not some specific resources have some specific properties.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Platform Design, Serverless Execution Model
- Services: AWS Lambda
- Key Insights: For example, in here we test whether or not our Lambda function has a proper handler and has a runtime of nodejs14.x.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 10:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And then we look at whether or not our SNS topic subscription is only one, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So this is fine-grained assertions.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And then we have snapshot tests where we test the CloudFormation template against a previously stored baseline templates, for whatever reason, it's called a snapshot test.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So, this is very interesting because now you can make sure that, of course, your dynamic-db table is still here with some, I don't know, common properties.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: Whatever you want really.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And how do we test the templates?
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: We have two options.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: The first one is to do template fromStack, MyStack, and this is what we do right here where we actually import a stack that we defined in CDK and so we do templates fromStack, MyStack, but the other way is if your template does not live in CDK yet, you can do an import by doing template.fromstring.
- Hidden/Implicit Meaning: Platform automation signal.

Line 18:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: MyString in the string is your file.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: And the stack is going to be built outside of CDK so your CloudFormation template is outside of CDK and you can still run test against an external CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And these two commands, these two methods are very important to remember from an exam standpoint.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: So fromStack and fromString.
- Hidden/Implicit Meaning: Platform automation signal.

Line 22:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 23:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 24:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

### File: outputs/aws-solutions-architect-professional/12_Deployment and Instance Management/124_AWS CDK - Cloud Development Kit.txt

Line 1:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: Okay, so now let's talk about the CDK or AWS Cloud Development Kit.
- Hidden/Implicit Meaning: Platform automation signal.

Line 2:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: So this is a way for you to define your cloud infrastructure using a familiar programming language.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 3:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: For example, you do not want to use CloudFormation directly because this is a YAML format.
- Hidden/Implicit Meaning: Platform automation signal.

Line 4:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: You like JavaScript or TypeScript, you like Python, you like Java, you like .NET, and you would like to just write your cloud infrastructure using these languages.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 5:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: So thanks to the CDK, you can do that, and then once you do so by using your programming languages, the code will be compiled by the CDK into a usable CloudFormation template in JSON or YAML formats.
- Hidden/Implicit Meaning: Platform automation signal.

Line 6:
- Concepts: Compute Platform Design, Deployment Automation
- Services: AWS SAM
- Key Insights: Therefore, you can deploy your infrastructure and your application runtime code together because they can possibly share the same languages.
- Hidden/Implicit Meaning: Runtime and execution-path signal; Platform automation signal.

Line 7:
- Concepts: Container Runtime Operations, Serverless Execution Model
- Services: AWS Lambda, Amazon ECS, Amazon EKS
- Key Insights: Which is great for Lambda function, great for Docker containers in ECS and EKS.
- Hidden/Implicit Meaning: Runtime and execution-path signal.

Line 8:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 9:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So let's choose Python, for example, as a programming language.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 10:
- Concepts: Deployment Automation, Serverless Execution Model
- Services: AWS CDK, AWS Lambda
- Key Insights: So we're going to write our own CDK application in Python, and we're going to do define our Lambda function of that MDB table and maybe for other services in AWS.
- Hidden/Implicit Meaning: Platform automation signal.

Line 11:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: Then this CDK application, using the CDK CLI, is going to be transformed into CloudFormation templates.
- Hidden/Implicit Meaning: Platform automation signal.

Line 12:
- Concepts: Deployment Automation
- Services: AWS CloudFormation
- Key Insights: And that CloudFormation template, which is a generated CloudFormation template, can then be applied into CloudFormation to deploy our infrastructure.
- Hidden/Implicit Meaning: Platform automation signal.

Line 13:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: But the idea is that we want to use a cloud infrastructure using a programming language, because it allows us to get, for example, type safety.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 14:
- Concepts: Compute Platform Design
- Services: (none explicit)
- Key Insights: Or to have more familiar constructs and so on, or to go quicker, or to reuse some code, or to have for loops, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 15:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So here's an example of what a CDK code would look like.
- Hidden/Implicit Meaning: Platform automation signal.

Line 16:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: So in this example, this is using, I believe, JavaScript or TypeScript.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 17:
- Concepts: Container Runtime Operations, Elasticity and Availability
- Services: Amazon ECS, Elastic Load Balancing
- Key Insights: We have a VPC that is defined, we have an ECS cluster, and we have an Application Load Balancer with a Fargate service.
- Hidden/Implicit Meaning: Elasticity and resilience signal.

Line 18:
- Concepts: Deployment Automation
- Services: AWS CDK, AWS CloudFormation
- Key Insights: And so these three things will be compiled by the CDK, CLI into CloudFormation template that will be usable, and that you can upload and deploy.
- Hidden/Implicit Meaning: Platform automation signal.

Line 19:
- Concepts: Deployment Automation
- Services: AWS CDK
- Key Insights: So that's it for the CDK.
- Hidden/Implicit Meaning: Platform automation signal.

Line 20:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes compute behavior detail.

Line 21:
- Concepts: Compute Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
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
- API Gateway
- AWS CDK
- AWS CloudFormation
- AWS CloudTrail
- AWS Config
- AWS Elastic Beanstalk
- AWS Lambda
- AWS SAM
- Amazon CloudWatch
- Amazon DocumentDB
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EKS
- Amazon ElastiCache
- Amazon Kinesis
- Amazon Lex
- Amazon Neptune
- Amazon RDS
- Amazon Redshift
- Amazon Rekognition
- Amazon S3
- Elastic Load Balancing

### 3. Features List
- api gateway
- beanstalk
- cdk
- cloudformation
- ec2
- ecr
- ecs
- eks
- lambda
- load balancer
- sam

### 4. Use Cases
- 246_AWS CloudFormation.txt:17: Now, when we say any resources, typically what I have seen is, whenever AWS launches new AWS services, they will also have a support for that service in AWS CloudFormation.
- 246_AWS CloudFormation.txt:18: And if you compare this with, maybe a third party tools, for example, you know, Terraform, you know, Ansible.
- 246_AWS CloudFormation.txt:28: Because for example, if you're creating EC2, it knows that, it has to first create a subnet, and before subnet, it has to first create VPC.
- 246_AWS CloudFormation.txt:43: Further, you could also have a saving strategy, for example, in development environment, you want to delete everything at 5:00 PM, because it's a development, and you don't want those resources to be running throughout the night.
- 246_AWS CloudFormation.txt:73: Maybe you want to add one more security group rule, for example, right?
- 246_AWS CloudFormation.txt:100: For example, you're creating one VPC.
- 246_AWS CloudFormation.txt:120: For example, if you want to create a VPN gateway in your architecture, and you also want to add a route table entry for that VPN gateway for route propagation.
- 246_AWS CloudFormation.txt:122: Now, CloudFormation natively you cannot manage that, but then CloudFormation provides you some levers, like for example, there is something called DependOn as an Attribute.
- 246_AWS CloudFormation.txt:147: It doesn't really wait for EC2 to be become active, which only, you know, when the EC2 installs all the scripts inside within the user data, right?
- 189_Beanstalk CLI and Deployment Process.txt:3: Now, it's helpful to use the EB CLI when you want to automate your development pipelines.
- 189_Beanstalk CLI and Deployment Process.txt:5: It is more necessary to know them when you go into the DevOps exam.
- 189_Beanstalk CLI and Deployment Process.txt:7: So there will be no hands on on the EB CLI, but just you know, the EB CLI does exist and helps you speed up your efficiency when using the CLI against Elastic Beanstalk.
- 189_Beanstalk CLI and Deployment Process.txt:10: So for example, you need to create a requirements.txt for Python or you create a package.json for Node.js.
- 189_Beanstalk CLI and Deployment Process.txt:14: This will create a new app version and then when the app version is uploaded, we can deploy it using the console or using the CLI.
- 189_Beanstalk CLI and Deployment Process.txt:16: That zip, by the way, when you upload it onto Beanstalk, it actually gets uploaded onto Amazon history, and then refers the Amazon is free bundle from the Beanstalk interface.
- 192_Beanstalk & CloudFormation.txt:5: Well the use case is that using the CloudFormation resources in your .ebextensions folder that we just saw before, you can provision anything you want.
- 196_CloudFormation - Overview.txt:3: For example, in a CloudFormation template, you're going to say, I want a security group.
- 196_CloudFormation - Overview.txt:15: And all the code that makes up these CloudFormation templates can be used for version control, for example, using Git.
- 196_CloudFormation - Overview.txt:20: For example, in your development environment, you could automate the deletion of the templates at 5:00 PM and recreate them automatically at 8:00 AM in a safe matter because everything is automated.
- 196_CloudFormation - Overview.txt:28: For example, you may want to have stacks for your network and your VPCs.
- 197_CloudFormation - Create Stack - Hands On.txt:3: And the reason I want you to be in us-east-1 is that all the templates have been designed for that region, especially when talking about AMI IDs, which are region-specific, so just for the sake of learning, please use Northern Virginia, us-east-1.
- 197_CloudFormation - Create Stack - Hands On.txt:11: And then, in the list of sample templates, you can use, for example, Multi_AZ_Simple, WordPress blog.
- 197_CloudFormation - Create Stack - Hands On.txt:24: So, if you were to zoom in, for example, you see here we have a WebServerSecurityGroup, a LaunchConfig, a WebServerGroup.
- 197_CloudFormation - Create Stack - Hands On.txt:26: So, if you click on it, you can see, for example, that there are some resource configuration directly from the CloudFormation templates that are here.
- 197_CloudFormation - Create Stack - Hands On.txt:48: And right now we have no tags, no permissions, we are not going to look at these settings either, or those, they will come in due time when we look at the rest of the lectures in CloudFormation.
- 197_CloudFormation - Create Stack - Hands On.txt:51: So when we click on upload a file, it goes to S3, and then CloudFormation is referencing this file in Amazon S3.
- 200_CloudFormation - Resources.txt:15: So for example, let's have a look at Amazon Kinesis.
- 200_CloudFormation - Resources.txt:18: And if we wanted to have a look at a specific one, for example, AWS::EC2::Instance, this is the documentation for this type.
- 200_CloudFormation - Resources.txt:27: For example, if you click on IamInstanceProfile, you click on it and then you get the information that this is the name of an IamInstanceProfile.
- 201_CloudFormation - Parameters.txt:4: We actually used them before when we were giving a security group a description.
- 201_CloudFormation - Parameters.txt:7: So when should you use a parameter?
- 201_CloudFormation - Parameters.txt:8: So this is the SecurityGroupDescription parameter we have used from before, and the question you need to ask yourself when defining if something should or shouldn't be a parameter is this.
- 201_CloudFormation - Parameters.txt:10: If so, make it a parameter, because whenever you want to update that value, you will not have to re-upload the template to change its contents.
- 201_CloudFormation - Parameters.txt:14: It could be an AWS-Specific Parameter, for example, to help you catch invalid values or a list of those.
- 201_CloudFormation - Parameters.txt:30: So for example, say we want as a parameter to put in the database password, but of course it is a password so we have to keep it secret.
- 201_CloudFormation - Parameters.txt:51: For example, under the SecurityGroups property of our EC2::Instance we had a !Ref for SSHSecurityGroup.
- 201_CloudFormation - Parameters.txt:63: So for example, if you use a !Ref to the AWS AccountID reference value, then the return value will be your actual account ID.
- 201_CloudFormation - Parameters.txt:67: So these pseudo parameters are very handy and I think one of the most used is, for example, to figure out the region and the account ID.
- 202_CloudFormation - Mappings.txt:3: For example, dev versus prod, and give different values for those, or regions, such as AWS regions or AMI types and so on.
- 202_CloudFormation - Mappings.txt:6: So here, based on the region you have, so us-east-1, us-west-1, or eu-west-1, and based on the architecture you're using, for example, HVM64 or HVMG2, this is going to give you a different AMI ID every time.

### 5. Constraints / Limitations
- 246_AWS CloudFormation.txt:6: So, if you're doing a lot of manual work for creating AWS infrastructure, like creating VPCs, and the Subnets, and the VPN connection, it is no more required.
- 246_AWS CloudFormation.txt:103: As a separate stack, it'll just launch that VPC, and required subnets.
- 246_AWS CloudFormation.txt:118: Many a times, it happens like in CloudFormation, you write a template, and then you want to make sure, before creating one of the resource, some other resource should be created.
- 246_AWS CloudFormation.txt:119: Now, most of the time AWS manages that, but there are certain scenarios where AWS can't decide, whether you want to create resource first, and then add the entry somewhere, because it's all, not directly related.
- 246_AWS CloudFormation.txt:122: Now, CloudFormation natively you cannot manage that, but then CloudFormation provides you some levers, like for example, there is something called DependOn as an Attribute.
- 246_AWS CloudFormation.txt:125: And then only, it will enable that route propagation.
- 246_AWS CloudFormation.txt:144: But if there is some kind of dependencies, then it can't handle that.
- 246_AWS CloudFormation.txt:147: It doesn't really wait for EC2 to be become active, which only, you know, when the EC2 installs all the scripts inside within the user data, right?
- 246_AWS CloudFormation.txt:150: And then, once that handler receives the signal as success, then only, CloudFormation will proceed from there.
- 246_AWS CloudFormation.txt:171: So, all the developers can use your code, and change it as required.
- 189_Beanstalk CLI and Deployment Process.txt:18: This is the theory lectures that should explain you the backend process of how Beanstalk works.
- 192_Beanstalk & CloudFormation.txt:7: So the beautiful thing is that Elastic Beanstalk, even though the UI only allows you to configurate a few things, with EB extensions and CloudFormation, you can configure anything you want in your AWS.
- 196_CloudFormation - Overview.txt:8: And then by declaring what you want by just saying, hey, all these things should exist and they should be linked together, automatically, CloudFormation will create them for you in the right order with the exact configuration that you specify.
- 196_CloudFormation - Overview.txt:12: So why should you use AWS CloudFormation?
- 196_CloudFormation - Overview.txt:22: And this is really leveraging the whole power of the cloud, which is to just create and delete things and only pay as you go.
- 196_CloudFormation - Overview.txt:32: Well, your templates must be uploaded in Amazon S3 and then referenced from CloudFormation.
- 196_CloudFormation - Overview.txt:36: If you wanted to update a template, you cannot edit the previous one.
- 196_CloudFormation - Overview.txt:47: The description, which is the comments about the templates, the resources, which is the actual only mandatory section in CloudFormation, which is going to define all the AWS resources that are declared in the templates, the parameters, which are the dynamic inputs for your templates, the mappings, the static variables for your templates, and we'll see the differences between parameters and mappings, the outputs to get references to what has been created in your templates, conditionals, which are a list of conditions to perform resource creation, and we'll have a few template helpers such as references and functions.
- 197_CloudFormation - Create Stack - Hands On.txt:42: And so we're saying, hey, please create an EC2 instance, and the first thing is that the availability zone must be us-east-1a, the ImageId AMI ID should be this AMI, and the InstanceType should be t2.micro.
- 197_CloudFormation - Create Stack - Hands On.txt:44: So as you can see, nothing has been decided and defined in the console, only through code.
- 197_CloudFormation - Create Stack - Hands On.txt:67: Outputs, we can only have nothing.
- 198_CloudFormation - Update & Delete Stack - Hands On.txt:2: And the only way to update a CloudFormation stack if we click on update is to replace the current template.
- 198_CloudFormation - Update & Delete Stack - Hands On.txt:3: Or if you wanna say use the current template, is going to just use the same as it was, but you cannot modify it.
- 198_CloudFormation - Update & Delete Stack - Hands On.txt:79: And the cool thing about it is that CloudFormation was able to determine on its own the order of which it should delete things, which is very handy.
- 200_CloudFormation - Resources.txt:2: And as I said before, the resources are the core of your CloudFormation templates, and this is the only mandatory section in your entire CloudFormation templates.
- 200_CloudFormation - Resources.txt:7: Right now, there are over 700 types of resources, and I can't teach you them all, but I can teach you how to read the documentation.
- 200_CloudFormation - Resources.txt:11: Then we just read the docs and by the knowledge acquired in this course and the docs, we should be good to go.
- 200_CloudFormation - Resources.txt:29: And then it tells us that it's not required.
- 200_CloudFormation - Resources.txt:61: In this course, everything you write in the template is what's being created, and you cannot dynamically create a number of resources. "Is every AWS Service supported?" The answer is almost.
- 200_CloudFormation - Resources.txt:62: Only a select few things are not there yet.
- 201_CloudFormation - Parameters.txt:5: So, they're super important to know about if you want to reuse your templates across the company so that many people can put many parameters and because the inputs cannot be determined ahead of time.
- 201_CloudFormation - Parameters.txt:7: So when should you use a parameter?
- 201_CloudFormation - Parameters.txt:8: So this is the SecurityGroupDescription parameter we have used from before, and the question you need to ask yourself when defining if something should or shouldn't be a parameter is this.
- 201_CloudFormation - Parameters.txt:11: Also, if it cannot be determined ahead of time, then again, you should make it a parameter.
- 201_CloudFormation - Parameters.txt:13: It could be a String, a Number, a CommaDelimitedList, a List of numbers.
- 201_CloudFormation - Parameters.txt:28: So thanks to it, we'll have a dropdown and the user can only select one of these three values, hence giving them choice while giving you control.
- 204_CloudFormation - Conditions.txt:3: So for example, you could have some things only created in a development environment such as the Dev Stack and some things only created in the production environment such as the Prod Stack.
- 205_CloudFormation - Intrinsic Functions.txt:2: So we've seen them before, but I wanna give you a list and the ones that are in blue are the one you must know.
- 205_CloudFormation - Intrinsic Functions.txt:29: So while the Ref gives you usually a reference to the ID of the resource you have created, the GetAtt allows you to get more out of the resource and you can only get what CloudFormation supports in terms of attributes that are defined in here in the documentation.
- 205_CloudFormation - Intrinsic Functions.txt:43: So that's probably one of the only usage of it.

### 6. Patterns / Architectures
- 246_AWS CloudFormation.txt:68: CloudFormation Designer.
- 246_AWS CloudFormation.txt:120: For example, if you want to create a VPN gateway in your architecture, and you also want to add a route table entry for that VPN gateway for route propagation.
- 189_Beanstalk CLI and Deployment Process.txt:3: Now, it's helpful to use the EB CLI when you want to automate your development pipelines.
- 196_CloudFormation - Overview.txt:23: You also have automated generation of diagrams for your template, which is very good for your architecture diagrams and its declarative programming.
- 197_CloudFormation - Create Stack - Hands On.txt:3: And the reason I want you to be in us-east-1 is that all the templates have been designed for that region, especially when talking about AMI IDs, which are region-specific, so just for the sake of learning, please use Northern Virginia, us-east-1.
- 201_CloudFormation - Parameters.txt:18: It could have a Min and a MaxLength, a Min and a Max Vlue, a Default value, a list of AllowedValues, regex of an AllowedPattern and NoEcho, and it could have other things maybe not represented in this slide.
- 202_CloudFormation - Mappings.txt:6: So here, based on the region you have, so us-east-1, us-west-1, or eu-west-1, and based on the architecture you're using, for example, HVM64 or HVMG2, this is going to give you a different AMI ID every time.
- 202_CloudFormation - Mappings.txt:17: And then finally, the type of architecture you want, for example, HVM64.
- 202_CloudFormation - Mappings.txt:18: And this works great because, well, AMIs are region specific, and so you want to make sure you have the right AMI for the right region and the right architecture.
- 213_CloudFormation - StackSets.txt:7: And within an organization, only an administrator account or someone who's been designated as an administrator can create StackSets, of course.
- 386_CDK - Constructs.txt:38: And these are called Patterns because they represent multiple related resources.
- 386_CDK - Constructs.txt:41: And so, this Layer 3 Patterns will help you complete most common tasks in AWS, such as, for example, creating a Rest API with an API Gateway.
- 386_CDK - Constructs.txt:43: You can also have, for example, an ECS pattern where you have an Application Load Balancer with a Fargate Service, which can be extremely complicated to write as raw CloudFormation.

## Step 3 - Deep Expansion (Compute Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CDK: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DocumentDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

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
