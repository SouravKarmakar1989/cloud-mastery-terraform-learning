# 15_Service_Security.md

## Scope
- Topic: Security controls for container, serverless, data, and platform services
- Files processed: 26
- Extracted non-empty transcript lines: 860
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 7: Other Services Security)

This section is the study-first architecture guide for service-specific hardening across container, serverless, analytics, and platform tools.

### Phase 1 - Foundations

#### Module 1: Service-Specific Security Reality
- Each managed service exposes distinct identity, network, runtime, and data risks.
- Shared controls exist, but secure implementation details are service-specific.
- Platform teams need service-by-service hardening baselines.


##### Source Transcript Details
- Module focus: Service-Specific Security Reality
- Primary transcript files:
- outputs/AWS Speciality/Security/09_Other Services/255_Lambda Security.txt
- outputs/AWS Speciality/Security/09_Other Services/256_[DVA] Lambda in VPC.txt
- outputs/AWS Speciality/Security/09_Other Services/264_[CCP] Amazon WorkSpaces.txt
- outputs/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt
- outputs/AWS Speciality/Security/09_Other Services/262_[SAA] Glue Overview.txt
- outputs/AWS Speciality/Security/09_Other Services/257_[DVA] Lambda in VPC - Hands On.txt
- outputs/AWS Speciality/Security/09_Other Services/258_[DVA] Lambda Function URL.txt
- outputs/AWS Speciality/Security/09_Other Services/252_ECR Security.txt
- outputs/AWS Speciality/Security/09_Other Services/260_AWS Signer.txt
- outputs/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt
- Top concept clusters from transcript metadata:
- Governance/Platform Operational Context
- Workload Platform Security
- Data Plane Hardening
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 26
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 860
- Key insights inside selected files: 395
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So there is the Lambda execution role, which is an IAM role that is attached to your Lambda function, and it grants the Lambda function permissions to several AWS services and resources.
- You can also create resource policies for your Lambda functions to give access to other accounts and services.
- And then, an IAM principle can access Lambda either if the IAM policy attached to principle authorizes it, so direct user access, or if the resource-based policy will authorize it, so this is for a service to service...
- Well, when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- And also we can access other services such as DynamoDB.
- So for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- So back into our private subnet, we have our RDS security group around our Amazon RDS database in our VPC.
- Therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- And so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- And VPC endpoints, if you remember, they're used to access private AWS services privately within your cloud without access to a NAT device or an internet gateway.
- So we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- So it's a managed desktop as a service, so DaaS solution to easily provision Windows or Linux desktop.
- It's secured because it's integrated with KMS, and it's pay as you go service, so you only pay for the usage of these actual desktops.
- So that's the IDB one workspaces, if you see anything related to virtual desktops or manage desktop as a service, think workspaces.
- So let's go into the EC2 Image Builder service and have a play with it.
- So I'm into the service, we can get started, we can create an image pipeline.
- And here we have two options, we can create either an AMI out of the EC2 Image Builder service, or a Docker image, but for this instance, we'll use an AMI.
- And so, as we can see here, we can either create the infrastructure using service defaults, or create a new infrastructure configuration.

##### Polished Architect Notes
- Transcript signals that there is the Lambda execution role, which is an IAM role that is attached to your Lambda function, and it grants the Lambda function permissions to several AWS services and resources.
- Transcript signals that you can also create resource policies for your Lambda functions to give access to other accounts and services.
- Transcript signals that then, an IAM principle can access Lambda either if the IAM policy attached to principle authorizes it, so direct user access, or if the resource-based policy will authorize it, so this is for a service to service...
- Transcript signals that when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- Transcript signals that also we can access other services such as DynamoDB.
- Transcript signals that for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- Transcript signals that back into our private subnet, we have our RDS security group around our Amazon RDS database in our VPC.
- Transcript signals that therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- Transcript signals that so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- Transcript signals that vPC endpoints, if you remember, they're used to access private AWS services privately within your cloud without access to a NAT device or an internet gateway.
- Transcript signals that we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- Transcript signals that it's a managed desktop as a service, so DaaS solution to easily provision Windows or Linux desktop.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance/Platform Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Workload Platform Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Plane Hardening as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: there is the Lambda execution role, which is an IAM role that is attached to your Lambda function, and it grants the Lambda function permissions to several AWS services and resources.
- Design implication: you can also create resource policies for your Lambda functions to give access to other accounts and services.
- Design implication: then, an IAM principle can access Lambda either if the IAM policy attached to principle authorizes it, so direct user access, or if the resource-based policy will authorize it, so this is for a service to service...
- Design implication: when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- Design implication: also we can access other services such as DynamoDB.
#### Module 2: Security Control Dimensions
- Identity: who can invoke, deploy, and administer.
- Network: where data and traffic may flow.
- Runtime: what executes and with which isolation guarantees.
- Supply chain: what artifacts are built, signed, and promoted.


##### Source Transcript Details
- Module focus: Security Control Dimensions
- Primary transcript files:
- outputs/AWS Speciality/Security/09_Other Services/256_[DVA] Lambda in VPC.txt
- outputs/AWS Speciality/Security/09_Other Services/255_Lambda Security.txt
- outputs/AWS Speciality/Security/09_Other Services/264_[CCP] Amazon WorkSpaces.txt
- outputs/AWS Speciality/Security/09_Other Services/257_[DVA] Lambda in VPC - Hands On.txt
- outputs/AWS Speciality/Security/09_Other Services/252_ECR Security.txt
- outputs/AWS Speciality/Security/09_Other Services/260_AWS Signer.txt
- outputs/AWS Speciality/Security/09_Other Services/263_Glue Security.txt
- outputs/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt
- outputs/AWS Speciality/Security/09_Other Services/272_Redshift Security.txt
- outputs/AWS Speciality/Security/09_Other Services/258_[DVA] Lambda Function URL.txt
- Top concept clusters from transcript metadata:
- Governance/Platform Operational Context
- Workload Platform Security
- Data Plane Hardening
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 26
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 860
- Key insights inside selected files: 398
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- And also we can access other services such as DynamoDB.
- So for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- So back into our private subnet, we have our RDS security group around our Amazon RDS database in our VPC.
- Therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- And so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- And VPC endpoints, if you remember, they're used to access private AWS services privately within your cloud without access to a NAT device or an internet gateway.
- So we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- So there is the Lambda execution role, which is an IAM role that is attached to your Lambda function, and it grants the Lambda function permissions to several AWS services and resources.
- You can also create resource policies for your Lambda functions to give access to other accounts and services.
- And then, an IAM principle can access Lambda either if the IAM policy attached to principle authorizes it, so direct user access, or if the resource-based policy will authorize it, so this is for a service to service...
- Well, when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- So it's a managed desktop as a service, so DaaS solution to easily provision Windows or Linux desktop.
- It's secured because it's integrated with KMS, and it's pay as you go service, so you only pay for the usage of these actual desktops.
- So that's the IDB one workspaces, if you see anything related to virtual desktops or manage desktop as a service, think workspaces.
- Also, let's go into the EC2 console and we're going to create a security group for our Lambda functions.
- So I will go into the security groups UI.
- Create a new security group, and I'll call this one Lambda SG and we'll attach it to the VPC we have.
- The idea is just to show you, SG for Lambda, the idea is just to have a security group to attach your Lambda function.

##### Polished Architect Notes
- Transcript signals that also we can access other services such as DynamoDB.
- Transcript signals that for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- Transcript signals that back into our private subnet, we have our RDS security group around our Amazon RDS database in our VPC.
- Transcript signals that therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- Transcript signals that so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- Transcript signals that vPC endpoints, if you remember, they're used to access private AWS services privately within your cloud without access to a NAT device or an internet gateway.
- Transcript signals that we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- Transcript signals that there is the Lambda execution role, which is an IAM role that is attached to your Lambda function, and it grants the Lambda function permissions to several AWS services and resources.
- Transcript signals that you can also create resource policies for your Lambda functions to give access to other accounts and services.
- Transcript signals that then, an IAM principle can access Lambda either if the IAM policy attached to principle authorizes it, so direct user access, or if the resource-based policy will authorize it, so this is for a service to service...
- Transcript signals that when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- Transcript signals that it's a managed desktop as a service, so DaaS solution to easily provision Windows or Linux desktop.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance/Platform Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Workload Platform Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Plane Hardening as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: also we can access other services such as DynamoDB.
- Design implication: for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- Design implication: back into our private subnet, we have our RDS security group around our Amazon RDS database in our VPC.
- Design implication: therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- Design implication: so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
### Phase 2 - Core Services

#### Container and Registry Security
- ECR, ECS, and EKS require image trust, runtime isolation, and permission scoping.
- Secure workload deployment depends on image provenance and execution-role boundaries.

#### Serverless and API Security
- Lambda and API Gateway security is primarily identity plus event-input control.
- VPC integration, function URL usage, and endpoint policy shape risk exposure.

#### Platform Utility Security
- Signer improves artifact trust chains.
- Verified Access-style patterns tighten user-to-application path control.
- Image Builder hardening supports reproducible trusted compute baselines.

#### Data and Workspace Service Security
- Glue, Redshift, DynamoDB, and WorkSpaces each add service-specific access and governance controls.
- Security posture should include data minimization and explicit role/endpoint constraints.

### Phase 3 - Advanced Patterns

#### Pattern 1: Secure Build-to-Run Supply Chain
- Build signed artifacts, scan and validate, then deploy with least-privilege runtime roles.
- Enforce promotion gates between environments.

#### Pattern 2: Service Boundary Hardening
- Pair service IAM controls with network constraints and logging.
- Keep public entrypoints minimal and explicitly justified.

#### Pattern 3: Cross-Service Threat Containment
- Isolate compromised service paths using scoped credentials and segmented data access.
- Use event-driven response hooks tied to service-specific telemetry.

### Phase 4 - System Design (Production)

#### Reference Service Security Architecture
- Central identity and policy governance with service-specific baseline modules.
- Shared observability and response framework across heterogeneous services.
- Artifact trust and runtime hardening integrated into platform engineering workflows.

#### Scaling Considerations
- Service count growth increases baseline-control maintenance burden.
- Runtime model diversity complicates unified threat modeling.
- Platform drift emerges if baseline templates are not versioned and enforced.

#### Cost Considerations
- Security cost is mainly operational maturity and automation depth.
- Standardized baseline templates reduce repetitive engineering and incident cost.

### Cross-Cloud Concept Mapping (Service Security)

#### Underlying Concept: Container and Artifact Security
- AWS: ECR, ECS, EKS, Signer patterns
- Azure: ACR, AKS, artifact-signing and policy controls
- GCP: Artifact Registry, GKE, binary authorization-style controls
- Trade-off: strongest protection requires integrated supply-chain and runtime governance.

#### Underlying Concept: Serverless and API Hardening
- AWS: Lambda and API Gateway security model
- Azure: Functions and API management security model
- GCP: Functions/Run and API Gateway security model
- Trade-off: trigger model and identity integration differences require platform-specific guardrails.

### Real-World Use Cases from Transcript Signals
- Harden container pipelines from artifact creation to runtime execution.
- Secure serverless APIs with strict invocation and identity boundaries.
- Apply consistent guardrails across platform utility services and analytics services.

### Constraints and Exam-Relevant Traps Captured
- One-size security templates fail across heterogeneous managed services.
- Supply-chain trust gaps can bypass runtime hardening efforts.
- Service-specific defaults can be insecure if not explicitly reviewed.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/116_[SAA_DVA] API Gateway.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: So, so far in our serverless journey, we've seen how to create Lambda functions and we've seen how to use DynamoDB.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: And so the functions can use DynamoDB as a database for our API, and we can do create, read, update, delete on our tables, but we'd like our clients to be able to invoke this Lambda function in some way.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So there are multiple of doing it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Elastic Load Balancing
- Key Insights: We can have the client directly invoke the Lambda function, but that means that the client would need IAM permissions, or we've seen we can use an application load balancer to have it in between the client and the Lambda function and that would expose our Lambda function as an HTTP endpoint.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There's one last thing we can use.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: It's called the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is a serverless offering from AWS which allows us to create REST APIs that are going to be public and accessible for our clients.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 8:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So the client will talk to the API Gateway and the beautiful things that the API Gateway will then proxy the request to our Lambda functions.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 9:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So it would use an API Gateway because it provides us more than just an HTTP endpoint.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It will provide us a lot of features as we'll see in this section, such as authentication, such as usage plans, development stages and all that kind of things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So the API Gateway has a lot of features and this is just an overview, but we can integrate the API Gateway and Lambda and that gives us a full serverless application.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So no infrastructure to manage.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: We have support for the WebSocket Protocol so we can do real-time streaming through the API Gateway in two different ways.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 14:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: The API Gateway handle API versioning.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can go from version one to version two and version three and not break our clients.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can handle multiple environments that includes a dev, a test and the prod environment.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: There is a whole thing about API Gateway and security.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 18:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So there's a tons of way to enable security on your API Gateway for both authentication and authorization.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 19:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: We have the ability to create API keys, do request throttling in case some clients are doing too many requests on our API Gateway, and we can also use some common standards such as Swagger or Open API 3.0 to import quickly defined APIs, and also we can export them as Swagger and Open API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 20:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: We can transform and validate request and response in the API Gateway level to ensure that the invocation are correct, and we can generate SDK and API specifications and cache API responses.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 21:
- Concepts: Workload Platform Security
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So lots of features that come with the API Gateway that are not necessarily included when you use something as simple as an application load balancer.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So what is the API Gateway integrate with?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 23:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Well, there is a Lambda function and we've seen this from the previous diagram, so it can invoke a Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 24:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And with this integration, it is the most common way and a very easy way to expose REST a API backed by a Lambda function to do a full serverless application.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But also HTTP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can expose any HTTP endpoints in the backend.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Workload Platform Security
- Services: Elastic Load Balancing
- Key Insights: So it could be, for example, an HTTP API you have on premises, or it could be an application load balancer you have on your cloud environment.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Well, you would use an API Gateway to leverage the rate limiting features, the caching, the user authentication, the API keys, et cetera.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 30:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So it's definitely used full to have a layer of API Gateway on top of your HTTP endpoint.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 31:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And finally, we can use an evidence service so we can expose any AWS API through the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 32:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So which ones, for example, where we can start a Step Function workflow, we can post a message to SQS directly from an API Gateway API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, because maybe you want to add authentication, deploy some APIs publicly or do some rate control on some AWS services.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 35:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So here is an example of the API Gateway used with an AWS service.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So example, Kinesis Data Streams.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we want to have people send data into a Kinesis Data Streams but in a secure way, without giving them access to AWS credentials.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So what we do is that's in between our clients and our Kinesis Data Streams, we're going to have the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 39:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And the clients will send HTTP request into the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's been configured to then send the messages into a Kinesis Data Streams.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you see in this setting, we don't manage any servers.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then Kinesis Data Stream from there, we can, for example, send the records into a Kinesis Data Firehose and eventually put them into an Amazon S3 bucket in the JSON format.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So you start to see the power of API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 44:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: You can actually expose any AWS service to the outside through an API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 45:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: There are three ways to deploy your API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is called endpoint types.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the first type, which is the default one is called Edge-Optimized.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is for your global clients.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So that means that your API Gateway is going to be accessible from anywhere in the world.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And to be efficient, the request are going to be routed through all the CloudFront Edge locations, which will improve the latency.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance as Code, Workload Platform Security
- Services: API Gateway, CloudFormation
- Key Insights: Your API Gateway is still only in one region where you created it, but it's accessible efficiently from every CloudFormation Edge location.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then there's a regional deployment.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is when we don't want to use CloudFront Edge locations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So it's when we expect all our users to be within the same region where we created our API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to, you could create your own platform distribution, and this will give you the same result as an Edge-Optimized distribution, but this time you have more control over location strategies and the platform settings themselves.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And then finally, the last kind of API Gateway you can do is a private API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 57:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this time it's not public.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So a private API Gateway can only be accessed from within your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it will use interface VPC endpoints for your ENIs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And to define access to your API Gateway, you can use a resource policy.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 61:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Now, a few comments about the security on top of the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 62:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So you can identify users on the API Gateway in multiple ways.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first way is through IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So this is very helpful if you have internal applications, for example, running on EC2 instances, and they want to access an API on API Gateway, they can just use IAM roles.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to have external users, for example, for mobile applications or web applications, then you would use something called Amazon Cognito.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to implement your own logic, you could do do so with a custom authorizer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 67:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: This is a Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 68:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Also, you can have HTTPS security through your own custom domain name by integration with a service called the AWS Certificate Manager or ACM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Data Plane Hardening, Workload Platform Security
- Services: API Gateway
- Key Insights: And so that certificate, if you're using an Edge-Optimized endpoint must be in us-east-1 but if you're using a regional endpoint then that certificate may be in the same region as the API Gateway stage.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 70:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Finally, you must set up, of course, a CNAME or an A-alias record in Route 53 to point to your domain and API Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 71:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 72:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 73:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/117_[SAA_DVA] API Gateway - Hands On.txt

Line 1:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So let's open API Gateway and we are in the API Gateway console.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So as you can see in here, I have option of choosing an API type.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So we have HTTP, APIs, we have WebSocket API, REST API, which are public or private, and so as such, we will only deal with a REST API for now.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can try out new console by clicking on this and this is going to be the default very soon.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to have that.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: And then you choose REST API, and then you build it.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So when you build an API, a REST API you have several options.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 8:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: You can create a new API, you can import one from an open API definition file.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 9:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So where it's says file and just import and API's created for you.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: You can clone an existing API or you can start from the example API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 11:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: For us, we were going to start from a new API and the name is going to be MyFirstAPI.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: Now as you see for the API endpoint type, we have three options.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have Regional, Edge-optimized, or Private.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So Regional is going to be deployed in one region.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Edge-optimized is going to be deployed in many different regions, but it's at the edge that is going to be deployed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: And then one, the API will still live in one region.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or private is just private not exposed to the web.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: To keep things simple right now I'm going to choose regional API type.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 19:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So let me create the API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And here we are.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So now we are here, we are going to create our first method in this API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for this, you click on create method here and then we choose the method type.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it could be any of these HTTP verbs but we're going to do a GET just to get a page.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then you have to choose the integration type.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can see we have five options.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: We have Lambda function, HTTP, Mock, AWS service and VPC link.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 27:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And the one we'll be testing is Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But I want to show you that we can also integrate with any service in any region.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we choose a region and then we choose a service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And what it does that you can expose some of your AWS services as an API through API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 31:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So we're going to keep things simple and use Lambda functions in this one.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 32:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And so we need to choose a Lambda function but for this of course we need to create it.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 33:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So let's go in Lambda and create our function that is going to react to this API gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 34:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So create a function and I call this one api-gateway-route-gets.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's go and create this function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And while this is creating, I wanna show you the code we're going to use.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So I am in my code, in my folder and there's lambda-code.py.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 41:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And this is the entire code we're going to copy to Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 42:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And so the idea is that this is a very simple in the function which responds to an event with some context and says, "Hey, the body's going to be hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's going to be returned as the body." The status code is 200.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then the headers is Content-Type application/json, to let our web browser know that we get back a JSON response.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this entire code.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Scroll down and paste it here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're going to deploy this function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to click on Deploy to deploy this function, and we can also test it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for example, I can create a test event called DemoTest.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we just send this event, we save it and then we click on Test.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And as you can see, the result is hello from Lambda with status code 200.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So everything is working fine right now and this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: And what I'm going to do now is to integrate, this Lambda function to my API gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 54:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So back in here, I'm going to copy the function ARN, go to my API gateway, and then just click and paste the ARN.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So now we have the Lambda function integrated and because we want to see the full requests being passed to Lambda and being sent back from Lambda, you're going to take Lambda proxy integration.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 57:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 58:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: You can customize it and have it less than 29 seconds but the default timeout is 29 seconds regardless of how long your Lambda function takes to execute.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 59:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So let's create this method and this is going to automatically grant API gateway, the right to invoke our Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 60:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So if I go back here and refresh this page, as you can see now our API gateway can invoke our Lambda function and we can verify this by going into the configuration and then permissions.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 61:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: And if we have a look at the resource-based policy statement, this one, and we click on View policy, it turns out that my API gateway is allowed to invoke my Lambda function if the source API is the one from my API gateway being route GET.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 62:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So this is the stuff that happens behind the scenes on AWS to allow the API gateway to invoke our Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we know that everything is done from a security perspective.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So now we can have a look at our API gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the client for this one method sends a request and we can have a look at the request itself here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So all the settings are here, it's done integration with Lambda, and so it's a Lambda type of integration with proxy enabled.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 67:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Then the Lambda itself is this function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 68:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can click on it and get back to our function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then the response is proxy integration.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 70:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: That means that it will, the API gateway will parse what is being sent by the Lambda and interpret it.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 71:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then the method response is what we have here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 72:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We could modify it if you wanted to, but we're looking for application/json.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 73:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So let's test out this API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 74:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for this on the bottom right there is a test and you can specify some query strings or some headers but we don't specify anything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 75:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Just click on Test.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 76:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And the test is, hey, the response body is hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 77:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So you can see from the API gateway, the status is 200.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 78:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That comes right from our code right here which says status is 200.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 79:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: We also have the response body, hello from Lambda, again, was defined in our code right here, body equals json.dumps.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 80:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And then hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 81:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And finally the content type is JSON, and that is retrieved as part of the response headers being content type JSON.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 82:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: On top of it from the test, we can have a look at the execution log from the API gateway, which is really nice, which is also when you wanna debug and see what's happening.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 83:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: A very nice way of doing so.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 84:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So we have done our first execution of an API gateway on top of a Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 85:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So now let's actually debug this and see what is being sent to our Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 86:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So I'm going to do print event, and then I'm going to deploy this, and we are going to invoke now our Lambda function again from our API gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 87:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So we're going to run a new test, which still says hello from Lambda, but this time we are printing the events.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 88:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we go to the CloudWatch logs we should be able to find it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 89:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's go into monitoring and then look at CloudWatch logs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 90:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We're going to find the latest log stream, this one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 91:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And here we have our log.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 92:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And we can see here that this was the printed event that was received from API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 93:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So some information you have in here, for example, the resource which is slash, the path slash, the method which is GET, and then you get headers and then you get query string parameters and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 94:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So a lot of information is passed on by the API gateway to our Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 95:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: And our Lambda function can use this information to forge a response and send it back to the API gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 96:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now we can go ahead and actually create a new resource.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 97:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this time we're going to have the resource by doing this and the resource name is going to be houses.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 98:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's create this resource.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 99:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now we have the /houses path that I just opened.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 100:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And in /houses, I'm going to create a method.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 101:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: It's going to be a GET again for Lambda function of proxy integration.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 102:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And I need to create my Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 103:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's do this quickly, I'm going to copy this and then create a function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 104:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's not root yet, it's houses yet now.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 105:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The runtime is still going to be Python.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 106:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And let's create this function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 107:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Yet again, I'm going to just copy this code.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 108:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And so instead of hello from Lambda, we're going to change the message to be hello from, and then something with houses.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 109:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So my function is now created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 110:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We're going to copy this and it's going to be hello from my pretty house.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 111:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to deploy this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 112:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now we have deployed the function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 113:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'm going to copy the function ARN and paste it in here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 114:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And create this method.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 115:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so now we have /houses that has the GET method.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 116:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I can test this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 117:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's test it and click on Test.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 118:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I get a 200 hello from my pretty house.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 119:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so far it's pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 120:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: We have the root, GET and we have the houses, GET, which invoke two different Lambda functions.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 121:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: But we want to be able to access this from a web browser, not just testing it from the API Gateway UI.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 122:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So let's click on Deploy API, and we need to select a stage.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 123:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be a new stage, and the name is dev, we'll have a look at it later.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 124:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's deploy this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 125:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: And now that we've deployed this API, there's an invoke URL.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 126:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this URL and then I'm going to paste it in my web browser.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 127:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And as you can see when I go to /dev, it says hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 128:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So this is just Firefox doing a pretty print but you get hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 129:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if I go to /houses then I get hello from my pretty house.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 130:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So this API has two Lambda functions replying to me.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 131:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if I do something wrong, if I do /wrong then I'm getting error message such as message missing authentication token.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 132:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 133:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: We have deployed our API to API Gateway and this is pretty cool because, well, we have two Lambda functions behind the scenes actually replying to it.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 134:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: And that's it for our basics role on API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 135:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/118_API Gateway - Advanced.txt

Line 1:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So let's look at the security of the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So if we have a public rest API we can define a resource policy.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: In this resource policy, the first part is allowing anyone to execute an API on their public rest API, but then we have a deny statement.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that deny statement is saying that we deny anyone who doesn't have a source IP that is specified in there.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So effectively we restricted access from specific public IP addresses to our public rest API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's the number one way to do security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: The second way of course as I told you, is that if you have a private API then you must use a VPC interface endpoint to access it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 8:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: You can not access it without a VPC interface endpoint and here using a resource policy we can define that the private API must only be accessed through a specific VPC interface endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Platform workload security signal.

Line 9:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Another question you may have is how to access an API Gateway, private API that sits in another account from..
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, an account A with an EC2 instance in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the question is, how can we do it?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you may think of ideas but actually the answer is very simple.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All you have to do is you create a VPC interface endpoint in the private subnet of account A.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So that's number one and this allows the EC2 instance to access the API Gateway service over all and for this, no VPC peering is needed what so ever.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's the pretty cool part about it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Thanks to the VPC endpoint we just accessed directly the API Gateway service and then we define a resource policy on our private API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that we're saying, Hey, the only way to access it is through the VPC endpoint that is deployed in account A.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: Therefore we can deploy a private API in account B and then thanks to the resource policy, only guarantee that the account A through the VPC endpoint of account A can access it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the cool thing about it again, no VPC peering is needed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That is a common exam question.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Let's also look at throttling on the API Gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: So you have account limits and the idea is that the API Gateway is going to throttle your request at 10,000 request per second across all your API's.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can increase these sub limits upon request but in case you see some throttling, you're going to get a retriable error of HTP code 429 called; too many requests.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: You can also decide to set stage limits and method limits to improve the performance and spread out the request across all your API's.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 25:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Or if you wanted to you can define a usage plan in the API Gateway to give API keys to your customer and have some throttling mechanism on the per customer basis.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 26:
- Concepts: Workload Platform Security
- Services: API Gateway
- Key Insights: Just remember, that one API Gateway that is overloaded and not limited can cause all the other API's deployed within the API Gateway to be throttled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's something to take note of.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/251_[SAA_DVA] Elastic Container Registry (ECR).txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: Okay, so let's do a short intro to Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Workload Platform Security
- Services: Amazon ECR
- Key Insights: So Amazon ECR stands for Elastic Container Registry, and it's used to store and manage Docker images on AWS.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: So so far, we've been using online repository such as Docker hub but we can also store our own images on Amazon ECR.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: And actually you have two options for ECR.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: We can store images privately, just for your account or your own accounts with an s or you can use a public repository and publish to the Amazon ECR public gallery.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR, Amazon ECS
- Key Insights: Now ECR is fully integrated with Amazon ECS, which is great.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And your images are behind the scenes stored by Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR, Amazon ECS
- Key Insights: So your ECR repository may contain different Docker images and then your ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS
- Key Insights: And for example, an EC2 instance on your ECS cluster may want to pull these images.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So to do so while we're going to sign an IAM role to our EC2 instance and this IAM role will allow our instance to pull Docker images.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: So of course, all access to ECR is protected by IAM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: That includes that if you have a permission error on ECR have a look at your policies and then your containers are going to be started on your EC2 instance after they are pulled by your EC2 instance.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR, Amazon ECS
- Key Insights: And this is how ECS and ECR ECR work together.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Resilience and Recovery
- Services: Amazon ECR
- Key Insights: Now, Amazon ECR is great because on top of being a repository, it, supports image vulnerability scanning, versioning, image tags, and image lifecycle.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: So overall, anytime you see storing Docker images think ECR and that should be it for you at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/252_ECR Security.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: So let's talk about a few security concerns with ECR.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: So the first one is that you can have integration between KMS and ECR by encrypting your ECR repositories at rest using your KMS keys.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So your images will be encrypted and they are encrypted using the envelope encryption technique thanks to Data Encryption Key.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 4:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And you can only enable the encryption at the Repository Creation.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in case you want to encrypt an unencrypted repo, you have to create a new repo that is encrypted and then migrate over the images.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: ECR, the way it works to encrypt these images will use a KMS Grant on your behalf to interact with KMS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so this Grant, again, makes sure to have the DescribeKey, Decrypt, GenerateDataKey, and RetireGrant permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is when you delete the repo.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this should make sense by now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: What is new to you, for example, is the fact that you can only enable the KMS encryption at the Repository Creation type.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 11:
- Concepts: Workload Platform Security
- Services: Amazon ECR
- Key Insights: ECR has a featured name image scanning which allows you to find software vulnerabilities in your container images.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have multiple level of scanning.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: The first one is Basic Scanning where Amazon ECR is going to look for vulnerabilities in a common open-source database which has all these common vulnerabilities and Exposure CVE.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can configure your repository to either scan on push whenever you push an image to your repo or to just scan manually when you prefer.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We also have the Advanced Scanning.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is using Amazon Inspector as an external service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so what's going to happen is that Amazon Inspector is going to scan these images continuously, and automatically, and on top of it, it's going to be able to scan both the operating system as well as the programming language package vulnerabilities.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's an advanced type of scanning, and it happens continuously.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And whenever Inspector has heard of new vulnerabilities, it's going to scan again, your images.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Any type of findings Inspector will have will end up in Amazon EventBridge from which we can build automations such as with SNS or Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Finally, it's possible for you to specify Scan Filters to specify which repositories are going to be scanned.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so for example, if you specify *prod*, that means you're going to match anything that has prod in the repo name and then scanning will be automatically enabled for these repos.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: What about cross-account access for your ECR repo?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So let's say we have a container image in an account and another account wants to access it.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, you may have guessed it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The one way to do it is to use a repository policy which is a resource policy, and this will allow the target account to issue commands against our repo.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the way it works that when you do a login from account B to get a Docker login, please make sure to reference the first account as the URL to authenticate.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: You're going to get an authentication token out of it, and then you can just simply push the image with the correct name to push into the target ECR repository.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Same for pulling images.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So fairly simple.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The whole magic happens with a repository policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: So some troubleshooting around ECR.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: If you have a 403 forbidden error or No Basic Auth Credentials error, and even if you've successfully gotten a Docker login with ecr get-login-password, you may have this error.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the reason that could be of the source of the issue is that you have authenticated to a different AWS region, and so the Docker login does not work across region.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You need to get a new one for it, or this Docker login was successfully issued, but then you don't have the necessary IAM permissions to push or pull or we have an authentication token and it has expired because it's only valid for 12 hours.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECR
- Key Insights: All right, that's it for ECR.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/253_ECS Secret Management.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS
- Key Insights: So just a short lecture on the ECS Integration with the SSM Parameter Store and Secrets Manager but we've seen this from before so just a reminder.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS
- Key Insights: So ECS can inject sensitive data for your containers as environment variables which is very helpful for your secrets to get them at runtime.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So these secrets can be stored securely in the SSM Parameter Store or Secrets Manager and what we do is that we reference sensitive data in the container definition.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 4:
- Concepts: Workload Platform Security
- Services: Amazon ECS
- Key Insights: So either you have, for example, a secret such as the database password in Secrets Manager and a parameter such as an API key in the Parameter Store, they can both be referenced from your ECS container definition and then your ECS task at boot time will be pulling these secrets and inject them as environment variables.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Of course, it must have the correct IAM permissions to Secrets Manager, to the Parameter Store, and also to the underlying KMS key that allowed these secrets to be encrypted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Workload Platform Security
- Services: Amazon RDS
- Key Insights: So then from this we can connect to an RDS database or access an API with a proper API key.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Something you've seen but one last reminder.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/254_EKS Concepts.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EKS
- Key Insights: So Amazon EKS is to manage Kubernetes clusters on AWS and you can log stuff that's happening within your cluster.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EKS
- Key Insights: So you can log what's happening with your pods, your pods are your containers, or you can log what's happening with your nodes, and your nodes is the underlying infrastructure of your EKS, your Kubernetes cluster.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EKS
- Key Insights: So to give you an idea, any event that happens within Amazon EKS will have a TTL of 60 minutes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It cannot be changed, and then it will be lost.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So to keep history beyond these 60 minutes, you must send all these events into CloudWatch Logs, and that is possible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EKS
- Key Insights: So anything such as the EKS control plane logs can be sent to CloudWatch Logs, as well as any events within your pods can be sent to CloudWatch Logs as well.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: So for the control plane logging, you're going to get your audit logs, you're going to get your diagnostic logs, you're going to get your controller logs, and you can define which log types you want to send to CloudWatch Logs as well.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it, just this little bit of information.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/255_Lambda Security.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Now let's look at Lambda from a securities perspective.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So there is the Lambda execution role, which is an IAM role that is attached to your Lambda function, and it grants the Lambda function permissions to several AWS services and resources.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And the simple managed policies for Lambda you have is, for example, the AWSLambdaBasicExecutionRole.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And what does it do?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, it uploads logs into CloudWatch, very simple, but you need these permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You also have the AWSLambdaKinesisExecutionRole to read from Kinesis.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: The LambdaDynamoDBExecutionRole to read from DynamoDB streams.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There is one for SQS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: There is one for deploying Lambda functions in VPC, because you actually need to create network interfaces and so on.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There is a managed policy to upload trace data to X-Ray and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So what you have to think about is that when you deploy a Lambda function, you need to understand, what is this Lambda function interacting with?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There is no magic.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: You need to create an IAM role that has the proper permission so that your Lambda function can function correctly.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 14:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So in the case of an event source mapping that invokes Lambda function, the Lambda function will use the execution role to read the event data.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 15:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: The best practice is to create one Lambda execution role per function.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 16:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: You can also create resource policies for your Lambda functions to give access to other accounts and services.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: You give them permissions to use your Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's very similar to an S3 bucket policy for S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And then, an IAM principle can access Lambda either if the IAM policy attached to principle authorizes it, so direct user access, or if the resource-based policy will authorize it, so this is for a service to service access.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So when do we need this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Well, when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So Lambda can write to CloudWatch Logs.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 23:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So your Lambda function will send logs to CloudWatch into a log group and will have multiple log streams.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so the execution role must contain, number one, the CreateLogGroup permission to actually create the target log group.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Then CreateLogStream to create individual log streams which correspond to your Lambda function executions.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then, PutLogEvents to actually send log events into your log streams.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And, finally, DescribeLogStreams to find the proper one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/256_[DVA] Lambda in VPC.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Okay, so now let's talk about networking and Lambda functions.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So by default, your Lambda functions are launched outside of your own VPC, so it is in another VPC that AWS owns, okay?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And therefore, it cannot access resources that belong in your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what is the point in your VPC?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS, Elastic Load Balancing
- Key Insights: It could be your issue to instances, RDS database, ElastiCache, or an internal elastic load balancer, these kinds of things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So by default, you will learn that Lambda deployments look like this.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: You have the cloud, your Lambda function, it can access any public websites, okay?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can access external APIs.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: And also we can access other services such as DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon RDS
- Key Insights: But if we have our own VPC and our own private subnet and we have a private RDS within it, then Lambda cannot access RDS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you may ask me the question, what can I do to solve it?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Can I deploy my Lynda in a VPC?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And of course you can.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 15:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And behind the scenes, the Lambda function will create an ENI.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 16:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So Elastic Network Interface in the subnets that you have selected and to create this ENI, your Lambda function needs a Lambda VPC Access Execution Role.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So back into our private subnet, we have our RDS security group around our Amazon RDS database in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And this Lambda function, we want to give it VPC access.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 19:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon RDS
- Key Insights: Therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You know, it's invisible, we don't see it, but this is how it happens behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So it will go through the ENI into your Amazon RDS database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon RDS
- Key Insights: And so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here is a caveat.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: What if we deploy a Lambda function in a VBC, can we access the public internet?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 26:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And by default, Lambda function inside of your VPC does not have access to the internet.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you may ask me, okay.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: I don't want you to deploy my Lambda function inside of a private subnet.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I want to deploy it in a public subnet and you told me Stefan, that public subnets have access to the internet.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So that is true for EC2 instances but it is not true for Lambda functions.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 31:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So deploying a Lambda function in a public subnet does not give it internet access or a public IP.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's good to know.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the exam will definitely test you on this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what can we do then?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Well, you can deploy your Lambda function in a private subnet and to give it internet access, you would use a NAT gateway, or a NAT instance, just like we saw in the VPC primer.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 36:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So we have our Lambda function in our VBC, we're in the cloud, and it is deployed in a private subnet, not a public subnet.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 37:
- Concepts: Workload Platform Security
- Services: Amazon RDS
- Key Insights: So it's in a private subnet and we have access to RDS but to access an external API, we need to go through a public subnet with a NAT device.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So a NAT gateway or NAT instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: The NAT gateway or instance will be talking to the internet gateway of our VPC and the internet gateway will give us access to the external API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So all of this is configured through your route tables and your VPC configuration, okay?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: Next, what if you want you to access DynamoDB, well, we can access DynamoDB either through the public route and through your internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this would work once a NAT is put in place.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: Or, if you want to access DynamoDB privately, you can use VPC endpoints.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And VPC endpoints, if you remember, they're used to access private AWS services privately within your cloud without access to a NAT device or an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon DynamoDB
- Key Insights: So we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so all of that works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So if you deploy a Lambda function in a private subnet, note that your CloudWatch Logs work even if you have no end points or NAT gateway.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: CloudWatch Logs is something that functions no matter what.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for the theory, Now let's go into the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/257_[DVA] Lambda in VPC - Hands On.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Okay, so let's practice Lambda in VPC.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So we'll author a Lambda function from scratch.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Call it Lambda VPC, runtime being Python 3.8 and create this function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 4:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Also, let's go into the EC2 console and we're going to create a security group for our Lambda functions.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I will go into the security groups UI.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Create a new security group, and I'll call this one Lambda SG and we'll attach it to the VPC we have.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We don't need any inbound rules and outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: The idea is just to show you, SG for Lambda, the idea is just to have a security group to attach your Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Once that is deployed in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So back into our Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Now let's go into the configuration and make sure that we can deploy this within our VPC because right now the Lambda function is within the AWS cloud and it has internet access but it doesn't have VPC access.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for this on the configuration, on the left hand side, there is VPC.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 14:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: We can edit this and choose a VPC to attach our Lambda function to.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, there is a warning sign here, which says that when you connect a function to a VPC in your account, which we are doing right now, it does not have access to the internet unless you provide your VPC access which means that it needs to be in a private subnets and you need to route the outbound traffic to that gateway in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is the only way of doing it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Even if right now we publish our Lambda function in three subnets, okay?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 18:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And these are public subnets because they have access to the internet, as we know, The Lambda function can still not have access to the internet.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It needs instead to be published, deployed into a private subnets and have a NAT gateway or NAT instance in a public subnets to route traffic to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So this is fine now, because we're not going to access the internet using a Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 21:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon RDS
- Key Insights: And when you deploy a Lambda function within the VPC usually is to do some local operations for example, on your RDS database or your elastic cache cluster.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in terms of security group then let's attach the Lambdas SG security group we have from before and the inbound rules and the outbound rules would be helping in terms of defining access to other services.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Actually, the inbound rules would be helpless but the outbound rules may be helpful.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's click on save.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And now we can see that this doesn't work because the Lambda function does not have the permissions to call the create network interface on EC2.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 28:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Yes, because when you create a Lambda function in a VPC then to be able to run, it needs to have network interfaces and now they belong to you and to your VPC.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 29:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So we need to provide Lambda function with enough permission to do so.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's open a new tab, configuration, permissions and click on the role and the permission roles.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 31:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So let's attach a policy to our role and I will just type in Lambda in here.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 32:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And in there we have a Lambda ENI management access.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this one and we'll attach this policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And so if we look into the lambda ENI management access this has all the necessary permission, such as create network interface, delete network interface, describing, and so on, to be able to give our Lambda function the rights to exist within our VPC.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now let's click on save.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And our Lambda function is now deployed within our VPC.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 38:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So for this, we just need to run the Lambda function and test it out.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 39:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So by the way, when you create a Lambda function in the VPC it can take a little bit of time to be updating and starting at first.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 40:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: This is because a few things that should be set up by AWS but then the performance of your Lambda function should be okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's just wait for the other to be done.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So this took about three minutes but my Lambda function is now updated.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so I can just test it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So let's go to this Lambda function and click on tests.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We'll create a sample events and then click on creates, now test our function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the function has succeeded.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: But the more interesting part is that if we go into the management console of EC2 and we go under network interfaces, as we can see here three network interfaces have been created and the disc respond to the network interfaces of my Lambda function within my VPC.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So these network interfaces each in one different AC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So each in one different subnets is what allows my Lambda function to communicate with our VPC.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So you can imagine having these ENIs and the security group, having the necessary rules to access an RDS database or an elastic cache cluster, for example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So fairly simple but that's it for this demo.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/258_[DVA] Lambda Function URL.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So now let's talk about Lambda function URL.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: What if you wanted to just expose your Lambda function as an HTTP endpoint without having to go through the hassle of using API Gateway or an application balancer?
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Well, you can use function URL, and this gives you a unique URL endpoint that will never change for your Lambda function, which looks like this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it supports IPv4 and IPv6.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So your Lambda function, once you publish it as a function URL, you will be able to access it and perform HTTPS requests to it using web browser, using the command line, using Postman or really any HTTP clients.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, this function URL can only be accessed through the public internet only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If you're trying to access it privately and want a private URL, this is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, in case you are accessing this function URL from a different domain, you can use CORS configuration as we'll see.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And for security, we have resource-based policies to manage access to our Lambda function URL.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This can be applied to any function alias or to your latest version of your function but you cannot apply it to specific function versions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: You can create and configure it using the console or the API.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 12:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And if you need throttling because you want your Lambda function to only run up to a specific amount, you can use the reserved concurrency feature of Lambda to control how much a Lambda function can run.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, for the URL security, how does it work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Well, we have resource-based policies and this gets attached to your Lambda function and this is going to be able to say which other accounts or specific IP ranges for CIDR or IAM principals can access our Lambda function URL.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And for CORS, this is similar to what we've seen in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So if you call your Lambda function URL from a different domain, then you must have CORS security in place.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in this example, our S3 bucket is fronted by CloudFront to which we have a custom URL as example.com.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: But the API is hosted as a Lambda function URL, which is api.example.com.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 19:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Because the domains are different, you need to set the CORS setting on your Lambda function URL to make things work.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, for security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So if you set AuthType NONE, then this allows public and unauthenticated access to your Lambda function, which is cool.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then the resource-based policy is what's going to determine there are not a request is going to be allowed on your function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so you must grant public access as the resource policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So here what I have is allow principal star for InvokeFunctionUrl, and then this allows people to go through the internet and access our Lambda function as a Lambda function URL.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 25:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: If you set AuthType to be AWS_IAM, then IAM is going to be used to authenticate and authorize request to your Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so both the principal identity-based policy and the resource-based policies are going to be evaluated.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And so you need to make sure that between these two things, there is a lambda:InvokeFunctionUrl permission.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 28:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: Now, if we are within the same account, then if the identity-based policy or the resource-based policy allows this API call and you're good to go.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is very similar to S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if you're doing cross accounts, you need have both the identity policy and the resource-based policy as allow.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So here in this example, on account A, I've attached a resource-based policy, and if you look at the principal part of it, this actually authorizes the role in account B to access my Lambda function but that's not enough because we are in a cross account setting.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 32:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: The IAM role of account B must also have an identity-based policy that allows to invoke the Lambda function URL of the other accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 33:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: When these things are both in place, then security works and the IAM role can use the Lambda function URL of account A.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/259_[DVA] Lambda Function URL - Hands On.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So let's create a function and I will call this one lambda-demo-url.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we can choose Python 3.9 and then we can create this function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now the function is created, I can just click on Test and then we have a new Test Event.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We save this, we add a name, test, and Save.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And as you can see, if we test this function right now, the response is status code 200, body, Hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is exactly what we want.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This returns on HTTP-like response.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And what we want to do, is to now publish this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're going to publish this new version.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'll call this one version 1, so we have version 1.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now what we should do is that we create an alias and we create this alias, and I'll call this one, dev and let's save this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So dev points to version 1.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now I'm going to scroll down.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see here, Function URL is empty.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And on the left-hand side, there is Function URL that you can select and you click on Create Function URL.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Here, we specify the authentication type.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have IAM or NONE.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we'll use NONE and we'll need to make sure that we have the proper resource policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And as you can see, there is this, that gets automatically created, which allows anyone to access our Lambda Function URL of AuthType, NONE, which is good.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then also, if you wanted to, we could configure CORS, Cross-Origin Resource Sharing, right here, to say which origins we want to allow, which headers we want to expose, and so on.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is CORS specific configuration, but we won't need it right now.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have this new Resource Policy that gets attached to our function, and now we have a Function URL and this will remain the exact same URL forever, for this alias, dev.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So if I open a new tab and then paste this in, as you can see, I get the response, Hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the fancy thing you see right here is just my web browser displaying some extra stuff.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: But as you can see, it says Hello from Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so that worked.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And so we were able to access our Lambda Function publicly, through a URL.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 30:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: Other things to note is that if I, for example, go back to my Lambda function, so I go back to my Lambda Function and I'm going to look at Aliases right here.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I am on version 1 and if I click on version 1 and I try to go to Function URL, as you can see, it says you can only add a Function URL to unpublished function versions or an alias.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can go to the unpublished version, which is latest.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And in latest, I can also, if I wanted to, create a Function URL, which would allow people to access my latest Lambda version.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we've seen how Functions URL work.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/260_AWS Signer.txt

Line 1:
- Concepts: Workload Platform Security
- Services: AWS Signer
- Key Insights: Now let's talk about AWS Signer.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's a fully managed Code-Signing service that ensures trust and integrity of your code.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So the way you do it is that you will have a Code-Signing certificate public and private key, and then you will use them to sign your code.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the code is going to be validated against a digital signature to confirm that the code is unaltered and from a trusted publisher.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Workload Platform Security
- Services: AWS Signer
- Key Insights: We create a signing profile in AWS Signer.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We send the code, and then the code is going to be signed thanks to cryptographic operations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Once it is signed, then it can be verified as trustable.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So there is a Code-Signing feature for AWS Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: The way it works is that before we upload packages to Lambda we digitally sign them, and then this will enforce that only trusted code that had been signed from us will be executed on our Lambda functions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 11:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: This is only supported for Lambda as code but not for Container Lambda functions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 12:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So once this code is signed, as I said, you can deploy it on Lambda, and you have the guarantee that Lambda only run trust code, trusted code, which is very important for enterprises.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Platform workload security signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You also have Code-Signing capability for AWS IoT.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So again, you would sign and create code for IoT and Amazon FreeRTOS, and it is integrated with ACM to generate and import these signing certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can also Revoke Signing Profile.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So once you, for example, want to revoke a trust on someone or something, you can revoke the signature of a Lambda deployment package to invalidate it, and then Lambda will fail the signature checks and then it will not run this code.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So you can either revoke individual signatures by using the RevokeSignature API call, or you can revoke a Signing Profile using the RevokeSigningProfile API call.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is only something you should use in critical scenarios, because this is an irreversible type of operation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 19:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So if there's a signature you wanna revoke, just as an admin you use the RevokeSignature API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 20:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: This Lambda function then will not be able to use any code signed with this signature because, well, the signature check will fail.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 21:
- Concepts: Workload Platform Security
- Services: AWS Signer
- Key Insights: So that's it for AWS Signer.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/261_AWS Verified Access.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access
- Key Insights: So now let's talk about AWS Verified Access.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's a service that allows you to provide secure access to your corporate internal applications without the need of a VPN.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is allowing your employees to connect your applications from any network, remotely, without the use of VPN.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For this, it uses what's called the Zero Trust principles.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That means that instead of just relying on network security, for example, a VPN, which will be network security, instead we use the normal internet, but we will verify the user identity, as well as the device the user is using, continuously, for every request.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access
- Key Insights: So this allows us to get fine-grained access for your applications, and to validate each application request in real-time, through AWS verified access.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The result of that is that you can have a simplified network diagram and simplified access, all without using a VPN.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So your users first have to identify to verify access, and so we can use IAM Identity Center, or a third party, OIDC IdP, and then by implementing the correct permissions, you have defined whether or not the users have access to which application, in a central place.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access
- Key Insights: On top of it, you have integration with WAF, the web application firewall, to prevent threats and attacks against AWS verified access.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And all logs of all the requests can be sent into Amazon S3, CloudWatch Logs, Kinesis Data Firehose, or a third party.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of this application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access, Elastic Load Balancing
- Key Insights: It's an ALB, it's in a private subnet, and we have EC2 instances, and we want to expose this application to the web, but using verified access.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we want our users to access our application using app.example.com Remember, this is a corporate application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access
- Key Insights: So we're going to create an AWS Verified Access service, including an endpoint.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so we have to define how, first of all, the users have to authenticate to that endpoint.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so the trust providers can be defined either as IAM Identity Center or an OIDC compatible identity provider.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Once we have this, then we apply the access policy, and if the access policy says that the device and the user can access the application, then we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The access will be provided from a network perspective.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: On top of it, we have integration with AWS WAF to get protected against common attacks, and all the logs are logged into CloudWatch Logs, Amazon S3, and Kinesis Data Firehose, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access
- Key Insights: Finally, as a note, you should know that AWS Verified Access can send traffic either to an application balancer or any elastic network interface.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: AWS Verified Access
- Key Insights: So remember, AWS Verified Access is to give access to corporate applications without the use of a VPN, while maintaining Zero Trust principles.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/262_[SAA] Glue Overview.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So now let's talk about AWS Glue.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So Glue is a managed extract, transform and load service, also called commonly ETL service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's very useful to prepare and transform data for analytics.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS, Amazon Redshift
- Key Insights: So this is a fully serverless service and you're just going to submit whatever you want and it will achieve it, for example, say you had data in an S3 bucket or an Amazon RDS database and you wanted to load this into a Redshift data warehouse.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue, Amazon Redshift
- Key Insights: So you could extract it using Glue, then you would transform it if need be to maybe filter some data or add some columns and so on, whatever you want, and then you would load the final output data into a Redshift data warehouse.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So all of this happened from within the Glue ETL service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You just have to write some code, launch your ETL job, and off you go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's one example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Another example that's gonna come up in the exam is how to convert data into the Parquet format.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So why would we do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Because, well, the Parquet format is a columnar data format and therefore it is much better when in use, for example, with services like Athena.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So say for example that you are doing inserts into your S3 buckets and then these files are in the CSV formats.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: Then you would use the Glue ETL service to import the CSV and convert it into a Parquet format from within the Glue service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then you would send it into an output S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And when in Parquet format, then Amazon Athena is going to analyze this file in a much better fashion.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Workload Platform Security
- Services: AWS Glue, AWS Lambda
- Key Insights: So the other thing you can do to automate this entire process is that anytime a file is inserted into the S3 bucket, then you can send events notifications to a Lambda function, which will then trigger a Glue ETL job.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: But you could replace the Lambda function with EventBridge as well.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This would work as an alternative.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: Okay, so there's another feature of Glue called the Glue Data Catalog, which is to catalog data sets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue, Amazon DynamoDB, Amazon RDS
- Key Insights: So the Glue Data Catalog will run Glue data crawlers and they will be connected to various data sources such as Amazon S3, Amazon RDS, Amazon DynamoDB, or a compatible JDBC database that you own on premises, for example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So the Glue Data Catalog is going to crawl these databases and is going to write all the metadata of your tables, of your columns, of your data types and so on, into the Glue Data Catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: And so it will have all the databases, the tables, and the metadata, and that will be leveraged by the Glue jobs to perform ETF.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: Now also, when you use Amazon Athena behind the scenes to do the data discovery and the schema discovery, Amazon Athena is going to be leveraging the AWS Glue Data Catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So will Amazon Retro Spectrum and so will Amazon EMRs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So as you can see, the Glue Data Catalog service is central to many other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So other features that can appear at the exam on Glue and that you should know at a high level.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: The first one is Glue Job Bookmarks.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so this is to prevent you from reprocessing all data in case you run a new ETL job.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is very important and it can come up in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: You have Glue Data Brew, which is used to clean and normalize data using pre-built transformation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: You have Glue Studio, which is a GUI to create, run, and monitor ETL jobs in Glue.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: And then you have Glue Streaming ETL, and it's actually built on top of Apache Spark Structured Streaming, and instead of running ETL jobs, as you know, batch jobs you can run them as streaming jobs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: And so therefore you can read data using Glue Streaming ETL from Kinesis Data Streams or Kafka or MSK as we'll see, which is managed Kafka on AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/263_Glue Security.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So let's talk about AWS Glue Security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Data Plane Hardening
- Services: AWS Glue
- Key Insights: So you have encryption at rest using KMS for all your Glue concepts, such as databases, table, Job Bookmarks, and you get encryption in transit using TLS.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: Now, to get access to Glue for the security, either you define IAM policies, and you attach them to users, group roles, or services, and they can access Glue resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The other way is to use resource-based policies.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is when you attach a resource such as, very similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: You attach it to a Glue data catalog and that grants access to IAM identities, which is very helpful in the case of cross-account access.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: The next thing we have is a centralized data catalog for Glue.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: Well, we will have cross-account concerns because we want to centralize everything in Glue.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: So we'll have a producer account, and we'll have a consumer account, and the producer account will have the Glue data catalog connected to an S3 bucket, and say the consumer account wants to be able to query this S3 bucket through Athena, and then it wants to reference the table from the Glue data catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: Well, we create a Glue data catalog policy, and in this policy, we allow a principal from another account.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this account 444, 555 and so on, to get access to the catalog, the database, and the table of our own accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is the data catalog policy and it's a resource policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: AWS Glue
- Key Insights: And this will allow the other accounts, if they have the proper IAM policies, of course, to query the data of our Glue data catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the S3 bucket policy also must have security in place.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So because the S3 bucket policy is going to be queried by Athena, you need to have also an allow statement to allow Athena or the other accounts to do a get object or list object on our buckets and our buckets' objects.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/264_[CCP] Amazon WorkSpaces.txt

Line 1:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So let's talk about Amazon WorkSpaces.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's a managed desktop as a service, so DaaS solution to easily provision Windows or Linux desktop.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that, it's just going to be a solution that is going to allow you to eliminate what's called on-premises VDI, so, Virtual Desktop Infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So the idea is that if someone, someone wants you to have a windows laptop in the cloud, they can do so using WorkSpaces.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's fast and it quickly scales to thousands of users.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's secured because it's integrated with KMS, and it's pay as you go service, so you only pay for the usage of these actual desktops.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So you're a user, you're maybe at home, and you want to access a secure windows desktop from within AWS, you would provision one using workspaces, and then you would get access to your cloud or your corporate data center directly from this virtual desktop that is going to be secure and maybe within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So that's the IDB one workspaces, if you see anything related to virtual desktops or manage desktop as a service, think workspaces.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: Finally, there's been some questions in the exam about, minimizing latencies for workspaces.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So if you have, for example, two corporate offices in California and Paris and uses there, the best practice is to deploy workspaces as close as possible to your users, so you would deploy maybe one workspace, in the U.S.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then your California user would access that workspace directly for them there and the other one would be obviously to place another workspace closer to your european users in Europe.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is here, you'd have as many workspace regions as you know, center locations you have for your company to minimize latency.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And overall, if you wanna minimize latency, always think about deploying close to users.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: Okay so, not just workspaces, but any other app, if you wanna minimize latency, deploy it as maintained as possible across the world, close to users.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/265_Amazon Workspaces - Security.txt

Line 1:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So now let's talk about Amazon WorkSpaces security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one is the IP Access Control Group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: They're very similar to security groups but they are for WorkSpaces.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So you list the IP addresses or the CIDR address ranges that users are authorized to connect from and then they will be accessing WorkSpaces.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: If the users are accessing WorkSpaces through a VPN or a NAT then you need to make sure that the IP Access Control Group authorize the public IP of your VPN or your NAT.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So if you have a corporate data center, a user has a public IP from the CIDR that's owned by the data center and then we have WorkSpaces with an IP Access Control Group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We'll just authorize the CIDR of our data center and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We also have access control options and trusted devices.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So we manage which client devices can access WorkSpaces and we can use WorkSpaces certificates based authentication to limit access to only trusted devices using digital certificates and this works for Windows, MacOS and Android clients.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Data Plane Hardening, Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: So we have our user and we are issued a certificate by our administrator, and then we are going to authenticate with WorkSpaces using that certificate which prevents malicious users from accessing our WorkSpaces directory.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Workload Platform Security
- Services: Amazon WorkSpaces
- Key Insights: That's it for WorkSpaces security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/266_ASG Instance Refresh.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about the instance refresh feature of Auto Scaling.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the goal of this is to have a launch template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You want to update it, and then you want to update all the underlying EC2 instances in your Auto Scaling group to match this new launch template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, this feature doesn't come up on its own, but it comes up combined with other security concepts and that gives you the answer of the exam.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's explain this concept first.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So to do such a goal, we need to use the instance refresh feature.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's native to your Auto Scaling group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's say we have an ASG, and we have, in this example, nine EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: They're using the old launch templates, but we are updating the launch templates of our Auto Scaling group, which does nothing by default, but then we use the start instance refresh API.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we start an instance refresh.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And what's going to happen is that we set a minimum healthy percentage of how many instances we want in service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, we say, 50% of minimum healthy percentage, which is going to take down a few EC2 instances, and over time, create new ones with the new launch templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is how your group is going to be transitioned from the old launch template to the new launch templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can specify a warmup time, so how long until the instance is going to be ready to use.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And after a while, you'll have a full Auto Scaling group that only has EC2 instances that are using the new launch templates.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/267_EBS - Data Volume Wiping.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: One very short lecture about data wiping on EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So there is a common misconception and the exam may test you on it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: So if you delete an EBS volume, then the underlying physical block storage used by this deleted EBS volume is going to be overwritten by AWS with zeros before it is allocated to a new volume, meaning that the data will be wiped by AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So before you delete an EBS volume, you don't need to manually wipe data that doesn't make any sense.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So the process is you have an EBS volume full of blocks, full of data, you delete it, AWS will reclaim that EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: It's going to wipe data by adding zeros and then once EBS volume is full of zeros, then it can be assigned to another customer and it will be ready to use.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/268_CloudShell.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So just a short lecture on CloudShell, so you know one caveat for the exam.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So CloudShell Shell is a way for you to get a terminal from within the AWS console, which is very handy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So CloudShell is a browser-based shell to manage your AWS resources, and you can run CLI commands.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's pre-configured, and you can run scripts without leaving your browser.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS
- Key Insights: It comes pre-installed with common libraries and common CLI tools, such as the AWS CLI, the ECS CLI, the SAM CLI, and SDKs for Python and Node.js.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It has Bash, Powershell, Zsh, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It comes with pre-configured AWS Credentials, which are inherited from the logged in users.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 8:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So as soon as you go into CloudShell, you'll have the same permissions, and you have persistent storage up to one gigabyte per region.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it runs on Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now you have the possibility to launch CloudShell in a VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So you can access your EC2 instances, your RDS instances within your VPC by defining what's called a VPC Environment.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for CloudShell.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/269_[CCP_SOA] EC2 Image Builder.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's talk about a new service that I really like and that does come up in the exam now.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: It is called EC2 Image Builder.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: It is used to automate the creation of virtual machines or container images.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Quickly, what does that mean for the exam?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: That means that you're gonna be able with EC2 Image Builder to automate the creation, maintain, validate and test AMIs for EC2 instances.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at diagram to see how that works in detail.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So we have the EC2 Image Builder service and it is automatically, when it's going to run, it is going to create an EC2 instance called a Builder EC2 instance, and that EC2 instance is going to build components and customize the software, for example, install Java, update the CLI, update the software system, maybe install firewalls, whatever you define to happen on that EC2 instance, maybe install your application.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then once this is done, then an AMI is going to be created out of that EC2 instance, but all of this is obviously automated.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then the AMI is created, but we want to validate it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So EC2 Image Builder will automatically create a test EC2 instance from that AMI and going to run a bunch of tests that you are defining in advance.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you don't wanna run any tests, obviously you can just skip that test, but the test can be asking, is the AMI working, is it secure?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Is my application running correctly?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All these kinds of things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then once the AMI is tested, then the AMI is going to be distributed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So while EC2 Image Builder is original service, it is possible for you to take that AMI and distribute it to multiple regions, therefor allowing your application and your workflow to be truly global.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: Next, EC2 Image Builder can be run on a schedule.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can define a weekly schedule or you can say you can run whenever packages are updated or you can run it manually, et cetera, et cetera.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it is a free service, so you're only going to pay for the underlying resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Data Plane Hardening
- Services: EC2 Image Builder
- Key Insights: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Platform workload security signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/270_[SOA] EC2 Image Builder Hands On.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: Okay, so let's practice using EC2 Image Builder.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So let's go into the EC2 Image Builder service and have a play with it.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm into the service, we can get started, we can create an image pipeline.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so here's our first pipeline, we'll call it my demo pipeline, and then we have the option to create a build schedule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as we can see here, we can schedule it to happen every week on Monday at 9:00 AM and customize this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we can also say that you should run at the scheduled time only if there are dependency updates, these kind of things, or just run every time based on schedule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can specify CRON expression, but we'll just have it manual because we're running it manually in this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'll click on next, next we are to choose a recipe.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so a recipe is a document that defines how the source image is going to be customized.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we need to create a new recipe because we don't have one yet.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: And here we have two options, we can create either an AMI out of the EC2 Image Builder service, or a Docker image, but for this instance, we'll use an AMI.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we'll call it MyDemoRecipe.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We need to provide a version, so 1.0.0, and then we need to select a source image.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can either create one from images created by AWS, or enter a custom AMI ID.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we'll just go with managed images, we'll choose Amazon Linux 2, but we have different options as well as you can see.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We'll scroll down, the image origins going to be quick start from Amazon-managed, and for the image ARN, please choose Amazon Linux 2 x86, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Do not choose ARM64, choose x86, otherwise you will see an error later on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we'll click on use the latest available OS version, we'll scroll down, and here is the interesting part, so components, is how do we want to customize our image.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can apply the build components that are pre-created by AWS, for example, if we wanted to have Java on our image and our AMI, currently, there is no Java on Amazon Linux 2, but if you select amazon-corretto-11-headless, then you would have Java 11 being installed on your AMI, so great.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you go to the next page, there's another thing I want to install which is aws-cli-version-2-linux, so currently only version 1 is installed onto my AMI, but if I wanted to upgrade it to version 2 then I could select this build component.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it is possible for you to really create your own build component if you wanted to, if you wanted to customize and install your own application, for example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's scroll down, and as we can see now we have the two components, we can reorder in which order they're going to be installed, so we can say first install the cli-version-2, and then install the Java 11 from Amazon called corretto.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay next, how do we want to test that the AMI is working, post-build?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have different tests available here, we can create our own test, but I'm going to skip this because we don't want to run any tests on our instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then I will click on next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay so next, how do we want to create this AMI?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: On what type of EC2 instances do we want to create our image?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so, as we can see here, we can either create the infrastructure using service defaults, or create a new infrastructure configuration.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we want to select the last option, and for this we'll create an IAM role, so we'll call it the IAM role here, see we have to choose?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: Currently we have no results available, but I'm going to go ahead and create a new role for EC2 Image Builder.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'll click on create new role, and I'm going to roles, and I'll go and click on create role for AWS service, and this is going to be a role for EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Next, permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so here we need to start attaching policies.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So if I go back to the EC2 Image Builder, and click on create using service defaults, it says that here, in order to have a correct role, we need to create a role name with this role name.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to, sorry, the role name will have a letter, but we need to attach some policies to it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we need to attach this first policy, called the EC2InstanceProfileForImageBuilder.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We need to attach the second policy, which is ECRContainerBuilds if we wanted to create Docker images, and the last, we need to attach is the AmazonSSMManagedInstanceCore managed policy.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So all these things are necessary for EC2 Image Builder to work.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I click on add tags, next review, and the role name, I'm just going to give the default role name right here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm creating this role manually because when I did create it automatically, it wasn't correctly working, so I wanna make sure this is done correctly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have this create role dialogue, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so the role has been created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Here's my EC2InstanceProfileForImageBuilder that has been created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: And now in the image builder, I'm going to click on create new infrastructure configuration, MyDemoInfra, and the IM role I'm going to choose is the role I just created right now called the EC2InstanceProfileForImageBuilder.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, now why do we do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, because we want to be able to customize the AWS infrastructure, and as such, I want the instant type to be of type t2.micro, and the reason I'm doing this is that I really want to be able to run on the fridge here for this hands-on, so that you don't pay any money.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If you were to run with the default settings, then it will start launching an M5 large instance, and you will have to pay for it, obviously.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So next I scroll down, click on next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then for distribution settings, we can either use the default, and see that my AMI is going to be distributed in the region I'm in, which is eu-west-2.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'll click on next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Everything does look good to me, and I will click on create pipeline.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so everything has been created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, let's click on our pipeline, MyDemoPipeline, and I'm going to do action, and run pipeline, and this is going to start an execution.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so here I can click on view details, and we're going to go straight into the execution.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here is the output image, it is pending.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'm going to click on it, this opens a new screen, and I'm going to wait until the build starts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my instance is now in the building stage, and so that means that if I go into the EC2 service, I should start seeing an EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the EC2 service, let's close this, go to instances, close this again, and we have here our build instance for my demo recipe.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So this instance was created by EC2 Image Builder, and you can verify it by going into tags, for example.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: And you can see that the created by tag is for EC2 Image Builder, the Ec2ImageBuilderArn corresponds to the image we created, and the name is build instance for my demo recipe.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So some stuff is happening right now on my instance, as we can see the IAM role for my instance is EC2InstanceProfileForImageBuilder, which is the role that we have created just before that contains the three policies that we've attached manually to make sure that everything was working correctly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is just pause the video, and wait for the build stage to be done.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I just refreshed the page, and the status is now testing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's go have a look at what's happening here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 67:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if I go into my instances and refresh this, we can see that my builder instance has now been terminated, because we have built the AMI from it, and my test instance is now running.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 68:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if I look at my test instance and scroll down, we can see that the AMI right here, which I'm going to click on, the AMI is a new AMI that has been created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the AMI name is MyDemoRecipe, and contains the timestamp of when it was created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 70:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now the test instance is actually launched from this new AMI, and is being tested.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 71:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So this AMI, as we can see if we go to the tags, has been created by the EC2 Image Builder service, and we can see the ARN right here as well.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 72:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is quite cool, because now we can see that the AMI has been automatically created, and now it's in the test phase.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 73:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit until the test is done.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 74:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now the status is distributing, so the test phase is now done, so there was no test being run on our AMI, obviously, but if they were any tests, then the test instance would've been running this test.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 75:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now the instant test is also being terminated which is good.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 76:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we are in the last stage which is the distribution setting.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 77:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, right now we only distribute to one region, which is eu-west-2, which is where the AMI was created, so nothing much is going to happen.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if we were distributing that image into the United States, into Southeast Asia, all these kind of places, then the distribution would happen right now.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 79:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my image is now available, and this was good.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 80:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you go to images, we can see that it was created, so perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 81:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's just make sure that it actually did what I wanted to do.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 82:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So if I go and launch an instance, so I will call this one, Test from AMI, and I will choose my AMIs, and I will choose the demo recipe that I just created using the EC2 Image Builder service.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 83:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will scroll down, I will choose t2.micro, I will proceed without a key pair, because I will use EC2 instance connect to run some commands.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 84:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then for network settings, I'm going to edit it, and then choose an existing security group, I'll choose my Launch-wizard-1.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 85:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can ssh into our instance, scroll down, and actually none of the rest is necessary, so I'll just click on launch instance, and I'm good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 86:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So my instance is now launching.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 87:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So my instance is now running, so I'll click on connect, I will use the EC2 instance connect service and the username has to change, it is ec2-user, because we created a custom AMI, we need to tell AWS that we still want to use the ec2-user user which is coming from Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 88:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I am into my image, and we can verify two things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 89:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Number one, that the aws-cli version 2 was installed, so as we can see, it says version 2.7.0, so indeed version 2 was installed, which is an upgrade, and then we can also verify that Java was installed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 90:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And for this, we can verify indeed that's we are running the openjdk version 11, which is Amazon Corretto 11.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 91:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So our EC2 Image Builder works, and we exactly had the output we wanted.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 92:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now just to clean up what we have, let's just terminate our instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 93:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Next, what you can do is go into your AMIs, and from here, you can actually deregister your AMI, and finally, in snapshots, you can take your snapshots.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 94:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: And I got two, 'cause I got different ones but take the snapshot that was created by the EC2 Image Builder, which is this one, and then action, delete snapshots, and you are good to go.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 95:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, you can leave the pipeline running because while this is a manual pipeline, so it's not going to run on its own.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 96:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/271_EC2 Image Builder - Troubleshooting.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So here is a quick lecture on EC2 Image Builder troubleshooting.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: So in case you have a EC2 Image Builder but then you get Access Denied Status 403 on an S3 bucket, then the reasons may be that the Instance Profile attached to your EC2 Image Builder doesn't have the required permission or that it's missing the permissions to actually perform logging into Amazon S3.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 3:
- Concepts: Workload Platform Security
- Services: Amazon ECR, EC2 Image Builder
- Key Insights: So the resolution of this is to make sure you have the proper IAM role and you have some managed policies that you can come up within IAM, such as the Amazon SSM Manage Instance Core, the EC2 Instance Profile for Image Builder, and the one that's the EC2 instance profile for Image Builder with ECR Container Builds in case you decide to create containers.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: EC2 Image Builder
- Key Insights: Then you can also make sure that you can add a policy to your Instance Profile Role that grants put object permissions to write to your S3 bucket because this is where all the logs are going to be included and that's necessary for EC2 Image Builder to work properly.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/272_Redshift Security.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon Redshift
- Key Insights: So now let's talk about Amazon Redshift security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Amazon Redshift
- Key Insights: And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Amazon Redshift
- Key Insights: So for example, a superuser is the admin user, which is created automatically when you launch the Redshift cluster.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: To create superusers, you must be a superuser.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we have users.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Users can only be created and dropped by a superuser and users can own databases and database objects such as tables.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the users can be granted permissions on these objects and they can also grant permission to other database users, groups, and schemas.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The users will be granted permissions in two ways, either explicitly by having those permissions directly assigned to the account to the user, or implicitly, by being member of a group that is granted permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this should be of no surprise and everything should make sense so far.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we have groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So a group is a collection of users that can be collectively assigned permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's very good once you want to have streamlined security maintenance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You have databases.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: A database is a collection of one or more schema.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so when a user creates a database, the user becomes the owner of the database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The superusers though, will have also rights on the database because they are admins.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then what is schema?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: A schema is a collection of database tables and other database objects.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So schema is used to group these objects under a common name and then users can be granted access to a single schema or multiple schemas.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: Amazon Redshift
- Key Insights: So if we have a look, again as a diagram, we have the superusers of our Redshift cluster.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have several users that can be separated or grouped together.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we have databases that can be created by users that will be the owner of this database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And within it we have schemas and in schemas you may have tables and other things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So hopefully this diagram makes sense and puts everything in perspective.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, how do we do authorization within the database in database security?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the users commonly use a login to login into your database.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's a username and a password.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you also have the option to not use this and instead to use IAM credentials to allow users to connect to your database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Workload Platform Security
- Services: Amazon RDS
- Key Insights: So very similar to RDS, there is a GetClusterCredentials API operations to obtain temporary database user credentials.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if a user has proper IAM permissions, then they can login as an existing database user and then you'll get a temporary username and password.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: Amazon Redshift
- Key Insights: And so we'll get the credentials, we'll get the temporary credentials out of it, and then we can connect to our Redshift cluster.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is to simplify security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then once you have temporary user credentials for an existing database user, we can choose to disable the user's password to force log in using the temporary password and therefore force IAM security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And alternatively, if you don't have the user that already exists, you can use the GetClusterCredentials Autocreate option to create a new user database every time you connect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If you want to create a read only user, you would add this user to a group that has read only privileges for the specified schema of your database.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But you still need to initially specify all of the schema names and then modify the group for any new schemas you may create.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: Amazon Redshift
- Key Insights: So that's it for Redshift permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense and that may be one question at the exam maybe.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I don't wanna spend too much time on it but I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/09_Other Services/273_DynamoDB - Time To Live (TTL).txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: So now let's talk about Time To Live, or TTL, in DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's a feature that allows you to automatically delete items after an expired timestamp.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this timestamp must be an attribute from within the item, and it should be a number.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that number represents a timestamp in Unix Epoch format.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so what happens is that whenever the current time goes over that number, then the item will be marked for expiration and then deleted within a few days after expiration.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here we have an example of a session data table where we have User_ID and Session_ID as attributes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we've created an extra attribute called ExpTime for expiration time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so we enter some data there, and this data is representing a timestamp in the Unix Epoch format.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So over time, the current time will be evaluated and the Epoch timestamp of course, is going to increase of the current time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so at some point the table will be scanned and for each items where the expired time column is less than the current Epoch time, then the items will be marked for expiration.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then there will be a second process, a deletion process that's going to scan the table again and delete the items that have been marked for expiration.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this Time To Live feature is really great and has a few use cases.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This kind of things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this can come up in one question in the exam.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

## Step 2 — Consolidation

### 1. Concepts List
- Data Plane Hardening
- Governance as Code
- Governance/Platform Operational Context
- Operational Assurance
- Resilience and Recovery
- Workload Platform Security

### 2. Services List
- API Gateway
- AWS Glue
- AWS Lambda
- AWS Signer
- AWS Verified Access
- Amazon DynamoDB
- Amazon EBS
- Amazon ECR
- Amazon ECS
- Amazon EKS
- Amazon RDS
- Amazon Redshift
- Amazon WorkSpaces
- CloudFormation
- EC2 Image Builder
- Elastic Load Balancing

### 3. Features List
- encryption
- runtime

### 4. Use Cases
- 116_[SAA_DVA] API Gateway.txt:21: So lots of features that come with the API Gateway that are not necessarily included when you use something as simple as an application load balancer.
- 116_[SAA_DVA] API Gateway.txt:27: So it could be, for example, an HTTP API you have on premises, or it could be an application load balancer you have on your cloud environment.
- 116_[SAA_DVA] API Gateway.txt:32: So which ones, for example, where we can start a Step Function workflow, we can post a message to SQS directly from an API Gateway API.
- 116_[SAA_DVA] API Gateway.txt:42: Then Kinesis Data Stream from there, we can, for example, send the records into a Kinesis Data Firehose and eventually put them into an Amazon S3 bucket in the JSON format.
- 116_[SAA_DVA] API Gateway.txt:53: So this is when we don't want to use CloudFront Edge locations.
- 116_[SAA_DVA] API Gateway.txt:54: So it's when we expect all our users to be within the same region where we created our API Gateway.
- 116_[SAA_DVA] API Gateway.txt:64: So this is very helpful if you have internal applications, for example, running on EC2 instances, and they want to access an API on API Gateway, they can just use IAM roles.
- 116_[SAA_DVA] API Gateway.txt:65: If you wanted to have external users, for example, for mobile applications or web applications, then you would use something called Amazon Cognito.
- 117_[SAA_DVA] API Gateway - Hands On.txt:7: So when you build an API, a REST API you have several options.
- 117_[SAA_DVA] API Gateway - Hands On.txt:49: So for example, I can create a test event called DemoTest.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:82: On top of it from the test, we can have a look at the execution log from the API gateway, which is really nice, which is also when you wanna debug and see what's happening.
- 117_[SAA_DVA] API Gateway - Hands On.txt:93: So some information you have in here, for example, the resource which is slash, the path slash, the method which is GET, and then you get headers and then you get query string parameters and so on.
- 117_[SAA_DVA] API Gateway - Hands On.txt:127: And as you can see when I go to /dev, it says hello from Lambda.
- 118_API Gateway - Advanced.txt:10: For example, an account A with an EC2 instance in a private subnet.
- 251_[SAA_DVA] Elastic Container Registry (ECR).txt:9: And for example, an EC2 instance on your ECS cluster may want to pull these images.
- 252_ECR Security.txt:8: This is when you delete the repo.
- 252_ECR Security.txt:10: What is new to you, for example, is the fact that you can only enable the KMS encryption at the Repository Creation type.
- 252_ECR Security.txt:14: And you can configure your repository to either scan on push whenever you push an image to your repo or to just scan manually when you prefer.
- 252_ECR Security.txt:19: And whenever Inspector has heard of new vulnerabilities, it's going to scan again, your images.
- 252_ECR Security.txt:22: And so for example, if you specify *prod*, that means you're going to match anything that has prod in the repo name and then scanning will be automatically enabled for these repos.
- 252_ECR Security.txt:27: So the way it works that when you do a login from account B to get a Docker login, please make sure to reference the first account as the URL to authenticate.
- 253_ECS Secret Management.txt:4: So either you have, for example, a secret such as the database password in Secrets Manager and a parameter such as an API key in the Parameter Store, they can both be referenced from your ECS container definition and then your ECS task at boot time will be pulling these secrets and inject them as environment variables.
- 255_Lambda Security.txt:3: And the simple managed policies for Lambda you have is, for example, the AWSLambdaBasicExecutionRole.
- 255_Lambda Security.txt:11: So what you have to think about is that when you deploy a Lambda function, you need to understand, what is this Lambda function interacting with?
- 255_Lambda Security.txt:20: So when do we need this?
- 255_Lambda Security.txt:21: Well, when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- 256_[DVA] Lambda in VPC.txt:22: And so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- 257_[DVA] Lambda in VPC - Hands On.txt:15: Now, there is a warning sign here, which says that when you connect a function to a VPC in your account, which we are doing right now, it does not have access to the internet unless you provide your VPC access which means that it needs to be in a private subnets and you need to route the outbound traffic to that gateway in a public subnet.
- 257_[DVA] Lambda in VPC - Hands On.txt:21: And when you deploy a Lambda function within the VPC usually is to do some local operations for example, on your RDS database or your elastic cache cluster.
- 257_[DVA] Lambda in VPC - Hands On.txt:28: Yes, because when you create a Lambda function in a VPC then to be able to run, it needs to have network interfaces and now they belong to you and to your VPC.
- 257_[DVA] Lambda in VPC - Hands On.txt:39: So by the way, when you create a Lambda function in the VPC it can take a little bit of time to be updating and starting at first.
- 257_[DVA] Lambda in VPC - Hands On.txt:50: So you can imagine having these ENIs and the security group, having the necessary rules to access an RDS database or an elastic cache cluster, for example.
- 258_[DVA] Lambda Function URL.txt:33: When these things are both in place, then security works and the IAM role can use the Lambda function URL of account A.
- 259_[DVA] Lambda Function URL - Hands On.txt:30: Other things to note is that if I, for example, go back to my Lambda function, so I go back to my Lambda Function and I'm going to look at Aliases right here.
- 260_AWS Signer.txt:16: So once you, for example, want to revoke a trust on someone or something, you can revoke the signature of a Lambda deployment package to invalidate it, and then Lambda will fail the signature checks and then it will not run this code.
- 261_AWS Verified Access.txt:5: That means that instead of just relying on network security, for example, a VPN, which will be network security, instead we use the normal internet, but we will verify the user identity, as well as the device the user is using, continuously, for every request.
- 262_[SAA] Glue Overview.txt:4: So this is a fully serverless service and you're just going to submit whatever you want and it will achieve it, for example, say you had data in an S3 bucket or an Amazon RDS database and you wanted to load this into a Redshift data warehouse.
- 262_[SAA] Glue Overview.txt:11: Because, well, the Parquet format is a columnar data format and therefore it is much better when in use, for example, with services like Athena.
- 262_[SAA] Glue Overview.txt:12: So say for example that you are doing inserts into your S3 buckets and then these files are in the CSV formats.
- 262_[SAA] Glue Overview.txt:15: And when in Parquet format, then Amazon Athena is going to analyze this file in a much better fashion.
- 262_[SAA] Glue Overview.txt:20: So the Glue Data Catalog will run Glue data crawlers and they will be connected to various data sources such as Amazon S3, Amazon RDS, Amazon DynamoDB, or a compatible JDBC database that you own on premises, for example.
- 262_[SAA] Glue Overview.txt:23: Now also, when you use Amazon Athena behind the scenes to do the data discovery and the schema discovery, Amazon Athena is going to be leveraging the AWS Glue Data Catalog.
- 263_Glue Security.txt:6: This is when you attach a resource such as, very similar to an S3 bucket policy.
- 264_[CCP] Amazon WorkSpaces.txt:10: So if you have, for example, two corporate offices in California and Paris and uses there, the best practice is to deploy workspaces as close as possible to your users, so you would deploy maybe one workspace, in the U.S.
- 266_ASG Instance Refresh.txt:12: For example, we say, 50% of minimum healthy percentage, which is going to take down a few EC2 instances, and over time, create new ones with the new launch templates.
- 269_[CCP_SOA] EC2 Image Builder.txt:7: So we have the EC2 Image Builder service and it is automatically, when it's going to run, it is going to create an EC2 instance called a Builder EC2 instance, and that EC2 instance is going to build components and customize the software, for example, install Java, update the CLI, update the software system, maybe install firewalls, whatever you define to happen on that EC2 instance, maybe install your application.
- 269_[CCP_SOA] EC2 Image Builder.txt:17: So you can define a weekly schedule or you can say you can run whenever packages are updated or you can run it manually, et cetera, et cetera.
- 269_[CCP_SOA] EC2 Image Builder.txt:20: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- 270_[SOA] EC2 Image Builder Hands On.txt:19: So we can apply the build components that are pre-created by AWS, for example, if we wanted to have Java on our image and our AMI, currently, there is no Java on Amazon Linux 2, but if you select amazon-corretto-11-headless, then you would have Java 11 being installed on your AMI, so great.
- 270_[SOA] EC2 Image Builder Hands On.txt:21: And it is possible for you to really create your own build component if you wanted to, if you wanted to customize and install your own application, for example.
- 270_[SOA] EC2 Image Builder Hands On.txt:40: So I'm creating this role manually because when I did create it automatically, it wasn't correctly working, so I wanna make sure this is done correctly.
- 270_[SOA] EC2 Image Builder Hands On.txt:51: But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.
- 270_[SOA] EC2 Image Builder Hands On.txt:61: So this instance was created by EC2 Image Builder, and you can verify it by going into tags, for example.
- 270_[SOA] EC2 Image Builder Hands On.txt:69: And the AMI name is MyDemoRecipe, and contains the timestamp of when it was created.
- 272_Redshift Security.txt:2: And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- 272_Redshift Security.txt:3: So for example, a superuser is the admin user, which is created automatically when you launch the Redshift cluster.
- 272_Redshift Security.txt:15: And so when a user creates a database, the user becomes the owner of the database.
- 273_DynamoDB - Time To Live (TTL).txt:5: And so what happens is that whenever the current time goes over that number, then the item will be marked for expiration and then deleted within a few days after expiration.
- 273_DynamoDB - Time To Live (TTL).txt:12: So this Time To Live feature is really great and has a few use cases.
- 273_DynamoDB - Time To Live (TTL).txt:13: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.

### 5. Constraints / Limitations
- 116_[SAA_DVA] API Gateway.txt:29: Well, you would use an API Gateway to leverage the rate limiting features, the caching, the user authentication, the API keys, et cetera.
- 116_[SAA_DVA] API Gateway.txt:51: Your API Gateway is still only in one region where you created it, but it's accessible efficiently from every CloudFormation Edge location.
- 116_[SAA_DVA] API Gateway.txt:58: So a private API Gateway can only be accessed from within your VPC.
- 116_[SAA_DVA] API Gateway.txt:69: And so that certificate, if you're using an Edge-Optimized endpoint must be in us-east-1 but if you're using a regional endpoint then that certificate may be in the same region as the API Gateway stage.
- 116_[SAA_DVA] API Gateway.txt:70: Finally, you must set up, of course, a CNAME or an A-alias record in Route 53 to point to your domain and API Gateway.
- 117_[SAA_DVA] API Gateway - Hands On.txt:3: So we have HTTP, APIs, we have WebSocket API, REST API, which are public or private, and so as such, we will only deal with a REST API for now.
- 117_[SAA_DVA] API Gateway - Hands On.txt:36: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:88: So if we go to the CloudWatch logs we should be able to find it.
- 118_API Gateway - Advanced.txt:7: The second way of course as I told you, is that if you have a private API then you must use a VPC interface endpoint to access it.
- 118_API Gateway - Advanced.txt:8: You can not access it without a VPC interface endpoint and here using a resource policy we can define that the private API must only be accessed through a specific VPC interface endpoint.
- 118_API Gateway - Advanced.txt:17: So that we're saying, Hey, the only way to access it is through the VPC endpoint that is deployed in account A.
- 118_API Gateway - Advanced.txt:18: Therefore we can deploy a private API in account B and then thanks to the resource policy, only guarantee that the account A through the VPC endpoint of account A can access it.
- 118_API Gateway - Advanced.txt:22: So you have account limits and the idea is that the API Gateway is going to throttle your request at 10,000 request per second across all your API's.
- 118_API Gateway - Advanced.txt:23: You can increase these sub limits upon request but in case you see some throttling, you're going to get a retriable error of HTP code 429 called; too many requests.
- 118_API Gateway - Advanced.txt:24: You can also decide to set stage limits and method limits to improve the performance and spread out the request across all your API's.
- 118_API Gateway - Advanced.txt:26: Just remember, that one API Gateway that is overloaded and not limited can cause all the other API's deployed within the API Gateway to be throttled.
- 251_[SAA_DVA] Elastic Container Registry (ECR).txt:15: So overall, anytime you see storing Docker images think ECR and that should be it for you at the exam.
- 252_ECR Security.txt:4: And you can only enable the encryption at the Repository Creation.
- 252_ECR Security.txt:9: So this should make sense by now.
- 252_ECR Security.txt:10: What is new to you, for example, is the fact that you can only enable the KMS encryption at the Repository Creation type.
- 252_ECR Security.txt:35: You need to get a new one for it, or this Docker login was successfully issued, but then you don't have the necessary IAM permissions to push or pull or we have an authentication token and it has expired because it's only valid for 12 hours.
- 253_ECS Secret Management.txt:5: Of course, it must have the correct IAM permissions to Secrets Manager, to the Parameter Store, and also to the underlying KMS key that allowed these secrets to be encrypted.
- 254_EKS Concepts.txt:4: It cannot be changed, and then it will be lost.
- 254_EKS Concepts.txt:5: So to keep history beyond these 60 minutes, you must send all these events into CloudWatch Logs, and that is possible.
- 255_Lambda Security.txt:15: The best practice is to create one Lambda execution role per function.
- 255_Lambda Security.txt:24: And so the execution role must contain, number one, the CreateLogGroup permission to actually create the target log group.
- 256_[DVA] Lambda in VPC.txt:3: And therefore, it cannot access resources that belong in your VPC.
- 256_[DVA] Lambda in VPC.txt:10: But if we have our own VPC and our own private subnet and we have a private RDS within it, then Lambda cannot access RDS.
- 256_[DVA] Lambda in VPC.txt:14: So for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- 257_[DVA] Lambda in VPC - Hands On.txt:16: This is the only way of doing it.
- 257_[DVA] Lambda in VPC - Hands On.txt:40: This is because a few things that should be set up by AWS but then the performance of your Lambda function should be okay.
- 258_[DVA] Lambda Function URL.txt:6: Now, this function URL can only be accessed through the public internet only.
- 258_[DVA] Lambda Function URL.txt:10: This can be applied to any function alias or to your latest version of your function but you cannot apply it to specific function versions.
- 258_[DVA] Lambda Function URL.txt:12: And if you need throttling because you want your Lambda function to only run up to a specific amount, you can use the reserved concurrency feature of Lambda to control how much a Lambda function can run.
- 258_[DVA] Lambda Function URL.txt:16: So if you call your Lambda function URL from a different domain, then you must have CORS security in place.
- 258_[DVA] Lambda Function URL.txt:23: And so you must grant public access as the resource policy.
- 258_[DVA] Lambda Function URL.txt:32: The IAM role of account B must also have an identity-based policy that allows to invoke the Lambda function URL of the other accounts.
- 259_[DVA] Lambda Function URL - Hands On.txt:12: And now what we should do is that we create an alias and we create this alias, and I'll call this one, dev and let's save this.
- 259_[DVA] Lambda Function URL - Hands On.txt:31: So I am on version 1 and if I click on version 1 and I try to go to Function URL, as you can see, it says you can only add a Function URL to unpublished function versions or an alias.
- 260_AWS Signer.txt:10: The way it works is that before we upload packages to Lambda we digitally sign them, and then this will enforce that only trusted code that had been signed from us will be executed on our Lambda functions.
- 260_AWS Signer.txt:11: This is only supported for Lambda as code but not for Container Lambda functions.
- 260_AWS Signer.txt:12: So once this code is signed, as I said, you can deploy it on Lambda, and you have the guarantee that Lambda only run trust code, trusted code, which is very important for enterprises.
- 260_AWS Signer.txt:18: And this is only something you should use in critical scenarios, because this is an irreversible type of operation.
- 261_AWS Verified Access.txt:20: Finally, as a note, you should know that AWS Verified Access can send traffic either to an application balancer or any elastic network interface.
- 262_[SAA] Glue Overview.txt:2: So Glue is a managed extract, transform and load service, also called commonly ETL service.
- 262_[SAA] Glue Overview.txt:26: So other features that can appear at the exam on Glue and that you should know at a high level.
- 262_[SAA] Glue Overview.txt:29: So this is very important and it can come up in the exam.
- 263_Glue Security.txt:17: So the S3 bucket policy also must have security in place.
- 264_[CCP] Amazon WorkSpaces.txt:6: It's secured because it's integrated with KMS, and it's pay as you go service, so you only pay for the usage of these actual desktops.
- 264_[CCP] Amazon WorkSpaces.txt:10: So if you have, for example, two corporate offices in California and Paris and uses there, the best practice is to deploy workspaces as close as possible to your users, so you would deploy maybe one workspace, in the U.S.
- 265_Amazon Workspaces - Security.txt:9: So we manage which client devices can access WorkSpaces and we can use WorkSpaces certificates based authentication to limit access to only trusted devices using digital certificates and this works for Windows, MacOS and Android clients.
- 266_ASG Instance Refresh.txt:15: And after a while, you'll have a full Auto Scaling group that only has EC2 instances that are using the new launch templates.
- 269_[CCP_SOA] EC2 Image Builder.txt:18: And it is a free service, so you're only going to pay for the underlying resources.
- 269_[CCP_SOA] EC2 Image Builder.txt:20: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- 270_[SOA] EC2 Image Builder Hands On.txt:6: And we can also say that you should run at the scheduled time only if there are dependency updates, these kind of things, or just run every time based on schedule.
- 270_[SOA] EC2 Image Builder Hands On.txt:20: And if you go to the next page, there's another thing I want to install which is aws-cli-version-2-linux, so currently only version 1 is installed onto my AMI, but if I wanted to upgrade it to version 2 then I could select this build component.
- 270_[SOA] EC2 Image Builder Hands On.txt:48: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- 270_[SOA] EC2 Image Builder Hands On.txt:59: Okay, so my instance is now in the building stage, and so that means that if I go into the EC2 service, I should start seeing an EC2 instance.
- 270_[SOA] EC2 Image Builder Hands On.txt:77: So if we look at it, right now we only distribute to one region, which is eu-west-2, which is where the AMI was created, so nothing much is going to happen.
- 271_EC2 Image Builder - Troubleshooting.txt:2: So in case you have a EC2 Image Builder but then you get Access Denied Status 403 on an S3 bucket, then the reasons may be that the Instance Profile attached to your EC2 Image Builder doesn't have the required permission or that it's missing the permissions to actually perform logging into Amazon S3.
- 272_Redshift Security.txt:4: To create superusers, you must be a superuser.
- 272_Redshift Security.txt:6: Users can only be created and dropped by a superuser and users can own databases and database objects such as tables.
- 272_Redshift Security.txt:9: So this should be of no surprise and everything should make sense so far.
- 272_Redshift Security.txt:26: So the users commonly use a login to login into your database.
- 272_Redshift Security.txt:35: If you want to create a read only user, you would add this user to a group that has read only privileges for the specified schema of your database.
- 273_DynamoDB - Time To Live (TTL).txt:3: And this timestamp must be an attribute from within the item, and it should be a number.
- 273_DynamoDB - Time To Live (TTL).txt:13: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.

### 6. Patterns / Architectures
- 117_[SAA_DVA] API Gateway - Hands On.txt:36: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- 270_[SOA] EC2 Image Builder Hands On.txt:3: So I'm into the service, we can get started, we can create an image pipeline.
- 270_[SOA] EC2 Image Builder Hands On.txt:4: And so here's our first pipeline, we'll call it my demo pipeline, and then we have the option to create a build schedule.
- 270_[SOA] EC2 Image Builder Hands On.txt:48: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- 270_[SOA] EC2 Image Builder Hands On.txt:53: Everything does look good to me, and I will click on create pipeline.
- 270_[SOA] EC2 Image Builder Hands On.txt:55: Now, let's click on our pipeline, MyDemoPipeline, and I'm going to do action, and run pipeline, and this is going to start an execution.
- 270_[SOA] EC2 Image Builder Hands On.txt:95: Okay, you can leave the pipeline running because while this is a manual pipeline, so it's not going to run on its own.

## Step 3 — Deep Expansion (Core Governance and Platform Security Concepts)

### Platform Service Security
- What it is: Service-specific security controls for compute, container, API, and data platforms.
- Why it exists: Each runtime has distinct attack surfaces and operational trust boundaries.
- Internal working: Identity, network, image/package, runtime, and logging controls compose defense-in-depth.
- Architecture: Build -> deploy -> runtime operation with signed artifacts and constrained execution paths.
- Key components: Image signing/scanning, runtime isolation, least-privilege IAM, network boundaries, audit logs.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Continuous config compliance | AWS Config + conformance packs | Azure Policy + Defender for Cloud | Organization Policy + Config Validator / SCC posture |
| IaC governance and drift control | CloudFormation + Guard + Drift | ARM/Bicep + Policy + What-If | Deployment Manager/Terraform + policy controls |
| Backup orchestration | AWS Backup | Azure Backup | Backup and DR services |
| Confidential compute | Nitro Enclaves | Azure Confidential Computing | Confidential VM / Confidential GKE |
| Container platform security | ECR/ECS/EKS controls | ACR/AKS security stack | Artifact Registry/GKE security stack |
| Serverless/API security | Lambda + API Gateway controls | Functions + API Management controls | Cloud Functions/Run + API Gateway controls |

### Trade-offs and Decision Notes
- AWS offers strong account-native governance primitives with deep service integrations.
- Azure excels in enterprise policy inheritance and integrated posture tooling.
- GCP often favors policy-as-code and centralized analytics-centric governance workflows.
- Multi-cloud governance should standardize control objectives, then map to provider-native enforcement mechanisms.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Control objectives and policy baseline concepts for governance and platform hardening.
- Mapping preventive, detective, and corrective controls across service layers.

### Phase 2 — Core Services
- Implement continuous compliance, backup/recovery, and workload-specific hardening controls.
- Integrate IaC and service operation pipelines with security guardrails.

### Phase 3 — Advanced Patterns
- Organization-wide compliance aggregation and automated remediation workflows.
- Service-specific security reference architectures for container/serverless/data platforms.

### Phase 4 — System Design
- Enterprise platform-security architecture with policy-as-code, auditability, and resilience by default.
- Scaling considerations: policy explosion, exception governance, and control drift management.
- Cost considerations: compliance scan volume, backup storage lifecycle, and platform security operations overhead.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Data Plane Hardening
- Governance as Code
- Governance/Platform Operational Context
- Operational Assurance
- Resilience and Recovery
- Workload Platform Security

### Services (Deduped)
- API Gateway
- AWS Glue
- AWS Lambda
- AWS Signer
- AWS Verified Access
- Amazon DynamoDB
- Amazon EBS
- Amazon ECR
- Amazon ECS
- Amazon EKS
- Amazon RDS
- Amazon Redshift
- Amazon WorkSpaces
- CloudFormation
- EC2 Image Builder
- Elastic Load Balancing

### Features (Deduped)
- encryption
- runtime

### Use Cases (Deduped)
- 116_[SAA_DVA] API Gateway.txt:21: So lots of features that come with the API Gateway that are not necessarily included when you use something as simple as an application load balancer.
- 116_[SAA_DVA] API Gateway.txt:27: So it could be, for example, an HTTP API you have on premises, or it could be an application load balancer you have on your cloud environment.
- 116_[SAA_DVA] API Gateway.txt:32: So which ones, for example, where we can start a Step Function workflow, we can post a message to SQS directly from an API Gateway API.
- 116_[SAA_DVA] API Gateway.txt:42: Then Kinesis Data Stream from there, we can, for example, send the records into a Kinesis Data Firehose and eventually put them into an Amazon S3 bucket in the JSON format.
- 116_[SAA_DVA] API Gateway.txt:53: So this is when we don't want to use CloudFront Edge locations.
- 116_[SAA_DVA] API Gateway.txt:54: So it's when we expect all our users to be within the same region where we created our API Gateway.
- 116_[SAA_DVA] API Gateway.txt:64: So this is very helpful if you have internal applications, for example, running on EC2 instances, and they want to access an API on API Gateway, they can just use IAM roles.
- 116_[SAA_DVA] API Gateway.txt:65: If you wanted to have external users, for example, for mobile applications or web applications, then you would use something called Amazon Cognito.
- 117_[SAA_DVA] API Gateway - Hands On.txt:7: So when you build an API, a REST API you have several options.
- 117_[SAA_DVA] API Gateway - Hands On.txt:49: So for example, I can create a test event called DemoTest.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:82: On top of it from the test, we can have a look at the execution log from the API gateway, which is really nice, which is also when you wanna debug and see what's happening.
- 117_[SAA_DVA] API Gateway - Hands On.txt:93: So some information you have in here, for example, the resource which is slash, the path slash, the method which is GET, and then you get headers and then you get query string parameters and so on.
- 117_[SAA_DVA] API Gateway - Hands On.txt:127: And as you can see when I go to /dev, it says hello from Lambda.
- 118_API Gateway - Advanced.txt:10: For example, an account A with an EC2 instance in a private subnet.
- 251_[SAA_DVA] Elastic Container Registry (ECR).txt:9: And for example, an EC2 instance on your ECS cluster may want to pull these images.
- 252_ECR Security.txt:8: This is when you delete the repo.
- 252_ECR Security.txt:10: What is new to you, for example, is the fact that you can only enable the KMS encryption at the Repository Creation type.
- 252_ECR Security.txt:14: And you can configure your repository to either scan on push whenever you push an image to your repo or to just scan manually when you prefer.
- 252_ECR Security.txt:19: And whenever Inspector has heard of new vulnerabilities, it's going to scan again, your images.
- 252_ECR Security.txt:22: And so for example, if you specify *prod*, that means you're going to match anything that has prod in the repo name and then scanning will be automatically enabled for these repos.
- 252_ECR Security.txt:27: So the way it works that when you do a login from account B to get a Docker login, please make sure to reference the first account as the URL to authenticate.
- 253_ECS Secret Management.txt:4: So either you have, for example, a secret such as the database password in Secrets Manager and a parameter such as an API key in the Parameter Store, they can both be referenced from your ECS container definition and then your ECS task at boot time will be pulling these secrets and inject them as environment variables.
- 255_Lambda Security.txt:3: And the simple managed policies for Lambda you have is, for example, the AWSLambdaBasicExecutionRole.
- 255_Lambda Security.txt:11: So what you have to think about is that when you deploy a Lambda function, you need to understand, what is this Lambda function interacting with?
- 255_Lambda Security.txt:20: So when do we need this?
- 255_Lambda Security.txt:21: Well, when you have a service, like Amazon S3, that will invoke your Lambda function based on S3 events, then you need to use a resource-based policy to give it access.
- 256_[DVA] Lambda in VPC.txt:22: And so for this to work, we need to make sure that the RDS security group does allow network access from the Lambda security group, just like for EC2 instances and load down search, for example.
- 257_[DVA] Lambda in VPC - Hands On.txt:15: Now, there is a warning sign here, which says that when you connect a function to a VPC in your account, which we are doing right now, it does not have access to the internet unless you provide your VPC access which means that it needs to be in a private subnets and you need to route the outbound traffic to that gateway in a public subnet.
- 257_[DVA] Lambda in VPC - Hands On.txt:21: And when you deploy a Lambda function within the VPC usually is to do some local operations for example, on your RDS database or your elastic cache cluster.
- 257_[DVA] Lambda in VPC - Hands On.txt:28: Yes, because when you create a Lambda function in a VPC then to be able to run, it needs to have network interfaces and now they belong to you and to your VPC.
- 257_[DVA] Lambda in VPC - Hands On.txt:39: So by the way, when you create a Lambda function in the VPC it can take a little bit of time to be updating and starting at first.
- 257_[DVA] Lambda in VPC - Hands On.txt:50: So you can imagine having these ENIs and the security group, having the necessary rules to access an RDS database or an elastic cache cluster, for example.
- 258_[DVA] Lambda Function URL.txt:33: When these things are both in place, then security works and the IAM role can use the Lambda function URL of account A.
- 259_[DVA] Lambda Function URL - Hands On.txt:30: Other things to note is that if I, for example, go back to my Lambda function, so I go back to my Lambda Function and I'm going to look at Aliases right here.
- 260_AWS Signer.txt:16: So once you, for example, want to revoke a trust on someone or something, you can revoke the signature of a Lambda deployment package to invalidate it, and then Lambda will fail the signature checks and then it will not run this code.
- 261_AWS Verified Access.txt:5: That means that instead of just relying on network security, for example, a VPN, which will be network security, instead we use the normal internet, but we will verify the user identity, as well as the device the user is using, continuously, for every request.
- 262_[SAA] Glue Overview.txt:4: So this is a fully serverless service and you're just going to submit whatever you want and it will achieve it, for example, say you had data in an S3 bucket or an Amazon RDS database and you wanted to load this into a Redshift data warehouse.
- 262_[SAA] Glue Overview.txt:11: Because, well, the Parquet format is a columnar data format and therefore it is much better when in use, for example, with services like Athena.
- 262_[SAA] Glue Overview.txt:12: So say for example that you are doing inserts into your S3 buckets and then these files are in the CSV formats.
- 262_[SAA] Glue Overview.txt:15: And when in Parquet format, then Amazon Athena is going to analyze this file in a much better fashion.
- 262_[SAA] Glue Overview.txt:20: So the Glue Data Catalog will run Glue data crawlers and they will be connected to various data sources such as Amazon S3, Amazon RDS, Amazon DynamoDB, or a compatible JDBC database that you own on premises, for example.
- 262_[SAA] Glue Overview.txt:23: Now also, when you use Amazon Athena behind the scenes to do the data discovery and the schema discovery, Amazon Athena is going to be leveraging the AWS Glue Data Catalog.
- 263_Glue Security.txt:6: This is when you attach a resource such as, very similar to an S3 bucket policy.
- 264_[CCP] Amazon WorkSpaces.txt:10: So if you have, for example, two corporate offices in California and Paris and uses there, the best practice is to deploy workspaces as close as possible to your users, so you would deploy maybe one workspace, in the U.S.
- 266_ASG Instance Refresh.txt:12: For example, we say, 50% of minimum healthy percentage, which is going to take down a few EC2 instances, and over time, create new ones with the new launch templates.
- 269_[CCP_SOA] EC2 Image Builder.txt:7: So we have the EC2 Image Builder service and it is automatically, when it's going to run, it is going to create an EC2 instance called a Builder EC2 instance, and that EC2 instance is going to build components and customize the software, for example, install Java, update the CLI, update the software system, maybe install firewalls, whatever you define to happen on that EC2 instance, maybe install your application.
- 269_[CCP_SOA] EC2 Image Builder.txt:17: So you can define a weekly schedule or you can say you can run whenever packages are updated or you can run it manually, et cetera, et cetera.
- 269_[CCP_SOA] EC2 Image Builder.txt:20: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- 270_[SOA] EC2 Image Builder Hands On.txt:19: So we can apply the build components that are pre-created by AWS, for example, if we wanted to have Java on our image and our AMI, currently, there is no Java on Amazon Linux 2, but if you select amazon-corretto-11-headless, then you would have Java 11 being installed on your AMI, so great.
- 270_[SOA] EC2 Image Builder Hands On.txt:21: And it is possible for you to really create your own build component if you wanted to, if you wanted to customize and install your own application, for example.
- 270_[SOA] EC2 Image Builder Hands On.txt:40: So I'm creating this role manually because when I did create it automatically, it wasn't correctly working, so I wanna make sure this is done correctly.
- 270_[SOA] EC2 Image Builder Hands On.txt:51: But you could create a new distribution setting, and in here you can set up region 1, but also set up region 2, and region 3, for example, if you wanted to distribute your AMI to different regions automatically, which is really, really handy, but for this hands-on, we'll just use a service defaults, and have the AMI in one region.
- 270_[SOA] EC2 Image Builder Hands On.txt:61: So this instance was created by EC2 Image Builder, and you can verify it by going into tags, for example.
- 270_[SOA] EC2 Image Builder Hands On.txt:69: And the AMI name is MyDemoRecipe, and contains the timestamp of when it was created.
- 272_Redshift Security.txt:2: And first, when you talk about the database hierarchy, so we have superusers in Redshift and they have the same permissions as the database owners for all databases.
- 272_Redshift Security.txt:3: So for example, a superuser is the admin user, which is created automatically when you launch the Redshift cluster.
- 272_Redshift Security.txt:15: And so when a user creates a database, the user becomes the owner of the database.
- 273_DynamoDB - Time To Live (TTL).txt:5: And so what happens is that whenever the current time goes over that number, then the item will be marked for expiration and then deleted within a few days after expiration.
- 273_DynamoDB - Time To Live (TTL).txt:12: So this Time To Live feature is really great and has a few use cases.
- 273_DynamoDB - Time To Live (TTL).txt:13: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.

### Constraints / Limitations (Deduped)
- 116_[SAA_DVA] API Gateway.txt:29: Well, you would use an API Gateway to leverage the rate limiting features, the caching, the user authentication, the API keys, et cetera.
- 116_[SAA_DVA] API Gateway.txt:51: Your API Gateway is still only in one region where you created it, but it's accessible efficiently from every CloudFormation Edge location.
- 116_[SAA_DVA] API Gateway.txt:58: So a private API Gateway can only be accessed from within your VPC.
- 116_[SAA_DVA] API Gateway.txt:69: And so that certificate, if you're using an Edge-Optimized endpoint must be in us-east-1 but if you're using a regional endpoint then that certificate may be in the same region as the API Gateway stage.
- 116_[SAA_DVA] API Gateway.txt:70: Finally, you must set up, of course, a CNAME or an A-alias record in Route 53 to point to your domain and API Gateway.
- 117_[SAA_DVA] API Gateway - Hands On.txt:3: So we have HTTP, APIs, we have WebSocket API, REST API, which are public or private, and so as such, we will only deal with a REST API for now.
- 117_[SAA_DVA] API Gateway - Hands On.txt:36: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:88: So if we go to the CloudWatch logs we should be able to find it.
- 118_API Gateway - Advanced.txt:7: The second way of course as I told you, is that if you have a private API then you must use a VPC interface endpoint to access it.
- 118_API Gateway - Advanced.txt:8: You can not access it without a VPC interface endpoint and here using a resource policy we can define that the private API must only be accessed through a specific VPC interface endpoint.
- 118_API Gateway - Advanced.txt:17: So that we're saying, Hey, the only way to access it is through the VPC endpoint that is deployed in account A.
- 118_API Gateway - Advanced.txt:18: Therefore we can deploy a private API in account B and then thanks to the resource policy, only guarantee that the account A through the VPC endpoint of account A can access it.
- 118_API Gateway - Advanced.txt:22: So you have account limits and the idea is that the API Gateway is going to throttle your request at 10,000 request per second across all your API's.
- 118_API Gateway - Advanced.txt:23: You can increase these sub limits upon request but in case you see some throttling, you're going to get a retriable error of HTP code 429 called; too many requests.
- 118_API Gateway - Advanced.txt:24: You can also decide to set stage limits and method limits to improve the performance and spread out the request across all your API's.
- 118_API Gateway - Advanced.txt:26: Just remember, that one API Gateway that is overloaded and not limited can cause all the other API's deployed within the API Gateway to be throttled.
- 251_[SAA_DVA] Elastic Container Registry (ECR).txt:15: So overall, anytime you see storing Docker images think ECR and that should be it for you at the exam.
- 252_ECR Security.txt:4: And you can only enable the encryption at the Repository Creation.
- 252_ECR Security.txt:9: So this should make sense by now.
- 252_ECR Security.txt:10: What is new to you, for example, is the fact that you can only enable the KMS encryption at the Repository Creation type.
- 252_ECR Security.txt:35: You need to get a new one for it, or this Docker login was successfully issued, but then you don't have the necessary IAM permissions to push or pull or we have an authentication token and it has expired because it's only valid for 12 hours.
- 253_ECS Secret Management.txt:5: Of course, it must have the correct IAM permissions to Secrets Manager, to the Parameter Store, and also to the underlying KMS key that allowed these secrets to be encrypted.
- 254_EKS Concepts.txt:4: It cannot be changed, and then it will be lost.
- 254_EKS Concepts.txt:5: So to keep history beyond these 60 minutes, you must send all these events into CloudWatch Logs, and that is possible.
- 255_Lambda Security.txt:15: The best practice is to create one Lambda execution role per function.
- 255_Lambda Security.txt:24: And so the execution role must contain, number one, the CreateLogGroup permission to actually create the target log group.
- 256_[DVA] Lambda in VPC.txt:3: And therefore, it cannot access resources that belong in your VPC.
- 256_[DVA] Lambda in VPC.txt:10: But if we have our own VPC and our own private subnet and we have a private RDS within it, then Lambda cannot access RDS.
- 256_[DVA] Lambda in VPC.txt:14: So for this, you must define your VPC ID, the subnets and you need to assign a security group to your Lambda function.
- 257_[DVA] Lambda in VPC - Hands On.txt:16: This is the only way of doing it.
- 257_[DVA] Lambda in VPC - Hands On.txt:40: This is because a few things that should be set up by AWS but then the performance of your Lambda function should be okay.
- 258_[DVA] Lambda Function URL.txt:6: Now, this function URL can only be accessed through the public internet only.
- 258_[DVA] Lambda Function URL.txt:10: This can be applied to any function alias or to your latest version of your function but you cannot apply it to specific function versions.
- 258_[DVA] Lambda Function URL.txt:12: And if you need throttling because you want your Lambda function to only run up to a specific amount, you can use the reserved concurrency feature of Lambda to control how much a Lambda function can run.
- 258_[DVA] Lambda Function URL.txt:16: So if you call your Lambda function URL from a different domain, then you must have CORS security in place.
- 258_[DVA] Lambda Function URL.txt:23: And so you must grant public access as the resource policy.
- 258_[DVA] Lambda Function URL.txt:32: The IAM role of account B must also have an identity-based policy that allows to invoke the Lambda function URL of the other accounts.
- 259_[DVA] Lambda Function URL - Hands On.txt:12: And now what we should do is that we create an alias and we create this alias, and I'll call this one, dev and let's save this.
- 259_[DVA] Lambda Function URL - Hands On.txt:31: So I am on version 1 and if I click on version 1 and I try to go to Function URL, as you can see, it says you can only add a Function URL to unpublished function versions or an alias.
- 260_AWS Signer.txt:10: The way it works is that before we upload packages to Lambda we digitally sign them, and then this will enforce that only trusted code that had been signed from us will be executed on our Lambda functions.
- 260_AWS Signer.txt:11: This is only supported for Lambda as code but not for Container Lambda functions.
- 260_AWS Signer.txt:12: So once this code is signed, as I said, you can deploy it on Lambda, and you have the guarantee that Lambda only run trust code, trusted code, which is very important for enterprises.
- 260_AWS Signer.txt:18: And this is only something you should use in critical scenarios, because this is an irreversible type of operation.
- 261_AWS Verified Access.txt:20: Finally, as a note, you should know that AWS Verified Access can send traffic either to an application balancer or any elastic network interface.
- 262_[SAA] Glue Overview.txt:2: So Glue is a managed extract, transform and load service, also called commonly ETL service.
- 262_[SAA] Glue Overview.txt:26: So other features that can appear at the exam on Glue and that you should know at a high level.
- 262_[SAA] Glue Overview.txt:29: So this is very important and it can come up in the exam.
- 263_Glue Security.txt:17: So the S3 bucket policy also must have security in place.
- 264_[CCP] Amazon WorkSpaces.txt:6: It's secured because it's integrated with KMS, and it's pay as you go service, so you only pay for the usage of these actual desktops.
- 264_[CCP] Amazon WorkSpaces.txt:10: So if you have, for example, two corporate offices in California and Paris and uses there, the best practice is to deploy workspaces as close as possible to your users, so you would deploy maybe one workspace, in the U.S.
- 265_Amazon Workspaces - Security.txt:9: So we manage which client devices can access WorkSpaces and we can use WorkSpaces certificates based authentication to limit access to only trusted devices using digital certificates and this works for Windows, MacOS and Android clients.
- 266_ASG Instance Refresh.txt:15: And after a while, you'll have a full Auto Scaling group that only has EC2 instances that are using the new launch templates.
- 269_[CCP_SOA] EC2 Image Builder.txt:18: And it is a free service, so you're only going to pay for the underlying resources.
- 269_[CCP_SOA] EC2 Image Builder.txt:20: Well, that means that if you create an EC2 instance during this process and EC2 Image Builder will create these EC2 instances, then you're going to pay for these EC2 instances and when the AMI is created and distributed, you're going to pay for the storage of that AMI wherever it has been created and wherever it has been distributed, but that should make sense, right?
- 270_[SOA] EC2 Image Builder Hands On.txt:6: And we can also say that you should run at the scheduled time only if there are dependency updates, these kind of things, or just run every time based on schedule.
- 270_[SOA] EC2 Image Builder Hands On.txt:20: And if you go to the next page, there's another thing I want to install which is aws-cli-version-2-linux, so currently only version 1 is installed onto my AMI, but if I wanted to upgrade it to version 2 then I could select this build component.
- 270_[SOA] EC2 Image Builder Hands On.txt:48: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- 270_[SOA] EC2 Image Builder Hands On.txt:59: Okay, so my instance is now in the building stage, and so that means that if I go into the EC2 service, I should start seeing an EC2 instance.
- 270_[SOA] EC2 Image Builder Hands On.txt:77: So if we look at it, right now we only distribute to one region, which is eu-west-2, which is where the AMI was created, so nothing much is going to happen.
- 271_EC2 Image Builder - Troubleshooting.txt:2: So in case you have a EC2 Image Builder but then you get Access Denied Status 403 on an S3 bucket, then the reasons may be that the Instance Profile attached to your EC2 Image Builder doesn't have the required permission or that it's missing the permissions to actually perform logging into Amazon S3.
- 272_Redshift Security.txt:4: To create superusers, you must be a superuser.
- 272_Redshift Security.txt:6: Users can only be created and dropped by a superuser and users can own databases and database objects such as tables.
- 272_Redshift Security.txt:9: So this should be of no surprise and everything should make sense so far.
- 272_Redshift Security.txt:26: So the users commonly use a login to login into your database.
- 272_Redshift Security.txt:35: If you want to create a read only user, you would add this user to a group that has read only privileges for the specified schema of your database.
- 273_DynamoDB - Time To Live (TTL).txt:3: And this timestamp must be an attribute from within the item, and it should be a number.
- 273_DynamoDB - Time To Live (TTL).txt:13: The first one would be to reduce stored data by only keeping current items or to adhere to regulatory obligations or to have security features and guarantees that, for example, no data can be older than 30 days in your table.

### Patterns / Architectures (Deduped)
- 117_[SAA_DVA] API Gateway - Hands On.txt:36: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- 270_[SOA] EC2 Image Builder Hands On.txt:3: So I'm into the service, we can get started, we can create an image pipeline.
- 270_[SOA] EC2 Image Builder Hands On.txt:4: And so here's our first pipeline, we'll call it my demo pipeline, and then we have the option to create a build schedule.
- 270_[SOA] EC2 Image Builder Hands On.txt:48: As you can see, the t2.micro only has the x86 architecture, it doesn't have the ARM64, and this is why we've selected an AMI that was x86, and not ARM64.
- 270_[SOA] EC2 Image Builder Hands On.txt:53: Everything does look good to me, and I will click on create pipeline.
- 270_[SOA] EC2 Image Builder Hands On.txt:55: Now, let's click on our pipeline, MyDemoPipeline, and I'm going to do action, and run pipeline, and this is going to start an execution.
- 270_[SOA] EC2 Image Builder Hands On.txt:95: Okay, you can leave the pipeline running because while this is a manual pipeline, so it's not going to run on its own.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: You can also create resource policies for your Lambda functions to give access to other accounts and services.
- Signal 2: Therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- Signal 3: So we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- Signal 4: So I'm into the service, we can get started, we can create an image pipeline.
- Signal 5: And here we have two options, we can create either an AMI out of the EC2 Image Builder service, or a Docker image, but for this instance, we'll use an AMI.
- Signal 6: And so, as we can see here, we can either create the infrastructure using service defaults, or create a new infrastructure configuration.
- Signal 7: Transcript signals that you can also create resource policies for your Lambda functions to give access to other accounts and services.
- Signal 8: Transcript signals that therefore once we've set it up correctly it will create an ENI, an elastic network interface, alongside the Lambda security group and to access your RDS database, Your Lambda is going to go through your ENI.
- Signal 9: Transcript signals that we'd create a VPC endpoint for DynamoDB as the VPC endpoint gateway, and Lambda function will be talking to the end point and accessing privately your DynamoDB service, which is great.
- Signal 10: Design implication: you can also create resource policies for your Lambda functions to give access to other accounts and services.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for Security controls for container, serverless, data, and platform services
- AWS console path: AWS Console -> IAM
- Azure equivalent: Microsoft Entra ID + RBAC
- GCP equivalent: Cloud IAM
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> IAM.
3. Build: Create a test user or role with least privilege.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Sign in or simulate policy permissions.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete the test user/role and inline policies.

### Activity 2: Amazon VPC Lab for Security controls for container, serverless, data, and platform services
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

### Activity 3: Amazon S3 Lab for Security controls for container, serverless, data, and platform services
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

### Activity 4: Amazon CloudWatch Lab for Security controls for container, serverless, data, and platform services
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

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study Security controls for container, serverless, data, and platform services in a cloud-agnostic way: focus on capability first, provider name second.

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
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |

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

