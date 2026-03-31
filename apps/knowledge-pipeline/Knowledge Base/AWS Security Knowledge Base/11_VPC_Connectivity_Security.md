# 11_VPC_Connectivity_Security.md

## Scope
- Source set: Specialty Domain 3 connectivity and segmentation files
- Files processed: 24
- Extracted non-empty transcript lines: 1019
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 3 Topic 2: VPC Connectivity Security)

This section is the study-first architecture guide for private connectivity, segmentation, and hybrid network security.

### Phase 1 - Foundations

#### Module 1: Connectivity Security Principles
- Prefer private paths over public exposure whenever feasible.
- Segment workloads by trust boundaries, not only by application category.
- Route control is as important as identity control in network security.
- Hybrid links must be treated as security boundaries with explicit policy.


##### Source Transcript Details
- Module focus: Connectivity Security Principles
- Primary transcript files:
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/090_VPC Endpoint - Examples.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/088_VPC Endpoints - Overview.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/084_[SAA_SOA] VPC Peering.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/085_[SAA_SOA] VPC Peering - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/089_VPC Endpoint Policies.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/093_[SAA_SOA] NACL & Security Groups.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/087_[SOA] DNS Resolution Options in VPC - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/094_[SAA_SOA] NACL & Security Groups - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/077_[SAA_SOA] Bastion Host - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/086_[SOA] DNS Resolution Options in VPC.txt
- Top concept clusters from transcript metadata:
- VPC Connectivity Operational Context
- Private Connectivity
- Segmentation and Isolation
- Routing and Reachability
- Egress Control
- Identity-Aware Access
- Hybrid Networking
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1019
- Key insights inside selected files: 599
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- So let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy i...
- And so as you can see, two VPC endpoints may be required for CodeDeploy.
- So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- If you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- Well, first of all we need multiple VPC interface endpoints.
- So this service must allow the inbound 443 port on the security group to allow secure connections.
- The second one is the SSM Session Manager VPC interface endpoint called SSM Messages.
- Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can commu...
- Then we're going to need a VPC interface endpoint for EC2 messages because we have the SSM agent and we need access to SSM commands.
- If you're using KMS you're going to get optional KMS encryption by using the VPC interface endpoint for KMS.
- There's also CloudWatch Logs in VPC endpoint in case you're sending the logs to CloudWatch Logs, or Amazon S3 if you're using Amazon S3 for these logs.
- So we need to have access to the SSM service itself with its own VPC interface endpoints, and then there will be one called the SSM Commands VPC interface endpoint. called EC2 Messages, which is going to allow the SSM...
- So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of...

##### Polished Architect Notes
- Transcript signals that let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Transcript signals that it turns out that there are two kinds of VPC interface endpoints that are required.
- Transcript signals that the second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDepl...
- Transcript signals that so as you can see, two VPC endpoints may be required for CodeDeploy.
- Transcript signals that just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- Transcript signals that if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- Transcript signals that if your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- Transcript signals that this will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- Transcript signals that if you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- Transcript signals that first of all we need multiple VPC interface endpoints.
- Transcript signals that this service must allow the inbound 443 port on the security group to allow secure connections.
- Transcript signals that the second one is the SSM Session Manager VPC interface endpoint called SSM Messages.

##### Architect Synthesis (Transcript-Derived)
- Treat VPC Connectivity Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Private Connectivity as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Segmentation and Isolation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Routing and Reachability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Egress Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Design implication: it turns out that there are two kinds of VPC interface endpoints that are required.
- Design implication: the second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDepl...
#### Module 2: Core Connectivity Building Blocks
- Bastion access models and alternatives.
- NAT-driven controlled outbound patterns.
- Site-to-Site VPN and client-access VPN models.
- Peering, transit hubs, and endpoint-based private service access.


##### Source Transcript Details
- Module focus: Core Connectivity Building Blocks
- Primary transcript files:
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/090_VPC Endpoint - Examples.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/088_VPC Endpoints - Overview.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/085_[SAA_SOA] VPC Peering - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/084_[SAA_SOA] VPC Peering.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/087_[SOA] DNS Resolution Options in VPC - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/089_VPC Endpoint Policies.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/086_[SOA] DNS Resolution Options in VPC.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/093_[SAA_SOA] NACL & Security Groups.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/094_[SAA_SOA] NACL & Security Groups - Hands On.txt
- outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/077_[SAA_SOA] Bastion Host - Hands On.txt
- Top concept clusters from transcript metadata:
- VPC Connectivity Operational Context
- Private Connectivity
- Segmentation and Isolation
- Routing and Reachability
- Egress Control
- Identity-Aware Access
- Hybrid Networking
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1019
- Key insights inside selected files: 599
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- So let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy i...
- And so as you can see, two VPC endpoints may be required for CodeDeploy.
- So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- If you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- Well, first of all we need multiple VPC interface endpoints.
- So this service must allow the inbound 443 port on the security group to allow secure connections.
- The second one is the SSM Session Manager VPC interface endpoint called SSM Messages.
- Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can commu...
- Then we're going to need a VPC interface endpoint for EC2 messages because we have the SSM agent and we need access to SSM commands.
- If you're using KMS you're going to get optional KMS encryption by using the VPC interface endpoint for KMS.
- There's also CloudWatch Logs in VPC endpoint in case you're sending the logs to CloudWatch Logs, or Amazon S3 if you're using Amazon S3 for these logs.
- So we need to have access to the SSM service itself with its own VPC interface endpoints, and then there will be one called the SSM Commands VPC interface endpoint. called EC2 Messages, which is going to allow the SSM...
- So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of...

##### Polished Architect Notes
- Transcript signals that let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Transcript signals that it turns out that there are two kinds of VPC interface endpoints that are required.
- Transcript signals that the second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDepl...
- Transcript signals that so as you can see, two VPC endpoints may be required for CodeDeploy.
- Transcript signals that just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- Transcript signals that if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- Transcript signals that if your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- Transcript signals that this will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- Transcript signals that if you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- Transcript signals that first of all we need multiple VPC interface endpoints.
- Transcript signals that this service must allow the inbound 443 port on the security group to allow secure connections.
- Transcript signals that the second one is the SSM Session Manager VPC interface endpoint called SSM Messages.

##### Architect Synthesis (Transcript-Derived)
- Treat VPC Connectivity Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Private Connectivity as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Segmentation and Isolation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Routing and Reachability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Egress Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Design implication: it turns out that there are two kinds of VPC interface endpoints that are required.
- Design implication: the second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDepl...
### Phase 2 - Core Services

#### Bastion and Administrative Access
- Bastion is a transitional control pattern when private hosts require managed jump access.
- Operational goal: minimize attack surface and control operator entry paths.

#### VPN and Hybrid Access
- Site-to-Site VPN for network-to-network encryption paths.
- Client VPN for user-to-network secure remote access patterns.
- Direct Connect as dedicated connectivity option with separate risk/performance profile.

#### VPC Endpoints and PrivateLink
- Endpoint patterns remove public internet traversal for service consumption.
- Endpoint policies and DNS behavior become critical control points.
- PrivateLink supports producer-consumer service exposure without full network flattening.

#### Transit and Segmentation Controls
- Transit Gateway-style hub patterns simplify large topology routing.
- Security Groups and NACLs provide layered boundary controls with different semantics.
- DNS resolution choices can directly impact reachability and policy outcomes.

### Phase 3 - Advanced Patterns

#### Pattern 1: Hub-and-Spoke with Segmented Route Domains
- Use centralized transit routing with environment isolation boundaries.
- Keep dev/test/prod traffic controls distinct and auditable.

#### Pattern 2: Private Service Mesh Across Accounts
- Use endpoint and PrivateLink patterns to connect services without broad peering trust.
- Apply policy at service-consumer boundary, not only subnet boundary.

#### Pattern 3: Hybrid Resilience Design
- Combine dedicated links and VPN failover.
- Validate routing convergence and failback behavior under incident conditions.

### Phase 4 - System Design (Production)

#### Reference Architecture: Multi-Account Private Connectivity Fabric
- Spoke VPCs connect through controlled transit constructs.
- Shared services expose capabilities through private endpoint models.
- Hybrid edges connect on-prem boundaries with explicit route and policy governance.
- Segmentation controls enforce least-privilege network reachability.

#### Scaling Considerations
- Route table and attachment growth management.
- DNS complexity and split-horizon behavior risks.
- Policy drift between SG/NACL/route intent.
- Operational troubleshooting complexity in multi-hop private paths.

#### Cost Considerations
- Endpoint and data-transfer costs across private links.
- Transit and hybrid circuit utilization economics.
- Cost-risk trade-offs between tighter segmentation and operational overhead.

### Cross-Cloud Concept Mapping (VPC Connectivity Security)

#### Underlying Concept: Private Service Connectivity
- AWS: VPC Endpoints and PrivateLink
- Azure: Private Link and service endpoints
- GCP: Private Service Connect
- Trade-off: private DNS and policy semantics vary; design for deterministic name resolution.

#### Underlying Concept: Multi-Network Transit Hub
- AWS: Transit Gateway
- Azure: Virtual WAN or hub-spoke architectures
- GCP: connectivity-center and router-driven hub patterns
- Trade-off: route policy models differ; standardize segmentation intent first.

#### Underlying Concept: Hybrid Private Connectivity
- AWS: Site-to-Site VPN and Direct Connect
- Azure: VPN Gateway and ExpressRoute
- GCP: Cloud VPN and Interconnect
- Trade-off: each platform has different resiliency and routing controls; test failover frequently.

### Real-World Use Cases from Transcript Signals
- Secure private administration of internal workloads.
- Connect distributed VPC estates with governed route boundaries.
- Expose shared internal services safely across account lines.
- Build resilient hybrid connectivity for enterprise workloads.

### Constraints and Exam-Relevant Traps Captured
- Connectivity does not imply security; policy boundaries must still be explicit.
- DNS misconfiguration can nullify otherwise-correct network designs.
- Over-peering creates implicit trust and operational complexity.
- Endpoint policy and route logic mismatches cause hidden access failures.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/076_[SAA_SOA] Bastion Host.txt

Line 1:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Bastion Host
- Key Insights: So now let's talk about bastion hosts and the idea is that our users want to access an EC2 instance that is in a private subnet, but we as users, we are on our computer on the public internet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So obviously because our EC2 instance is in a private subnet we don't have direct internet access to it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: So the trick, or one trick at least, is to use a bastion host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: The bastion host is an EC2 instance, that's named bastion host, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: And that EC2 instance is special because it is in a public subnet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Bastion Host, Security Groups
- Key Insights: It has its own security group called the bastion host security group, then we also have a security group, of course, for our EC2 instance in the private subnet.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 7:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Amazon VPC, Bastion Host
- Key Insights: Now, the idea is that the EC2 instance in the public subnet, our bastion host, does have access to the EC2 instance in our private subnet, well, because everything is in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Bastion Host
- Key Insights: So now to access our EC2 instance in the private subnet, what we do is that we first connect through SSH to the bastion host and then connect from the bastion host, again with SSH, to the EC2 instance in the private subnet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And it could be one but it could be as well, many EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Private Connectivity
- Services: Bastion Host
- Key Insights: So to summarize a bastion host is a way for us to SSH into our private EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: Segmentation and Isolation
- Services: Bastion Host
- Key Insights: And we must put the bastion host in the public subnet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So in terms of security group rules, this is something that can come up with the exam, we need to understand what we can define.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 13:
- Concepts: Segmentation and Isolation
- Services: Bastion Host, Security Groups
- Key Insights: So for a bastion host perspective, the security group must allow access from the internet, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But instead of allowing everywhere from the internet access, because that could be a security risk, we can only restrict, for example, access from the public CIDR of your corporation or your internet access and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Segmentation and Isolation
- Services: Bastion Host, Security Groups
- Key Insights: So that we have to restrict the EC2 security group of the bastion host as much as possible to guarantee that only a few select IPs can access it, because if somehow a random attacker has access to our EC2 instance as the bastion host, it could be a security risk for our infrastructure.
- Hidden/Implicit Meaning: Constraint or limitation signal; Segmentation and access boundary signal.

Line 16:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Bastion Host, Security Groups
- Key Insights: Now, in terms of the security group of the EC2 instances in the private subnets, well, they must allow the SSH access, so on the port 22 again, from this time the private IP of the bastion host or the security group of the bastion host, this is equivalent.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: And this is because the traffic these EC2 instances are seeing are originating from this bastion host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/077_[SAA_SOA] Bastion Host - Hands On.txt

Line 1:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So it turns out that this EC2 instance we've created in our public subnet could have a name and the name could be Bashian host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: This is because we are able to SSH into this fashion host and from it, we'll be able to connect to an EC two instance in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So to do so well, let's go ahead and create an EC two instance in a private subnet, but first, if you don't have a key pair, yet sometimes I reuse accounts or create new ones or transfusions.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I don't necessarily have key pairs.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You can just enter a key pair.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I'll have a, a demo key pair right here, and then in the PM format.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then I will create my key pair.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So I will save this file and this is going to be very handy for us to SSH into the EC two instance in my private subnet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how we can do it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now let's go into EC two instances And I'm going to launch an EC two instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I will scroll down Amazon Linux 2, two micro.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We will use the key pair named demo key pair we just created.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And then for network settings, we will make sure to launch this into our demo VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: And so far as subnet association.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Security Groups
- Key Insights: So we want to be into a private subnet, for example the private subnet a, and we're going to create a security group.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 16:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Security Groups
- Key Insights: I'm going to name it private SG because it is a private security group and we are going to allow SSH but actually not from anywhere from custom and this time it will choose a security group we have created from before, which is called a launch wizard one, which is not a great name.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I'm going to rename it very, very soon but what it means that we allow SSH from the Bashian host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And this is how through a hub, through the Basian host, we're going to be able to SSH into this private instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this looks good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now let's go ahead and actually launch that instance, and we are good to go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So here we have our private instance and because it is in a private sublet, as you know, we cannot use the EC two instance connect into it because that will not work.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: We will need to edit the root tables at the internet gateway, but that would make the subnet public.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what we have to do is to SSH through the Bashian host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and see how we can do it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we're going to connect into our Bashian host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I will click on connect and then EC two instance connect.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So effectively what we're doing is that we're doing SSH into our Bashian host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So you could use either EC two instance connect, or you know, your SSH command line through your terminal.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And from this fashion host we wanna connect into our private instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: Now our private instance as we can see has a private IP four address.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is what we need to do.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So we need to do SSH easy two user at, and then the private IP, and then we need to specify a key pair.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So yes, and this is not going to work because we haven't specified a key pair.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we need to actually create that key pair and then have it on my EC two instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what I'm doing is I'm going to have a VI or nano and then I'll call it demo key pair.pm and then I will have to paste the content of the key pair I just downloaded.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I open my file that PM with a text editor and then I paste exactly what I have in here, and I wanna make sure this is going to be good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I think it's missing a new line right here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This looks good, actually.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Let's see.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then exit and then save.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 46:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Let's just make sure that this has been properly saved.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 48:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this hopefully looks good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 49:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Let's see.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 50:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I'm not too...I'm not a bit confused by the formatting, but let's see.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 51:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And we need to make sure we change the permission.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 52:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I will change the permissions on this demo key profile.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 53:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 54:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And now let's do this SSH command and minus I demo key pair.pm, and there's a pass rise and this is definitely an issue with the formatting of my files.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 55:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is that I'm going to remove demo key pair.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 56:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 57:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Please remove it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 58:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will use another text editor to see if that works.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 59:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So VI demo, key pair that PM.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 60:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I'm gonna keep this on video because this is a super important to see what can go wrong.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And in case you have these issues, then at least, you know so this looks a lot better.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 62:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then I will save this file.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 63:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 64:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now if we run the SSH command again, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 65:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is unprotected so that we are needing to running the shma command.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 66:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 67:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then with such again, and here we go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 68:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This has worked.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 69:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So now we are SSH'd into my Amazon index two AMI in my private subnet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 70:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is really good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 71:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: We went from the Bashian host into the private instance and this works, and this is quite cool.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 72:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But now if we try to ping Google account as you can see, well, this doesn't work.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 73:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: The private EC two instance does not have internet access outgoing.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 74:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so we're going to see how to resolve this in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 75:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But so far we've seen how to use Bashian host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 76:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So awesome.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 77:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/078_[SAA_SOA] NAT Gateway.txt

Line 1:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So now that we've talked about NAT instances, let's look at NAT Gateways.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So NAT Gateways are much better.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: There either is managed in that instances of asleep and they have a higher bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: There is high availability you can do into it, and there is no administration.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So you're going to pay per hour of usage and bandwidth for the night gateway and the nugget weight.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It will be created in a specific AZ and it will inherit an Elastic IP.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now it cannot be used with an Institute instance within the same sub-net okay.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the nugget weight can only be helpful if accessed from another sub-net.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So we're going to create a nugget way in a public subnets and connect it to instances in the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: Now, the routes, how it works is that it goes from the private subnets to the nugget way to the internet gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So net gateway can not work without an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: Now the bandwidth is five gigabits per second, automatically scaling up to 100 gigabits per second, and you don't need to manage any security groups it's not required.
- Hidden/Implicit Meaning: Constraint or limitation signal; Segmentation and access boundary signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that means that we don't need to think about which ports you enable to make the connectivity work.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the way it works that right now we have this setup, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: We have a private instance and a private subnets, and it can not access the internet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we're going to create the next gateway in the public subnets and the nugget weight, because it is, will be deployed into public subnets.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the public center is already connected to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Then, then that gateway will have internet connectivity.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And then we can, we're going to edit the roots of the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And by editing them, we are going to be able to connect our Institute instance into our nuts gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about high availability and not gateways.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the nugget weight is resilience only within a single availability zone.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be redundant within a single AZ, but in case an AZ go down, you need to have multiple net gateways in multiple AZ to have fault tolerance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the way it works is like this.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So currently we have one gateway and it's in one specific AZ, we're going to create a second net gateway in the second AZ so this was, you can see each network traffic is confined into an AZ.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so that if there is an AZ that goes down, okay, this whole AZ happens to be going down.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: Then we'll still have the ACB working because a NAT gateway in ACB or X as well exists.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: And there's no need to connect the atheist together through the route tables, because well, if an AZ goes down, then all the Eastern instances in that are also currently unassailable.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now let's just talk about the difference between net gateway and other instances, but there should be quite obvious.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the net gateway is highly available within a specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And if you want to get high voltage across AZ, you need to create another one in another AZ resonant instance, You wouldn't, have a script to manage fail-over between that instances and manage them overall.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The bandwidth is up to 100 gigabits per second, per not gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And that for in that instance, well, it depends on the instance type that you have, but the higher instance type, the more throughput you're going to have, the maintenance is obviously a managed service when they get way.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Whereas it's measured by you.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: For instance, we need to make sure you have the software or the U S patches and so on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The cost is a per hour cost plus amount of data transfer for the night gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Whereas for instance, it's per hour for these two incidents, which is going to be a dependent, obviously on the easy two instance type and size.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And also you're going to pay for network dollar that goes through the ECC instance out to the internet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now the negative way has a public IP for enterprise IP for us so this is good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: The same, for instance, now security groups are not used for net gateway, which seriously a good thing because, well, you don't, you manage one more thing.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 43:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Whereas from that instance, you need to set up your secrets, your groups, and make sure they're tight and working for the right ports.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: And the nugget way can not be used as a bastion host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: Whereas in that instance could be used as a bastion host if we want it to, there's a lot more differences between these two things.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 46:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: And there's a link right here, but from an exempt perspective, there should be enough to insert any questions into choosing a NAT gateway versus in that instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 48:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/079_[SAA_SOA] NAT Gateway - Hands On.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now that may not instances stopped or terminated, we do not have access to the internet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So if I do curls.com ah, is not going to work.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: So let's fix this and go ahead with NAT Gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Private Connectivity, Routing and Reachability
- Services: (none explicit)
- Key Insights: So first let me refresh this private route table.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And as we can see now, this destination targeting this ENI is a black hole and black hole means that this rule is not active anymore.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Because where we have stopped our net instance and therefore I will see this fruit does not lead to anything.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So this is why also it's really good to use managed services and not, NAT instances.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we are going to create a NATs Gateway and I call it 'DemoNATGW'.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Egress Control, Segmentation and Isolation
- Services: NAT Gateway
- Key Insights: Now, when you choose a subnet for the NAT Gateway which should be in so for high availability, we need to use multiple subnets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But right now we'll start with one PublicSubnetA and the connectivity type is going to be public.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: And then we need to allocate an elastic IP to this NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's allocate one.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: These us to get IP has been allocated, and then we'll just click on create NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: So this is NAT gateway has been created.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So while then that gateway is being created.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: What I can do is edit my route table.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 21:
- Concepts: Private Connectivity, Routing and Reachability
- Services: (none explicit)
- Key Insights: So I will go back into my route table, look at my private route table, and then I will edit them.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's edit the routes in it.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 23:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: And this route that was a black hole obviously will not, we don't need anymore.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 24:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: So instead we want to send internet traffic out to a NAT Gateway and we'll use the 'DemoNATGW' we've created from before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's save this.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now we don't have black holes.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: We have two active rules and one of them is sending it to our NAT Gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: Now we can take a little bit of time for a NAT Gateway to be active, as you can see, the state is still pending.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is pause the videos and get back to you when this is done.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And here we go, it is active.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so let's go back into our Institute instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This one, yes, I'm still connected.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is perfect.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So if I do curl a google.com, then it's working and ping, google.com, is working as well.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: Egress Control
- Services: NAT Gateway
- Key Insights: So the NAT Gateway is active and are EC2 instance is sending traffic into it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: And we didn't have to specify any security group rules.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 37:
- Concepts: Egress Control, Routing and Reachability, Segmentation and Isolation
- Services: NAT Gateway
- Key Insights: We didn't have to specify many things just to create this Nat Gateway, but send it into a subnet and then edit the route table.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: My instance in this... private subnets can get access to the internet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That means that's.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: For example, we can do sudo yum, and then updates, for example, our operating system, without making this instance public, which is really good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: Egress Control, Routing and Reachability
- Services: NAT Gateway
- Key Insights: So just to finish, we have created one NAT Gateway in one specific... abilities zone, but we could create a second yet NAT Gateway that in another abilities zones, and then edit the route tables to make it highly available.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 43:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now, this is not something we're going to do in this lecture, but remember the architecture diagram from before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: Again, if you want it to make it a highly available setup, you would need to set up multiple, NAT Gateways for be able to resist a disaster affecting an entire AC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 46:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/080_[SAA_SOA] Site to Site VPN.txt

Line 1:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about site-to-site VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 2:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So the idea is that, now we have a VPC but we may have also a structure within the corporate data center, and we wanna connect AWS to our corporate data center using a private connection.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: Hybrid Networking
- Services: Amazon VPC
- Key Insights: So for this, we'll have a customer gateway on the corporation side, and a VPN gateway on the VPC side.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 4:
- Concepts: Hybrid Networking, Private Connectivity
- Services: (none explicit)
- Key Insights: And we're going to establish, through the public internet, a private site-to-site VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 5:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: So it's a VPN connection, so it's encrypted.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It goes over the public internet, though.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And using this, we have linked effectively the network of our VBC to the network of our corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, as such, the VPNs need two things.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 9:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: First, they need a virtual private gateway, VGW.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Hybrid Networking
- Services: Amazon VPC
- Key Insights: It's a VPN concentrator on the AWS side of the VPN connection, and the VGW is created and attached to the VPC from which you want to create the site-to-site VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It's possible for you to customize the ASN number, if you know what that means.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: The customer gateway is a CGW, and it's an actual software or a physical device on your side, so on the data center side of the VPN connection, And there's a bunch of these that will have been tested by AWS, so we can have a look at the list here.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, to do a connection, it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: We have a corporate data center with a customer gateway, and then we have our VPC with our virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, how do we set up the customer gateway device that is on premises?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Which IP address should we use?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, if your customer gateway is public, there is a public internet-routable IP address for your customer gateway device.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Then you would use this one, and you would establish the connectivity between your VGW and your CGW using the public IP of the customer gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: But it's possible for your customer gateway to also be private and have a private IP.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: In which case, then it is very common for it to be behind a NAT device that has NAT-T enabled.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: And then, that NAT device has a public IP, in which case, the IP address you should use for the CGW is the public IP of the NAT device.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And then, the site-to-site VPN connection can be established.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I'm saying this because this can come into the exam.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: Amazon VPC
- Key Insights: And then, the second question that can come up to the exam is that, even though this is set up, this site-to-site VPN connection will not work until you enable route propagation in your VPC within your subnets.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then, when this is done, then the connectivity will work.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: Finally, another exam question that can come up regarding site-to-site VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 27:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: If you need to ping your EC2 instances from on-premises to AWS, then make sure that the ICMP protocol on the inbound of the security group is enabled.
- Hidden/Implicit Meaning: Segmentation and access boundary signal; Hybrid connectivity operating model signal.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, I would say the connection will not work.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: This is just a security group question, obviously.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 30:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: But they mix it up with the site-to-site VPN and that can be confusing, so here is some help.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 31:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: Now, there's one last thing to know about a site-to-site VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 32:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: It's called AWS VPN CloudHub.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So the idea is that you have your VPC with your VGW and you have multiple customer networks, multiple data centers, each with their own customer gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: So CloudHub is to provide secure communication in between all these sites, using multiple VPN connections.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 35:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: It's a low-cost hub-and-spoke model for primary or secondary network connectivity between different locations, but only using the VPN.
- Hidden/Implicit Meaning: Constraint or limitation signal; Hybrid connectivity operating model signal.

Line 36:
- Concepts: Hybrid Networking
- Services: Amazon VPC
- Key Insights: So you would establish a site-to-site VPN between the CGW and the one single VGW within your VPC.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 37:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And then, thanks to this connection, then your customer networks can now communicate with one another through that VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 38:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: Now, because it's a VPN connection, all the traffic goes over the public internet.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 39:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So they're not connected through a private network.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: They're connected through public network but the VPN connection is encrypted, obviously.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 41:
- Concepts: Hybrid Networking, Private Connectivity, Routing and Reachability
- Services: (none explicit)
- Key Insights: And to set it up, super simple, you set up multiple site-to-site VPN connection on the same virtual private gateway, and then you enable dynamic routing and you configure your route tables, and you're good to go.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: That's all you need to know for site-to-site VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/081_[SAA_SOA] Site to Site VPN - Hands On.txt

Line 1:
- Concepts: Hybrid Networking
- Services: Site-to-Site VPN
- Key Insights: So let's have a look at how you can create a site to site VPN connection in AWS.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 2:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: So scroll down and under VPN, you go and click on "Customer Gateways." So the first step to having a site-to-site VPN connection is to have a customer gateway that you host on-premises.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So you create it on-premises.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You can name this AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then you can specify a BGP ASN for your gateway device.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is advanced.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You don't need to know it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You need to specify the IP address of your customer gateway device external interface.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So how it can be reached from AWS into your on-premises infrastructure.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 12:
- Concepts: Hybrid Networking, Identity-Aware Access
- Services: (none explicit)
- Key Insights: And then you would specify a Certificate ARN which allows AWS to connect into your VPN device on-premises and establish a secure connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is to create a customer gateway but I won't do this because I don't have an on-premises infrastructure to show you.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 14:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: Next, we have a Virtual Private Gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So you would create a Virtual Private Gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then you would use a ASN number and it will be created on the side of AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is now the site of AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And then we need to connect these two things and therefore we need to create a site-to-site VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 20:
- Concepts: Hybrid Networking, Private Connectivity
- Services: (none explicit)
- Key Insights: To do so we click on "Create VPN Connection." It is of type "Virtual private gateway." Then you specify the virtual private gateway that you would have created from before.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You specify the customer gateway you would have created from before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: Then you specify a lot of options that you don't need to know about regarding routing, regarding IPV4, regarding tunneling and so on.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 23:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And then you would create that VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All this is out of scope in terms of hands-on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: Hybrid Networking, Private Connectivity
- Services: (none explicit)
- Key Insights: For the exam, all you need to know is that to establish a site-to-site VPN connection between on-premises and AWS, you need to first create a customer gateway, then a virtual private gateway on AWS, and then connect the two using a site-to-site VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/082_[CCP] Client VPN.txt

Line 1:
- Concepts: Hybrid Networking, Identity-Aware Access
- Services: AWS Client VPN
- Key Insights: Now let's talk about the AWS client VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So the idea is that you have your computer and you want to privately connect into your AWS VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: Hybrid Networking, Identity-Aware Access, Private Connectivity
- Services: AWS Client VPN
- Key Insights: Therefore you will leverage the client VPN to establish a connection using the open VPN to your private network in AWS or on premises.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I will show you how in the second.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Why would you want to do so?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: Well, for example say you have deployed EC2 instances in a private VPC and you want to access them using a private IP.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: Well, that's difficult if you don't have a VPN but if you have a VPN, then it's super easy.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 8:
- Concepts: Hybrid Networking, Private Connectivity
- Services: Amazon VPC
- Key Insights: Once the VPN connection is established you will be able to access your EC2 instances using their private IP just as if you were in the VPC network yourself.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 9:
- Concepts: Hybrid Networking
- Services: Amazon VPC
- Key Insights: So your VPC is right here and then your client's VPN is installed on your computer.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 10:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: You will establish the VPN connection over the internet.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this goes over the public internet, of course.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And then you will be as if you are connected privately into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: Hybrid Networking
- Services: Amazon VPC, Site-to-Site VPN
- Key Insights: And if your VPC has established a site to site VPN connection to your on-premises data center then your computer will also be able to access, privately, your servers on your, on premises data center.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And that's pretty magical, but it works.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/083_Client VPN - Client Authentication Types.txt

Line 1:
- Concepts: Hybrid Networking, Identity-Aware Access
- Services: AWS Client VPN
- Key Insights: So you need to know the different types of authentication you can have with the AWS Client VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 2:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: So the first one is an active directory authentication where you as a user will authenticate against Microsoft Active Directory.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It's user based and then you can use whatever directory you want or you can use a manage directory from AWS such as the AWS Manage Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to use an on-premises AD then you have to use an AD connector.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 5:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: This supports multifactor authentication.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: The second way is to use mutual authentication.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: Hybrid Networking, Identity-Aware Access
- Services: AWS Client VPN
- Key Insights: So this is where you have certificates and the user will use these certificates to perform the authentication to the client VPN service.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 8:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: To do so, you must first upload the service certificates to the certificate manager and you will have one client certificate for each user so that you can properly identify them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The last possibility is to use single sign on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this supports IAM Identity Center which we use as the new name for AWS SSO.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: So you will authenticate against the SAML 2.0 based identity provider again based on username, password and then you establish a trust relationship between AWS and this identity provider.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: For the SSO to work you can only have one identity provider at a time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Hybrid Networking, Identity-Aware Access, Private Connectivity
- Services: AWS Client VPN
- Key Insights: So in this example, the client is initiating a connection to the client VPN endpoint and we have defined SAML 2.0 idP in IAM such as the client VPN endpoint is going to check the configuration of this idP.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Then it's going to return to the client the idP URL to do a login against.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The client will do a login using the URL that was provided against the SAML 2.0 identity providers is where you use your username and password to get back a SAML token if you're successful.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: Hybrid Networking, Identity-Aware Access, Private Connectivity
- Services: AWS Client VPN
- Key Insights: And then this SAML token is being passed to the client VPN endpoint which is going to validate the SAML token and therefore establish a secure connection between the clients and the client VPN endpoint.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Just remember these three methods.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/084_[SAA_SOA] VPC Peering.txt

Line 1:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: So now let's talk about VPC Peering.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that we can create VPCs and in different regions, different accounts and we want to connect them together using the AWS network.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Why we do this?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, we wanna make them behave as if they were in the same network, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it could be very specific.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Maybe you could have VPC in other regions in other accounts, or even within your same accounts and you want to connect them.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So in order for them not to connect, remember, I said, the VPC network CIDRs must be distant from each other because when we connect them together, if they have overlapping CIDRs, they will not be able to communicate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So, VPC peerings can happen between two VPCs and they're not transitive.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 9:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: That means that each VPC that wants to communicate with one another must have VPC peering enabled.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 10:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So if you have a look at three VPCs right now, A, B, and C, then we can create a peering connection between A and B.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this is allowing you to connect them together.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Routing and Reachability
- Services: Amazon VPC
- Key Insights: And we can create another peering connection between VPC B and C, and again, they can communicate together.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 13:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: But even though A and B, and B and C, are connected, you still need to enable a VPC peering connection between A and C, to have them communicate.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is very, very, very, very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Routing and Reachability
- Services: Amazon VPC
- Key Insights: Finally, even though your VPC are peered with each other, you must also make sure that you update all the route tables in each VPC's subnets, to ensure that these two instances in different VPC, can communicate with each other.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And we'll see this in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: So some good things to know about VPC peering.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: They can happen within your own accounts, but they can happen across accounts.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So if you want to connect a VPC from one account A, to account B, you could, and also across regions.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is very, very powerful.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: And you remember, in security groups, we can reference other security groups in it.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 22:
- Concepts: Segmentation and Isolation
- Services: Amazon VPC, Security Groups
- Key Insights: While it's possible to also reference a security group from a peered VPC across accounts in the same region.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 23:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: And this is very powerful because we don't need to have the source as a CIDR on IP, we can also reference a security group.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Extremely powerful.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So back into our networking diagram.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: We're here and now we're going to add a VPC peering connection to connect our VPC to other VPCs.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/085_[SAA_SOA] VPC Peering - Hands On.txt

Line 1:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: Okay, so let's have a play with peering VPCs.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what we wanna do is to peer our 2 VPCs together.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So the demo VPC and this one I will call it the default VPC which was the VPC that was created with my accounts.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we want to peer them together, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And to do so, I'm going to prove first that's the VPCs are not connected.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so to do so I'm going to go into my EC2 management console under instances I'm going to launch an instance and then I will scroll down.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I will scroll down.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Key pair will choose demo key pair, but will not need it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Segmentation and Isolation
- Services: Amazon VPC, Security Groups
- Key Insights: And then we'll do network settings will launch this one in a default VPC and we'll create a security group launch-wizard-2 that has the SSH rule added in.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Let's launch that instance and we are good to go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now we have our BastionHost.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Remember that has this website available and then we have this instance I'll call it default VPC instance, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And what I want to do is to connect and make sure this default instance VPC can connect to the instance in my BastionHost.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now, if I have a look at the IPS, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: We can see that the private ipv4 is more interesting.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look at probably not here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So, if we look at the private ipv4 address this one is 172.31.36.159.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this one before was 10.0.0/72.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: We can tell there they're in different VPC because the IP addresses that are private are very different.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's connect to this one, using EC2 instance connect.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're connected.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And let's also connect into my BastionHost.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So my instance in my other public subjects.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So if we do a curl and then we do 10.0.0.0.72:80, which is my IP.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we get a hello world.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is working fine, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But if we do the exact same curl command so we go here and we do curl on this IP, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is from the 172.31 type of instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, we're going to curl this instance right here and press enter.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, this is not working.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We get a time out.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Well, because there is no way for our EC2 instance right now in this VPC to connect to the two instance in another VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: That's why it's called virtual private Cloud IaaS because they're isolated from a network perspective.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we're going to connect them.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: And to do so, well we need to go and create a peering connection.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 40:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So on the lifeline side, there is peering connections.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 41:
- Concepts: Routing and Reachability
- Services: Amazon VPC
- Key Insights: I'm going to create a peering connection and I'll call it demo peering connection, and we need to select a local VPC to peer with.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So we're going to say that the requester is my demo VPC, and then we're going to select another VPC to connect to.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's in my accounts, but it could have another account and it's in this region, but it could be another region.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And the acceptor of VPC is going to be the default VPC with this CIDR.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: So as we can see, this CIDR and that CIDR do not overlap and therefore this VPC peering connection is possible to create, okay.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 46:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So let's create this peering connection and it's pending acceptance.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is not working until we have accepted it now because both the VPCs are in our accounts.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 48:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We can accept this request ourselves, so we can accept it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 49:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But if it wasn't of other accounts obviously we could deny it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 50:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the requester owner ID and the acceptor or ID are the same in this example.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 51:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's accept this request.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 52:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: And now it says to send and receive traffic across this VPC peering connection you must adder route to the VPC period in one or more of your VPC, route tables.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 53:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: So again, this is very important, even though there's VPC peering connections we need to still modify the route table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 54:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So again, if I try to do a curl, not from this one but a curl from this instance, still not working, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 55:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and fix this.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 56:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So we go and modify my route tables now.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 57:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: And so we have one public route table, and here we have I will find the right one.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 58:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is this one right here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 59:
- Concepts: Routing and Reachability
- Services: Amazon VPC
- Key Insights: This is my default VPC default main route table, main route table.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 60:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, now we know where we are.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 61:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we want to connect this and that's.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 62:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So let's start with a public route table and I will go to routes and then edit routes and I will have a destination.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 63:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So in this one, we need to select a CIDR, which corresponds to the CIRD of my VPC that was created the default VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 64:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So to do so let's go into your VPCs, find the default VPC and the IP four CIRD is right here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 65:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I'm copying it, I'm pasting it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 66:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: And we're saying, Hey, any traffic that is going into this range of IP addresses should be sent to a peering connection called the demo peering connection.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 67:
- Concepts: Routing and Reachability
- Services: Amazon VPC
- Key Insights: And click on safe changes, and what we've done effectively is that we've created a route from my creative VPC into the default VPC.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 68:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So if we try again though and do a curl, still not working, and the reason is, well we need to also modify the other route table for it to work.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 69:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so let's do it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 70:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: Let's modify the other route table.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 71:
- Concepts: Routing and Reachability
- Services: Amazon VPC
- Key Insights: So to do so, I'm going to go into the VPC main route table and I will edit this route and I will add a route.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 72:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And this time it's for 10.0.0.0.0.0/16 which is now the CIRD of the VPC we've created alongside this course.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 73:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: And again, the peering connection.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 74:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then we'll say step changes.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 75:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now we have routes going both ways.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 76:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so if I curl again and press enter, here we go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 77:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We'll get a hello world.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 78:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: That mean that the VPC peering connection is working and it was established.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 79:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 80:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 81:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/086_[SOA] DNS Resolution Options in VPC.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: So let's talk about the two DNS settings you can find it in the VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: So the first one is DNS resolution called ENA enableDnsSupport.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: Routing and Reachability
- Services: Amazon VPC, DNS Resolution
- Key Insights: And this is to decide if DNS resolution from Route 53 resolver is supported from the VPC.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So by default, the setting is true.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: And that means that each two instances within your VPC will be able to query the Amazon provided DNS server at either the IP 169.254.169.253, or the reserved IP that we mentioned before that is at the base of the VPC IP four network range plus two.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the point to address.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: So if we have a look, so we have DNS support enabled for this VPC, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The second setting, we'll see what it means in the next slide.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: And so if we want to ask for Google.com then because we have enableDnsSupport, then the EC2 Instance can reach out to the routes with resolver using one of the two IPs I mentioned, and then we'll get the answer of where Google.com is, and then we'll get access to the internet.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: This has to be able to have DNS resolution for public addresses.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: Now, if you have no DNS support, then it is still possible for you to get DNS resolution, but you need to create your own custom DNS server, configure it and so on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then you'll be able to get the same answer.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But it is quite natural to use the managed services in AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: Routing and Reachability
- Services: DNS Resolution
- Key Insights: So when you enable the DNS support setting, then you can leverage route 53 to resolve the public DNS names within the internet.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: The next setting is DNS host name.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So enableDnsHostnames.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And by default is true.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: If you have a default VPC or false, if you have a newly created VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It will not do anything unless you also enable the setting from before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So enableDnsSupport equals true.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: And if DNS Hostname is true, that means that your EC2 instance will get a public public host name.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: If it also has a public IP for as we'll see in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: Private Connectivity
- Services: DNS Resolution
- Key Insights: So without it, so without the DNS host I'm setting, as you can see, EC2 Instance just has a private DNS, even though it sits in a public subnets, but with DNS support and DNS Hostanme my EC2 instance, has a private DNS of course, but also has a public DNS that corresponds to its public IP.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: So this is what the DNS host name setting does.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And why do we want to enable both of these settings?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: Private Connectivity, Routing and Reachability
- Services: DNS Resolution
- Key Insights: Well, if you have a custom DNS domain name in a private hosted zone in Route 53, and you said to both of these attributes to true, then you can create this private hosted zone as we'll see in the hands-on for example, web.mycompany.private as a record of type A and the value 10.0.0.10.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 27:
- Concepts: Private Connectivity
- Services: DNS Resolution
- Key Insights: And the reason we do so is that now an EC2 Instance in the private subnets can have a private DNS name associated with a private IP before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: Private Connectivity, Routing and Reachability
- Services: DNS Resolution
- Key Insights: And you're EC2 Instance when requesting that private DNS name, we'll look it up to the Route 53 resolver, which we'll look up the private hosted zone and say, yes, I know what this is.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is 10.0.0.10.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then the EC2 Instances will know how to reach out to the other EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So hopefully this will make a lot of sense in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I will see you there.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/087_[SOA] DNS Resolution Options in VPC - Hands On.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: Okay, so now let's enable DNS resolutions.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: So for this, I'm going to go into my VPC, right click, and then I can edit DNS hostnames and resolution.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: So, we need to enable DNS hostnames.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: And this is to indicate whether instances with public IP addresses get corresponding public DNS hostnames.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: So if we go into our EC2 instances and look at the bastion host, which was a public instance, it has a public IP forward address, as you can see right here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: But there is no public IP before DNS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: So what I need to do is just click on this enabled DNS' name and then save the changes.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host, DNS Resolution
- Key Insights: So now, if I go into my management console and refresh this and look at my bastion host again, as you can see now, there is an public IP before DNS that is available right here, which were resolved to make public IP forward address.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the setting we just enabled, made it work.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: And also we can look at edit DNS resolution, as we can see DNS resolution is already enabled.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: That means that our instances will resolve DNS names within AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So that means that now we can go to the next stage and look at Route 53 hosted zones.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 13:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So now we can create a private one.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is going to host the zones, and I'm going to create a hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: Now this one is going to be called demo.internal.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And as you can see, this is a domain name that I don't own, but because this is a private hosted zone, I don't need to own this domain.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This just allows my EC2 instances to resolve it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So I'm going to select a private hosted zone, and because this is a private hosted zone, we need to associate it with a specific VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So the region I'm in is EU-Central-1 and the VPC ID is my demo VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Private Connectivity
- Services: Amazon VPC, DNS Resolution
- Key Insights: So as you can see for each VPC that you associate with the private hosted zone, you must set the Amazon VPC setting, enabled DNS host name and enableDnsSupport to true, which we did in a few minutes ago.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So just remember that if you create this hosted zone is going to cost you 50 cents per month, just so you know.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's create this hosted zone, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It is created.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And within they have two records, but let's create a new record.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And this one is going to be a google.demo.internal, and it's going to be a C name.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the value of it is www.google.com.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this is just to demonstrate as creating a quick record.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we'll choose a simple routine.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Everything is good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Let's create this record.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this was created successfully.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And now we need to see with our not instances within our VPC can resolve this hostname.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: So let's go into the easy to manage run console, and then I'm going to connect to my bastion hosts and connect to it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is an instance in my public subnets, so I can directly SSH into it and I need to install the decrement.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the decrement is already installed.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's it perfect.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And then just dig and then google.demo.internal.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Press enter.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we get an answer.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So google.demo.internal is a C name and the value of it is Google.com and Google.com then corresponds to Google.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And it's an area code with this IP address.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: Private Connectivity
- Services: DNS Resolution
- Key Insights: So the really cool thing is that now we are able to create internal private records for our DNS, thanks to this things we enabled.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: And this is Tasha VPC, and this is really, really powerful because now we can start creating some very interesting domain names for our internal applications.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 46:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/088_VPC Endpoints - Overview.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So now let's talk about VPC endpoints and they are at the core of the exam, so super important for you to know about them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 2:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: These endpoints allow you to connect to AWS services using a private network instead of going over the public internet network, like you usually do.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: These VPC endpoints will scale horizontally and they will be redundant so that you can survive the loss of an availability zone.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 4:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So you don't need to manage internet gateways or NAT gateways then to access services because you don't access them over the public internet anymore.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You access them privately.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So that means that an EC2 instance in the private subnet has the chance, for example, through a VPC endpoint gateway, to access Amazon S3 and DynamoDB.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 7:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So VPC endpoint gateway only support S3 and DynamoDB.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 8:
- Concepts: Egress Control, Private Connectivity
- Services: Amazon VPC, NAT Gateway, VPC Endpoints
- Key Insights: So this way, as you can see, no NAT gateway is needed, no internet gateway is needed, just the VPC endpoint gateway and you're good to go.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 9:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Next we have the VPC endpoint interface, which supports all services.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 10:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So for example, if you wanted to privately access CloudWatch, for example, to push metrics and logs from a private EC2 instance onto CloudWatch, what you would do is that you would create a VPC endpoint interface, which is an ENI that will live in your private subnet.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then by connecting to this ENI, we will be connected directly to the CloudWatch service.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution, VPC Endpoints
- Key Insights: In case you're having issues with VPC endpoints, you must check the DNS setting resolution in your VPC because it leverages the DNS in the backend to make it transparent for your applications.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 13:
- Concepts: Private Connectivity, Routing and Reachability
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 14:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Let's do a drill down into now the VPC endpoint gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So this only works for S3 and DynamoDB, and you must create one gateway per VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 16:
- Concepts: Routing and Reachability
- Services: Security Groups
- Key Insights: So for this, you must update the route tables entries so you don't manage any security groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal; Segmentation and access boundary signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All you do is network-related.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: The gateway is going to be defined at the VPC level.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: Private Connectivity, Routing and Reachability
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 20:
- Concepts: Private Connectivity, Routing and Reachability
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And this route table will contain, for example, as you can see here on the second line, the fact that the destination is for Amazon S3, and that the target goes through this VPC endpoint gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 21:
- Concepts: Private Connectivity, Routing and Reachability
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And therefore, thanks to this route table, whenever the EC2 instance tries to connect to the S3 service, it will be routed through the VPC endpoint gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: For this to work, you must make sure that the DNS resolution is enabled at the VPC level because this is also leveraging DNS names.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Private Connectivity, Routing and Reachability
- Services: (none explicit)
- Key Insights: Then once you have this in place, you can use the public host name for Amazon S3 to access it privately because well, the routing will happen on the private internet on your private network no matter what.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 24:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Now this VPC endpoint gateway, it cannot be extended out of your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 25:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: So VPN connections do not work.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 26:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: Direct Connect does not work.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 27:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway, Amazon VPC, VPC Peering
- Key Insights: Transit gateway does not work, or VPC peering does not work.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 28:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: That's why you have to create one VPC endpoint per gateway per VPC you have, if you have multiple VPCs.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 29:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: VPC endpoints interface are slightly different, they provide you an elastic network interface, ENI, that will have a private endpoint interface host name.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 30:
- Concepts: Private Connectivity
- Services: DNS Resolution, Security Groups
- Key Insights: This way, it's going to leverage the security groups for security, and you're going to have a private DNS, which is a setting when you create the endpoint.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Segmentation and access boundary signal.

Line 31:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: That means that the public host name of your service is going to resolve to the private endpoint interface host name.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: So you must make sure that the VPC settings enable DNS host names and enable DNS support are set to true.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then for Athena, where you will get this URL.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Private Connectivity
- Services: DNS Resolution
- Key Insights: This one, this one, which are AZ-specific URL before that was a region-specific URL, as well as a public URL, which is going to resolve to the private DNS names above.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So your clients can use, for example, athena.us-east-1.amazonaws.com, to resolve to any of the top addresses on the top.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Now these interfaces can be accessed as well from outside your VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So if you have Direct Connect or a site-to-site VPN, it is completely possible for your on-premises application to access services on AWS through these interfaces.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, DNS Resolution
- Key Insights: So to summarize, we have a VPC in which we enable the DNS support and the DNS host name settings.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And then we have a private subnet with an EC2 instance in which we create a VPC endpoint interface that will get a specific IP.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 40:
- Concepts: Private Connectivity, Routing and Reachability
- Services: Amazon VPC, DNS Resolution, VPC Endpoints
- Key Insights: Automatically upon creating the VPC endpoint interface, the DNS names are going to be registered within the private Route 53 Resolver.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 41:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: DNS Resolution
- Key Insights: So this is all transparent for your applications as long as you enable DNS settings.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/089_VPC Endpoint Policies.txt

Line 1:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So now let's talk about VPC Endpoint Policies.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So they look like this, and as the name indicates, they are attached to VPC endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 3:
- Concepts: Identity-Aware Access, Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So in this example, we have a VPC endpoint policy which is saying that anyone that accesses it, so anyone because principal star that does a list bucket, get bucket, or put objects, so three API calls, is going to be authorized on the bucket itself as well as any objects within the bucket.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That's the resources part.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then the conditions is that the principal ARN has to be that of a role named test role.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the principal in the effect is allowed.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So meaning that this endpoint policy is allowing a specific role to access it and to do three kinds of operations on one specific bucket and its objects.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's quite detailed.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And of course, the VPC endpoint policy will control which principles can use the VPC endpoint to access services.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now these can be attached to both interface endpoints and gateway endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And as seen in this example, this restricts specific API calls on specific resources.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: One thing to note is that it does not override or replace identity based policies or service specific policies.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: Identity-Aware Access, Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So even if the VPC endpoint policy is allowing this role to use the VPC endpoint it does not mean that it's going to authorize the API call on the target resource.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 14:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: For this. we'll still need the IAM role, or the policy or the resource based policy, for example industry buckets, to authorize this call.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We'll see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The benefit of it though is that we can control from a network perspective who can access our buckets privately.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Now, you should note that the AWS principle org ID condition which is something that can come up in the exam, can be used to restrict access only within the organization, therefore, guaranteeing that your VPC endpoint is only used by accounts of your organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Connectivity architecture and routing signal.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: In this example, we have an SQS queue and we wanna guarantee two things.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Number one, that it is accessible from within our organization, and number two, that it will be only accessed through the VPC endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, first of all, we have to attach an SQS resource policy to our SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And if we have a look at this resource policy, we're saying that we allow anyone to send a message and receive a message as long as the target queue is the resource of the ARN of the queue itself.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And then the conditions strings equal is saying only if the source VPC endpoint is the VPC endpoint from before then this is allowed.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 25:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Therefore, if a request comes to the queue on its own without the VPC endpoint, it's going to be refused because of that condition.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 26:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 27:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So this effectively guarantees that all member accounts through this VPC endpoint can access my SQS queue and do a send message and receive message.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 28:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Hopefully that makes sense into the power of VPC endpoint policies.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 29:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: So we'll see the authorization logic in greater detail in a future section.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: But just to give you an idea of how this works, so say we have a VPC endpoint policy and an IAM user then they're both going to be evaluated.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 31:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Otherwise, the IAM user will not be able to go through the VPC endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 33:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 34:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And of course, you must not have an explicit deny on your VPC endpoint policy either.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 35:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So what I wanted to show you here, is that they're both evaluated regardless, is that even if the VPC endpoint policies allows it, there is still protection at the IAM user level, or the resource policy as we'll see right now.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 36:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So in this slightly more complicated use case where we have a VPC endpoint policy, a resource policy, for example, an S3 buckets policy, as well as an identity based policy, for example, an IAM role, then what happens?
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 37:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Again, we need to be explicitly allowed through the VPC endpoint policy.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: There is no way around it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then the combination of resource policy and identity based policy must give you an explicit allow and no explicit deny.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 40:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: So if the resource policy alone authorizes the IAM role, that's perfect, or if the IAM role itself has enough permissions to access the resource, that's perfect as well as long as there is no explicit deny.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/090_VPC Endpoint - Examples.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The first one is CodeDeploy.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So CodeDeploy is a way to deploy new application versions onto your EC2 instances, for example.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And these EC2 instances, they're going to run the CodeDeploy agent, and the CodeDeploy agent is going to be making API calls to the CodeDeploy service.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: Now obviously if your EC2 instance is in a private subnet then this agent must have networking capability to the CodeDeploy service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 7:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: The first one is an interface endpoint directly into the CodeDeploy service itself.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is for all CodeDeploy API operations.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy is going to be sending some commands directly to the agent on the EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And so as you can see, two VPC endpoints may be required for CodeDeploy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 11:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 12:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That is only reserved for EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The next service that you may have questions on is Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So with Secrets Manager, say we have a Lambda function and it wants to access privately the Secrets of Secrets Manager, for example, to get a database password.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Amazon VPC
- Key Insights: If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 17:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 18:
- Concepts: Egress Control, Private Connectivity
- Services: Amazon VPC
- Key Insights: If you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So with this setup everything goes privately and works really well.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Another service is the SSM Session Manager.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So with the SSM service, we can connect to EC2 instances using Session Manager.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And these EC2 instances, they may reside in private subnets without internet access.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, again, how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Well, first of all we need multiple VPC interface endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The first one is the SSM service itself.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So this service must allow the inbound 443 port on the security group to allow secure connections.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 27:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: The second one is the SSM Session Manager VPC interface endpoint called SSM Messages.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And again, it must allow the port 443 for inbound connections.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Amazon VPC, Security Groups
- Key Insights: Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can communicate together.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal; Segmentation and access boundary signal.

Line 30:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: Then we're going to need a VPC interface endpoint for EC2 messages because we have the SSM agent and we need access to SSM commands.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 31:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: If you're using KMS you're going to get optional KMS encryption by using the VPC interface endpoint for KMS.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 32:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: There's also CloudWatch Logs in VPC endpoint in case you're sending the logs to CloudWatch Logs, or Amazon S3 if you're using Amazon S3 for these logs.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 33:
- Concepts: Private Connectivity, Routing and Reachability
- Services: (none explicit)
- Key Insights: Finally, if you're using an S3 Gateway Endpoint and everything is private you must update the route tables as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 34:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, a lot of things are required for Session Manager, but that should make sense to you, considering how it works.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Next, for Patch Manager, something similar.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So we need to have access to the SSM service itself with its own VPC interface endpoints, and then there will be one called the SSM Commands VPC interface endpoint. called EC2 Messages, which is going to allow the SSM service to send commands into our EC2 instance.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 37:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 38:
- Concepts: Identity-Aware Access, Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And finally, because this VPC endpoint must access your patches, you must authorize through this VPC endpoint policy several buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 39:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The first one is the patch-baseline-snapshot for your specified region.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The second one is the aws-ssm for your specified region, or any other S3 bucket required by SSM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: And finally, if you wanted to send the logs of the Patch Manager utility to CloudWatch Logs you must have your own VPC interface endpoint as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Next, you should know how VPC endpoints work for the API Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 43:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So if you define a private REST API in API Gateway, you can only access it using the VPC interface endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: There's no way around it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So that means that in this diagram, what's missing is the VPC interface endpoint for the execute API endpoint.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 46:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So once we have this in place, then the EC2 instance can access our private API.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 47:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: Of course, for it to work, we must have the correct VPC endpoint policies, and they must use together with the API gateway resource policies.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Connectivity architecture and routing signal.

Line 48:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: So that means that using a resource policy, you can actually restrict access to your private API from a specific VPC or VPC endpoint.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 49:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So this is the kind of API resource policy you can have in which you're saying, hey I'll allow anyone to execute this API but you cannot invoke it if you don't come from the specified VPC, thanks to this condition.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 51:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You've seen several examples.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 52:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: A bit redundant, but hopefully you get the point and you understand the whole complexity and power of VPC interface endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 53:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/091_[SOA] PrivateLink.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So now let's talk about how we can expose services in our VPC to other VPCs.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So option number one is to make it public.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And in which case, the traffic of internet, we go through the public internet and it's tough to manage access.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So here's an example.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: We have a service VPC with an application service and customer VPC with internet gateways and through the public internet, they can communicate.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this works, but it is not very optimal.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It's not reliable because it goes through the public internet.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I mean, there's definitely some better options.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: Option number two, you may think of based on what you've seen in this section is to use VPC peering.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And in this case, in case you need to have one VPC connected to multiple customers VPCs you need to set up if you're hearing connections between all these VPCs together and that's a lot.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And on top of it, when you set up a VPC incorrect peer in connection, you open up the whole network of one VPC to another Whereas all you wanted was just to externalize one application service.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So as you can expect, there is a better way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: Private Connectivity
- Services: Amazon VPC, PrivateLink, VPC Endpoints
- Key Insights: And this way is called AWS PrivateLink which is what powers the VPC endpoints.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 14:
- Concepts: Private Connectivity
- Services: Amazon VPC, VPC Endpoints
- Key Insights: And this one is also called the VPC endpoint services.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So it's a more secure and scalable way to expose the service, say to thousands of VPC, either in your own or other accounts.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this is what the exam will test you on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: You want to expose the service to thousands of VPC?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: What do you use, all the answer is PrivateLink.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: So it does not require a VPC peering or internet gateway, or knots or route tables.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 20:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You know, it's actually kind of magical.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So the way it works is that you have a service VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: If your application service and a customer of VPC with a consumer application now to expose your service, you need to have a network load balancer and an ENI or a gateway load balancer, but networks of balancer there are most common.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this network load balancer is going to expose our application service.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And on the customer VPC side, we're going to create an ENI.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: And this ENI through PrivateLink is going to be connected to your network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And this is going to go all through the private network of AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: And this is the power of PrivateLink.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: Routing and Reachability
- Services: Amazon VPC, VPC Peering
- Key Insights: So in this example, to establish a connection between the NLB and the ENI there was no need to establish VPC peering before.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And that's really, really, really powerful as a concept.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So if the NLB is in multiple availability zones, then you need also ENIs in multiple availability zones and you have a fault tolerance solution on top of that.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So highly secure, highly scalable doesn't require much setup and really is a good way to have a filter and solution.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: So PrivateLink is an awesome solution.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: So a way you could set us up, for example, just to show you how everything can be used is for using PrivateLink with ECS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we have an ECS service with multiple tasks.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: They're exposed to an application about an answer, okay, but we know that we need a network load balancer to expose this.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So how do we do it?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, we connect a network load balancer to the application load balancer, because the ALB can now be a targets of the NLB.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: The PrivateLink can be established directly into your NLB.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: And so for other VPCs it could be an ENI directly into PrivateLink.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: Hybrid Networking, Private Connectivity
- Services: AWS Direct Connect
- Key Insights: And for your corporate data center, it could be a private connection, for example, going over direct connect or a VPN connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: Private Connectivity
- Services: PrivateLink
- Key Insights: So that's it for PrivateLink.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/092_[SOA] PrivateLink - Hands On.txt

Line 1:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So let's go on the left hand side under endpoint services to create a private link for one of our services.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So if we do so, we have to name it which was a log-end user type.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, you will choose network and then you will need to specify a network load balancer in here that you have created from before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So once the NLB is created, then you can specify additional settings for your endpoint whether or not you want acceptance.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 5:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And then the supported IP you want for that private link.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: IPv4 or IPv6.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So we can't do this right now but we would have here an endpoint service connected to our network balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 8:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: And then to link it to your VPC, you would go on Endpoint.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 9:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: You would create an endpoint.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 10:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And this time, instead of choosing AWS services as the type of the endpoint, you would use a other endpoint services and you would type the service name you would've obtained from the previous step.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: Then you would deploy this in the VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: For example, the demo VPC and voila.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: You would have a private connection from one service in another VPC to your own VPC privately without either going to the public internet, okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture, very theoretical but I wanted to show you the options.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/093_[SAA_SOA] NACL & Security Groups.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: Okay, so let's go for a very long lecture on Security Groups and Network ACLs or NACLs.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 2:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 3:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: But there is an extra level of protection on the subnet that we haven't seen yet, which is your network ACL or NACL.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 4:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: And let's take an example to really understand the role of a NACL in an incoming request.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So a request goes to your EC2 instance, now what is happening from a network perspective?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Well, first the request is going to make it to the NACL before going into the subnets.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 7:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: And so there are going to be some inbound rules on the NACL that are going to be defined.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And if the request is not allowed, then the request doesn't go in.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And if it is allowed, then it will go in, right?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So the NACL is stateless.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we'll see what that means in a second.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: So the first request goes through the NACL and then it reaches inside the subnets and it goes through the security group inbound rules, okay.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we know how this works.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So again, if the request is not allowed explicitly then it is denied.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: Now something about security group is that they are stateful.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: So remember NACLs are stateless and security groups are stateful.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: That means that if the request makes it through the inbound rules of the security group and makes it to the EC2 instance, the EC2 instance will then reply with whatever reply there is to do for the application perspective.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 19:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: And then the outbound is automatically going to be accepted at the security group level.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 20:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: This is because the security group is stateful.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That means whatever is accepted in can go also out.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So here, there is no rules being evaluated.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: And the security group outbound rules are not mattering in this example.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 24:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: So now that we know that the outbound at the security group level is always allowed because it's stateful, what happens still?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 25:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Network ACL
- Key Insights: Well the NACL is not stateful, it is stateless, and therefore, because it is stateless then the NACL outbound rules are going to be evaluated.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And again, if they are not passing, then the request will not make it through.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is for an incoming request.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 28:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now let's go through the same scenario, but for an outgoing request, and you can try doing this on your own by pausing the video, just to see if you understand the difference between stateful and stateless.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Did you try?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's go.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: So the security group this time, so the EC2 instance is making an outbound request.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's doing a request to the outside.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So is the traffic allowed out from the EC2 instance to the web?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Network ACL
- Key Insights: Then if the rules are good and the request is allowed, then the request goes through the NACL outbound rules as well.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 37:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So they're evaluated.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Then the request reaches www.google.com, it comes back to Amazon web services, and obviously the NACL is stateless and therefore the NACL inbound rules are going to be evaluated.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 39:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: And finally, while the inbound within the subnet at the security level is also going to be allowed no matter what, because of the statefulness of your security group rules.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 40:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So here the inbound rules of your security group do not make a difference because the admin roles was already accepted and your security group is stateful.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that is a very clear explanation between stateful and stateless.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what are Network Access Control List, NACLs?
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 43:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Well they're like a firewall that control the traffic to and from the subnet level, and you have one NACL per subnet, and each new subnet will be assigned the default NACL.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 44:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: We'll have a look at the default NACL in the next slide.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 45:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So you define NACL rules and rules have a number from one to 32,000 and so.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 46:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And there's a higher precedence with a lower number, so one is the highest priority and the latest is 32,000 and so on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the first rule match will drive the decision, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 48:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 49:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: In that case, the first rule match will drive the decision.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 50:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The less rule is an asterisk and will deny any request in case of no rules match.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 51:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now, AWS recommends adding rules by increments of 100.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 52:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the reason is that if you want to add rules in between then, you are fine.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 53:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, so newly created NACLs will deny everything by default.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 54:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And NACLs have a very, very good use case.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 55:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: They're great for blocking a specific IP address at the subnet level.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 56:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So NACLs in this diagram, where are they?
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 57:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So we have this diagram we know about, but NACLs again are at the subnet level.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 58:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: (none explicit)
- Key Insights: And so we can have NACLs at the public subnet, private subnet level and so on.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 59:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So the default NACL is super important because it can come up in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 60:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Network ACL
- Key Insights: And the default NACL has this one specificity that it accepts everything inbound and outbound with the subnets it's associated with.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 61:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So this is what the default NACL looks like for the IPv4.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 62:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It allows everything out and everything in.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 63:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And that makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 64:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 65:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: But the default NACL is very open.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 66:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Now my recommendation is to not modify the default NACL.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 67:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Instead, if you want to have some custom Network ACLs, then create a custom one.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 68:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Okay, but if the exam mentions to you, that there is a default NACL, just know that by default this NACL will disassociate it with subnets.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 69:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: If this NACL is associated with subnets, sorry, then it will allow everything in and everything out.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 70:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's go into the important concept of Ephemeral Ports.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So when you have a client and a server connecting together, they must use port.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we have IP address and ports, and the clients connect to the server on the defined port.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 73:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 74:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 75:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the server also needs to connect to the clients to send a response.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 76:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the client does not have any open port by default.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 77:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 78:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this port is ephemeral because it's just a port that will be as long lived as the connection is between the clients and the server.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 79:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so what is that ephemeral ports?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 80:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 81:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: If you use Linux, then a good range will be 32,768 to 60,999, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 82:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So based on the different OS, you have different port ranges.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 83:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's go through concrete example to understand how that works.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 84:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the clients connects to a web server, the web server has a fixed IP and a fixed ports.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 85:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the client is saying, hey, here's my IP, and I will open for this one request or this one connection, an ephemeral port of five, zero, one, zero, five.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 86:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So the request sent from the client to the server is, Hey, here is the destination IP, here is the destination port of the server that you connect to, here's the payload of my request, so what I'm requesting, and here is my source IP, by the way, for the reply, and here is my source ephemeral ports for the replay as well, which is five, zero, one, zero, five.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 87:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 88:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, the server port, and then the destination IP is 11.22.33.44, here is the response payload.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 89:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And finally, where we'll also need a port it will reuse the ephemeral port that the client has sent.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 90:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this is why it's called ephemeral port it's because it's a random port that is assigned just for the connection life.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 91:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So now, why do I mention ephemeral ports?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 92:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, because they're very important in terms of NACLs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 93:
- Concepts: Private Connectivity, Segmentation and Isolation
- Services: Network ACL
- Key Insights: So if you consider a client's connecting to a database and we have a private subnet and a public subnet, we have one NACL associated with each subnet.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 94:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So a web NACL and a DB NACL.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 95:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 96:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Network ACL
- Key Insights: Well, if you consider the first NACL we need to allow outbound TCP on port three, three, zero six to the database subnet CIDR, that makes sense.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 97:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, the request will not leave the subnets.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 98:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: And then from a database perspective, then the DB NACL says, Hey, I need to allow inbound TCP on port three, three, zero, six from the web submit CIDR.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 99:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 100:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Now, here's the tricky part.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 101:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: When the database sends back the request to the clients, what do you think needs to happen?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 102:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, the client has an ephemeral port, right?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 103:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so as such, they will be a random ports being assigned for this request.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 104:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Network ACL
- Key Insights: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 105:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And this is why ephemeral ports are super important to configure well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 106:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So if you want to learn more, there's a link to the documentation.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 107:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: Another thing about NACLs you need to know is that if you have multiple NACLs and multiple subnets, then each NACL combination needs to be allowed within the NACL, because you're using CIDRs and each subnet will have its own CIDR.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 108:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 109:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: So to summarize, what is the difference between a security group and a NACL?
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 110:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: Well the security group operates at the instance level, whereas the NACL is at the subnet level.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 111:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- Hidden/Implicit Meaning: Constraint or limitation signal; Segmentation and access boundary signal.

Line 112:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: Security groups are stateful, so automatically return traffic is allowed regardless of the rules, whereas NACL is stateless, that means that every time the inbound and outbound rules will be evaluated and think of ephemeral ports as a reminder.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 113:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: Now for security group, all rules are going to be evaluated to decide whether or not to allow traffic, whereas for a NACL, the ones that will be having the highest priority will be evaluated first, and the first match wins.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 114:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 115:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So that sits for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 116:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense and I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/094_[SAA_SOA] NACL & Security Groups - Hands On.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at our network ACL's.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: To do so, I will go on the left hand side and there's network ACL's.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: And for our sub for VPC, we have a network ACL here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: This is the default, NACL.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, it's very important to notice this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And currently it's default.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, it's associated with four subnets.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So, we have inbound rules and outbound rules.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then if we look at the inbound rules, we allow all traffic on all parts everywhere.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then there's the last row which was denied, but it doesn't ever get to effect because this one goes into effect before.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: And then for the outbound rules the same.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: Egress Control, Identity-Aware Access, Segmentation and Isolation
- Services: Network ACL
- Key Insights: So, remember the default, NACL, always has all traffic, inbound and outbound authorized, and the default is going to be associated with any subnets you're going to create, hence the name default NACL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 14:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So, now let's go ahead and have a place or to do so, I'm going to go into my EC2 instances, my NAT instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: Sorry, my Bastion host.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to start a HTTP server on it to connect to it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, to do so let's connect into our instance, let's connect, and I'm going to install HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So sudo, yum, install, minus Y, HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Then we're going to start the web server.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So I will do, system, CTL, sudo, system CTL, enable HTTPD, and then sudo, system CTL, start HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Let's clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to echo "hello world" into our var/www/html/index.html and we'll have sudo for this command.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo, su, echo, hello world into again, this file.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, this should work right now, so let's try it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 26:
- Concepts: Segmentation and Isolation
- Services: Bastion Host, Security Groups
- Key Insights: So, now the other thing we have to do is we need to make sure that the Bastion host has this public instance has HTTP enabled for the security group.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 27:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, right now we only have 4 22.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So, therefore in the security group rules, I'm going to edit the inbound rules and I'm going to add a rule for HTTP and then from anywhere, save this rule.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: Bastion Host
- Key Insights: So back into our instance, this is our bastion host, and I can just click on this IP address right here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Copy it, open it in a new tab and I get, "hello world." So, this is good.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We are able to connect into our server and it replies "hello world" to us.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at network ACL's now.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So, if I look into this default NACL, and look at the inbound rules, what I'm going to do is I'm going to edit these rules.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And currently we allow all traffic from anywhere, okay, but we're going to add a new rule.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And the rule number is going to be rule 80 and the type is going to be HTTP, and it's going to come from anywhere and we are going to deny it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, let's save these changes and we can sort them by rule number.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see, this rule has precedence over that rule.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, what do you think is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 40:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, now that we have enabled this inbound rule, that blocks HTTP traffic.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: If I go back to my EC2 instance and refresh this page, I'm getting, you see, an infinite loading.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So, that means that yes, there's a timeout and the NACL acted as a firewall and blocked my request.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 43:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But if I edit my inbound rules and now the rule number is 140.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, and save this again.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And look again at the inbound rules, as you can see now, rule 140 happens after rule 100 and there's a denial.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 46:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, what do think is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go back and refresh, I'm accessing my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 48:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, what's happening is that even though there was an explicit deny rule, happening here, because the rule number 100 had higher precedence and allowed that specific traffic in, then it works.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 49:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 50:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, as we can see, this shows the very important aspects around the rule numbers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 52:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: And similarly, I want to show the statelessness of the NACL.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 53:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So, if I go into outbound rules and there's this rule right here, that allows everything right now, if I edit it and instead do deny, well, what is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 54:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Segmentation and Isolation
- Services: Network ACL
- Key Insights: So, let's go back into my instance, refresh this, and you can see I'm getting this infinite loading, because well, my NACL does not allow return traffic, because it was not explicitly specified in my NACL, that return traffic was allowed.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 56:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 57:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: So, NACL's and security groups work hand-in-hand together.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 58:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: And if the security group rules look fine, that doesn't mean that the network ACL's are fine.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 59:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, this is something else to check in case of network issues.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 60:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, let me revert this to allow and do another demo.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 61:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'm back into my instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 62:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: This is working now.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 63:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: And so if we look at the security group rules here, as we can see, port 80 is allowed on everywhere.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 64:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: And for outbound rules, it says allow from everywhere as well, but let's edit this security group.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 65:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, for the inbound rules, I will not change them.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 66:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So, I will keep HTTP on, but for the outbound rules, I'm going to edit this rule and I'm going to just remove it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 67:
- Concepts: Egress Control, Segmentation and Isolation
- Services: Security Groups
- Key Insights: And as you can see, now, we don't allow any outbound from the security group, but the security group is stateful.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 68:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: That means that if the traffic is initiated from the outside and is allowed inbound, then the return traffic will be authorized as well.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 69:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: So, let's prove it, even though there is no outbound rule.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 70:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: If I refresh this page, as you can see, this is working, I can access my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 71:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But if my EC2 instance was trying to initiate a connection, for example, not here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 72:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 73:
- Concepts: Segmentation and Isolation
- Services: Network ACL, Security Groups
- Key Insights: But if it did allow it, then the return traffic would be allowed because again, security groups are stateful, whereas NACL's are stateless.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 74:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, to make things, everything work again.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 75:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: And once you have all HTTP from anywhere allowed, and this is going to restore these outbound rules on my EC2 instance, okay.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 76:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 77:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: But hopefully this was a good demo.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 78:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 79:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/095_Security Groups Outbound Rules & Managed Prefixes.txt

Line 1:
- Concepts: Egress Control
- Services: Security Groups
- Key Insights: So let's talk about security groups, outbound rules for a second.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 2:
- Concepts: Egress Control
- Services: (none explicit)
- Key Insights: By default the outbound rules allow anywhere with this CIDR, but we can remove and just allow specific prefixes.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: Egress Control, Identity-Aware Access
- Services: (none explicit)
- Key Insights: So here is an example of an outbound rule, and as you can see, it authorizes the port 443 of a destination to be Amazon S3 in the US East 1.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: Identity-Aware Access
- Services: (none explicit)
- Key Insights: So it looks like from this we have used a prefix destination so that the only amount authorized is to S3.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so as such, we can introduce the concept of managed prefix lists.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Routing and Reachability
- Services: Security Groups
- Key Insights: So it's one or more CIDR blocks and it makes it easier for you to configure your security groups and your route tables.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Segmentation and access boundary signal.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So in your account, for example, you can define your custom prefix list.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: For example, this CIDR 1, CIDR 2, and CIDR 3.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: You can share them to another account such as in the security group, inbound rules.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You can actually reference the prefix list that you've defined in Account A.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So these customer manage prefix lists are a set of CIDR that you define and that you manage yourself, and they can be shared with other accounts or within your organization.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: This allows you, for example, that if the Account A wants to modify the prefix list once, it will be applied to many security groups at once.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The other option is to use the AWS managed prefix list.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's a set of CIDR for AWS services, but you can't create, modify, share, or delete them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You can only use them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/096_Security Groups - Extras.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: Security Groups
- Key Insights: So now let's learn something about security groups that can come up in the exam.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 2:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: So it turns out that when you have a security group, if you modify a rule, it will never disrupt the tracked connections.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Segmentation and access boundary signal.

Line 3:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That means that any existing connections are kept until they time out.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let me give you an example so you'll understand it better.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: Segmentation and Isolation
- Services: Amazon VPC, Security Groups
- Key Insights: So say we have an instance and a public subnet and a VPC and we have a security group that allows people to SSH on port 22 from anywhere.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: That means that us, as a user from a computer, we can SSH into our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: Now, say for example that the SSH connection is open but then we remove that rule from the security group, what do you think will happen?
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 8:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, it turns out that yes, the connection will still be working, because it will be opened and it will be allowed at the time the rule was out there.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this connection will only close when it times out.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So how do we proceed for, for example, forcing the closure of that connection?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Well, you can use network ACLs.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Segmentation and Isolation
- Services: (none explicit)
- Key Insights: So this allow you to block the connections immediately, so you define them at the subnet level and then you would add a rule, the first one, to deny any traffic on port 22.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 13:
- Concepts: Egress Control
- Services: Security Groups
- Key Insights: Because NACLs are stateless, they are evaluated all the time for all inbound and outbound traffic and therefor, the connection will be closed, but because security groups are stateful at the time when the connection was allowed in, the return traffic is also allowed back and the connection remains open as long as it is not timing out.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 14:
- Concepts: Segmentation and Isolation
- Services: Security Groups
- Key Insights: And so therefore, even if you remove the rule from the security group, the connection will work out.
- Hidden/Implicit Meaning: Segmentation and access boundary signal.

Line 15:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And that is a scenario that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 16:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/097_[SAA_SOA] AWS Transit Gateway.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if we look at common network topologies in AWS it can become quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect, Amazon VPC
- Key Insights: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 3:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: So, AWS came up with the transit gateway to solve that problem, and you're going to have a transitive peering connection between thousands of VPC, your on-premises data center, your site-to-site VPN, direct connects in a hub-and-spoke star connection.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 4:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So let's have a diagram.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 5:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: We have transit gateway in the center and you can connect multiple VPCs through the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 6:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: So in this example, we don't need to peer the VPCs together, they are connected transitively through the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So in this example, all the VPCs can talk to each other.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Direct Connect, AWS Transit Gateway, Amazon VPC
- Key Insights: But also, you can connect a direct connect gateway to the transit gateway, so it shows you have a direct connect connection directly in to many different VPC.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 9:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: Or if you are preferring site-to-site VPN and VPN connections, you can connect your customer gateway and your VPN connection into your transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 10:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: Again, one more time, giving you access to all these VPC as part of the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this really solves some network problems.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: It's a regional resource and it can work cross-region, and you can share your transit gateway across accounts by using the resource access manager.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 13:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: You can also peer transit gateways across region.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 14:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, how do you define who can talk to what?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 15:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal.

Line 16:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: So, you get full control over the routing of all the traffic within the transit gateway to give you network security.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 17:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Direct Connect, AWS Transit Gateway
- Key Insights: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- Hidden/Implicit Meaning: Constraint or limitation signal; Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 18:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 19:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So, it's quite technical but the question can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: So, ECMP means equal-cost multi-path routing.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 21:
- Concepts: Routing and Reachability
- Services: (none explicit)
- Key Insights: It's a routing strategy to allow to forward a packet over multiple best path.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 22:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 23:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: So, let's take this example where we have a transit gateway and we have four VPCs attached to our transit gateway, and we have a corporate data center that is connected using site-to-site VPN to a transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 24:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 25:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 26:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: But with transit gateway, you can have multiple site-to-site VPN so you can create a second site-to-site VPN attachment and into your transit gateway, so this creates four tunnels.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 27:
- Concepts: Hybrid Networking
- Services: Amazon VPC
- Key Insights: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Hybrid connectivity operating model signal.

Line 28:
- Concepts: Hybrid Networking, Private Connectivity
- Services: Amazon VPC
- Key Insights: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- Hidden/Implicit Meaning: Constraint or limitation signal; Hybrid connectivity operating model signal.

Line 29:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And in this case, a VPN connection is made of two tunnels.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 30:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: But if you are using a VPN into a transit gateway, you get one site-to-site VPN into many VPC because they're all connected transitively to the same transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 31:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: And also, one site-to-site VPN connection gives you 2.5 Gbps thanks to ECMP, because the two tunnels are going to be used through that strategy.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 32:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is an exam question you need to know.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 35:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Direct Connect, AWS Transit Gateway
- Key Insights: Finally, you can share your direct connect connection between multiple accounts, again, using the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: How do we do this?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Direct Connect, AWS Transit Gateway
- Key Insights: Well, we're going to establish a direct connect connection between your corporate data center and a direct connect location, and then we're going to set up a transit gateway into both VPCs in two different accounts, okay?
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 38:
- Concepts: Routing and Reachability
- Services: AWS Transit Gateway
- Key Insights: So this is something we can do with the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal.

Line 39:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Direct Connect, AWS Transit Gateway
- Key Insights: And then, we connect the direct connect location into direct connect gateway and connect that gateway into the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 40:
- Concepts: Hybrid Networking, Routing and Reachability
- Services: AWS Direct Connect, AWS Transit Gateway, Amazon VPC
- Key Insights: And what this just allowed us to do is to share a direct connect connection between multiple accounts and multiple VPC, which is very handy thanks to the transit gateway.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 41:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 42:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/098_[SAA_SOA] Direct Connect.txt

Line 1:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: Now let's talk about Direct Connect, and you may also see it as DX in the exam.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 2:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: So it provides a dedicated private connection from the remote network into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 3:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So you need to set up that Direct Connect connection and it is using an AWS Direct Connect location.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 4:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: You also need to set up a virtual private gateway on your VPC side to make the connectivity between your on-premise data center and AWS.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 5:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: The idea is that on the same connection you can access both public resources such as Amazon history and private resources, such as EC2 Instances using the the public VIF and the private VIF.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 6:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So what are the use cases for Direct Connect?
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 7:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: Well, you get increased bandwidth throughputs, that means that if you're working with large data sets, is going to be faster because it doesn't go over the public internet, and also you're going to have lower cost because you're using a private connection.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 8:
- Concepts: Hybrid Networking, Private Connectivity
- Services: AWS Direct Connect
- Key Insights: Also, if you have connectivity issues using the public internet, we'll using Direct Connect you get a more consistent network experience, again because it is private.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 9:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is especially helpful if you have applications using real time data feeds.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 10:
- Concepts: Hybrid Networking
- Services: (none explicit)
- Key Insights: Finally, it supports hybrid environments because you have connectivity between your own premises data center and the cloud.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 11:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: It supports both IPv4 four and IPv6.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 12:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So let's look at a diagram of Direct Connect.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 13:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we have a region and we want to connect it into our corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 14:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So for this, we're going to commission an AWS Direct Connect location, their physical locations that you have to find but it's all obviously on the website of AWS, and there's going to be a Direct Connect endpoints, and there's going to be a customer or partner router that you have to rent from a customer or partner cage.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 15:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So you have two cages in this Direct Connect location, and then on your on-premise data center, you're going to set up a customer router with a firewall.
- Hidden/Implicit Meaning: Connectivity architecture and routing signal; Hybrid connectivity operating model signal.

Line 16:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: Now you're going to set up a private virtual interface, so private VIF first to access your private resources into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 17:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So to do so, you set up the private VIF in between all these locations into a virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 18:
- Concepts: Private Connectivity
- Services: Amazon VPC
- Key Insights: And this virtual private gateway is attached to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 19:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And through the private VIF, you are able to access your private subnets with your EC2 Instances.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 20:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And as you can see, all these things happen privately, so you need to set up that connection manually, it can take a month to set up, but none of this goes over the public internet, it is all a private connectivity.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 21:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: The alternative is to connect to public services within AWS such as Amazon Glacier, Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 22:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And for this, you're going to set up a public virtual interface or public VIF.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 23:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And so it goes through the same path but it doesn't connect into a virtual private gateway, it connects directly into AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 24:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So what if you want to connect to one or more VPCs in different regions?
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 25:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: For this, you must use a Direct Connect gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid connectivity operating model signal.

Line 26:
- Concepts: VPC Connectivity Operational Context
- Services: Amazon VPC
- Key Insights: So we have an example where we have two regions, and they have two different VPC, we have two different CIDRs and we want to connect our on-premise data center into both VPC.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 27:
- Concepts: Hybrid Networking, Private Connectivity
- Services: AWS Direct Connect
- Key Insights: So we're going to establish a Direct Connect connection, then using the private VIF, you're going to connect it to Direct Connect gateway.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 28:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: And this gateway will have a private virtual interface into a virtual private gateway in the first region and another one in the second region.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 29:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So using the setup, we can start connecting to multiple VPCs and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 30:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's discuss the connection types for Direct Connects.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 31:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: We have a dedicated connection, it could be 1, 10 or 100 gigabits per second capacity, and we get a physical ethernet port that is dedicated to us.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 32:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: And first we need to make a request to AWS, and then it will be completed by an AWS Direct Connect partner.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 33:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Or we can get a hosted connection, and they come in different flavors such has 15 megabits per second, 500 megabits per second up to 10 gigabits per second.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 34:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: And again, we make connection requests via via AWS Direct Connect Partners.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 35:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And then we can add capacity on demand, so we can add or remove capacity on demand, so it's a bit more flexible than a dedicated connection.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 36:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so we can get one, two, five 10 gigabits available at select locations.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 37:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And to set up either a dedicated or a hosted connection, the lead times are often longer than one month to establish a new connection.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 38:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So in the exam, they will ask you questions around, hey we want you to transfer some data within a week and we want it to be fast.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 39:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So an answer can not be Direct Connect because Direct Connect takes often more than one month to establish.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 40:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So you need to look into question whether or not there's already a Direct Connect established, and whether or not the time to transmit the data is less or greater than one month.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 41:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: Now, when you have a Direct Connect, there is no encryption.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 42:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So data is not encrypted but it is private because it is a private connection.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 43:
- Concepts: Hybrid Networking, Private Connectivity
- Services: AWS Direct Connect
- Key Insights: And so if you want an encryption on top of it, you can set up Direct Connect to be alongside a VPN to provide IPsec encrypted private connection.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 44:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So it's good to get an extra level of security but it's slightly more complex to put in place.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 45:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So to set up is to get the Direct Connect location, but then on the connection, you're going to set up a VPN connection on top of it, to have encryption for your Direct Connect and therefore all the traffic between your corporate data sensor to AWS is going to be encrypted.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 46:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: Now, one last thing that can come up in the exam, is around resiliency for Direct Connect.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 47:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So we have two modes of resiliency and architectures and you need to know them both because they will be coming up at the exam.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 48:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: You have a high resiliency for critical workloads where we set up multiple Direct Connects.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 49:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So we have two corporate data centers and we have two different Direct Connect location, and this gives us some redundancy.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 50:
- Concepts: Private Connectivity
- Services: (none explicit)
- Key Insights: So in the first case, we have a private VIF here and we have a private VIF here.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 51:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: And so here we get one connection and multiple locations, and so if one of the Direct Connect location goes down, then at least we have some backup Direct Connect location somewhere else and so this gives us high resiliency, and this is good for critical workloads.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 52:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: But if you want to get to maximum resiliency for critical workloads and I emphasize the word maximum because it can come up in the exam, then you're going to have to set up again two Direct Connect locations, but this time each Direct Connect location will have two connections independence to give you maximum resiliency.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 53:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So in this use case, we have four connections across two locations, sorry, going into AWS.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 54:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: And so a maximum resilience is achieved by using separate connections, terminating on separate devices in more than one location.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 55:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: So that's it for Direct Connect.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 56:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/099_[SAA_SOA] Direct Connect + S2S VPN.txt

Line 1:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Hi, so a very short lecture on an architecture that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 2:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect, Amazon VPC
- Key Insights: So the idea is that you have your corporate data center and it's connected to your VPC using Direct Connect.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 3:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect, Amazon VPC
- Key Insights: And that's your primary connection and it's expensive, but maybe sometimes you will have an issue with your Direct Connect connection, and of course, you do not want to have no internet connection into your VPC.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 4:
- Concepts: Hybrid Networking
- Services: AWS Direct Connect
- Key Insights: Therefore, you can use a Direct Connect as a secondary connection, but that would be quite expensive.
- Hidden/Implicit Meaning: Hybrid connectivity operating model signal.

Line 5:
- Concepts: Hybrid Networking
- Services: Site-to-Site VPN
- Key Insights: Or you can set up a site to site VPN connection as a backup connection and set it up so that if the primary connection fails, then it kicks in, and now you are connected through the public internet using site to site VPN, which can be a bit more reliable because the internet, public internet, may always be accessible, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid connectivity operating model signal.

Line 6:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: So this is an architecture that can come up in the exam and I just wanted to show it to you once, so that you know what to expect.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

Line 7:
- Concepts: VPC Connectivity Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes connectivity behavior detail.

## Step 2 — Consolidation

### 1. Concepts List
- Egress Control
- Hybrid Networking
- Identity-Aware Access
- Private Connectivity
- Routing and Reachability
- Segmentation and Isolation
- VPC Connectivity Operational Context

### 2. Services List
- AWS Client VPN
- AWS Direct Connect
- AWS Transit Gateway
- Amazon VPC
- Bastion Host
- DNS Resolution
- NAT Gateway
- Network ACL
- PrivateLink
- Security Groups
- Site-to-Site VPN
- VPC Endpoints
- VPC Peering

### 3. Features List
- association
- authentication
- authorization
- dns
- endpoint policy
- peering
- propagation
- resolver
- route table
- transit
- tunnel

### 4. Use Cases
- 076_[SAA_SOA] Bastion Host.txt:14: But instead of allowing everywhere from the internet access, because that could be a security risk, we can only restrict, for example, access from the public CIDR of your corporation or your internet access and so on.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:2: This is because we are able to SSH into this fashion host and from it, we'll be able to connect to an EC two instance in a private subnet.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:15: So we want to be into a private subnet, for example the private subnet a, and we're going to create a security group.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:27: So we're going to connect into our Bashian host.
- 078_[SAA_SOA] NAT Gateway.txt:21: And by editing them, we are going to be able to connect our Institute instance into our nuts gateway.
- 078_[SAA_SOA] NAT Gateway.txt:29: And there's no need to connect the atheist together through the route tables, because well, if an AZ goes down, then all the Eastern instances in that are also currently unassailable.
- 078_[SAA_SOA] NAT Gateway.txt:34: And that for in that instance, well, it depends on the instance type that you have, but the higher instance type, the more throughput you're going to have, the maintenance is obviously a managed service when they get way.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:12: Now, when you choose a subnet for the NAT Gateway which should be in so for high availability, we need to use multiple subnets.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:29: So what I'm going to do is pause the videos and get back to you when this is done.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:41: For example, we can do sudo yum, and then updates, for example, our operating system, without making this instance public, which is really good.
- 080_[SAA_SOA] Site to Site VPN.txt:25: And then, when this is done, then the connectivity will work.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:12: And then you would specify a Certificate ARN which allows AWS to connect into your VPN device on-premises and establish a secure connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:19: And then we need to connect these two things and therefore we need to create a site-to-site VPN connection.
- 082_[CCP] Client VPN.txt:6: Well, for example say you have deployed EC2 instances in a private VPC and you want to access them using a private IP.
- 084_[SAA_SOA] VPC Peering.txt:2: So the idea is that we can create VPCs and in different regions, different accounts and we want to connect them together using the AWS network.
- 084_[SAA_SOA] VPC Peering.txt:6: Maybe you could have VPC in other regions in other accounts, or even within your same accounts and you want to connect them.
- 084_[SAA_SOA] VPC Peering.txt:7: So in order for them not to connect, remember, I said, the VPC network CIDRs must be distant from each other because when we connect them together, if they have overlapping CIDRs, they will not be able to communicate.
- 084_[SAA_SOA] VPC Peering.txt:11: And this is allowing you to connect them together.
- 084_[SAA_SOA] VPC Peering.txt:19: So if you want to connect a VPC from one account A, to account B, you could, and also across regions.
- 084_[SAA_SOA] VPC Peering.txt:26: We're here and now we're going to add a VPC peering connection to connect our VPC to other VPCs.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:16: And what I want to do is to connect and make sure this default instance VPC can connect to the instance in my BastionHost.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:36: Well, because there is no way for our EC2 instance right now in this VPC to connect to the two instance in another VPC.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:38: So we're going to connect them.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:42: So we're going to say that the requester is my demo VPC, and then we're going to select another VPC to connect to.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:61: Okay, so we want to connect this and that's.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:62: So let's start with a public route table and I will go to routes and then edit routes and I will have a destination.
- 086_[SOA] DNS Resolution Options in VPC.txt:14: So when you enable the DNS support setting, then you can leverage route 53 to resolve the public DNS names within the internet.
- 086_[SOA] DNS Resolution Options in VPC.txt:26: Well, if you have a custom DNS domain name in a private hosted zone in Route 53, and you said to both of these attributes to true, then you can create this private hosted zone as we'll see in the hands-on for example, web.mycompany.private as a record of type A and the value 10.0.0.10.
- 086_[SOA] DNS Resolution Options in VPC.txt:28: And you're EC2 Instance when requesting that private DNS name, we'll look it up to the Route 53 resolver, which we'll look up the private hosted zone and say, yes, I know what this is.
- 087_[SOA] DNS Resolution Options in VPC - Hands On.txt:33: So let's go into the easy to manage run console, and then I'm going to connect to my bastion hosts and connect to it.
- 088_VPC Endpoints - Overview.txt:2: These endpoints allow you to connect to AWS services using a private network instead of going over the public internet network, like you usually do.
- 088_VPC Endpoints - Overview.txt:6: So that means that an EC2 instance in the private subnet has the chance, for example, through a VPC endpoint gateway, to access Amazon S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:10: So for example, if you wanted to privately access CloudWatch, for example, to push metrics and logs from a private EC2 instance onto CloudWatch, what you would do is that you would create a VPC endpoint interface, which is an ENI that will live in your private subnet.
- 088_VPC Endpoints - Overview.txt:13: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- 088_VPC Endpoints - Overview.txt:19: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- 088_VPC Endpoints - Overview.txt:20: And this route table will contain, for example, as you can see here on the second line, the fact that the destination is for Amazon S3, and that the target goes through this VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:21: And therefore, thanks to this route table, whenever the EC2 instance tries to connect to the S3 service, it will be routed through the VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:30: This way, it's going to leverage the security groups for security, and you're going to have a private DNS, which is a setting when you create the endpoint.
- 088_VPC Endpoints - Overview.txt:35: So your clients can use, for example, athena.us-east-1.amazonaws.com, to resolve to any of the top addresses on the top.
- 088_VPC Endpoints - Overview.txt:41: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- 089_VPC Endpoint Policies.txt:14: For this. we'll still need the IAM role, or the policy or the resource based policy, for example industry buckets, to authorize this call.
- 089_VPC Endpoint Policies.txt:26: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- 089_VPC Endpoint Policies.txt:31: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- 089_VPC Endpoint Policies.txt:33: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- 089_VPC Endpoint Policies.txt:36: So in this slightly more complicated use case where we have a VPC endpoint policy, a resource policy, for example, an S3 buckets policy, as well as an identity based policy, for example, an IAM role, then what happens?
- 090_VPC Endpoint - Examples.txt:3: So CodeDeploy is a way to deploy new application versions onto your EC2 instances, for example.
- 090_VPC Endpoint - Examples.txt:15: So with Secrets Manager, say we have a Lambda function and it wants to access privately the Secrets of Secrets Manager, for example, to get a database password.
- 090_VPC Endpoint - Examples.txt:17: This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- 090_VPC Endpoint - Examples.txt:37: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- 091_[SOA] PrivateLink.txt:11: And on top of it, when you set up a VPC incorrect peer in connection, you open up the whole network of one VPC to another Whereas all you wanted was just to externalize one application service.
- 091_[SOA] PrivateLink.txt:34: So a way you could set us up, for example, just to show you how everything can be used is for using PrivateLink with ECS.
- 091_[SOA] PrivateLink.txt:41: And for your corporate data center, it could be a private connection, for example, going over direct connect or a VPN connection.
- 092_[SOA] PrivateLink - Hands On.txt:12: For example, the demo VPC and voila.
- 093_[SAA_SOA] NACL & Security Groups.txt:2: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- 093_[SAA_SOA] NACL & Security Groups.txt:34: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- 093_[SAA_SOA] NACL & Security Groups.txt:48: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- 093_[SAA_SOA] NACL & Security Groups.txt:54: And NACLs have a very, very good use case.
- 093_[SAA_SOA] NACL & Security Groups.txt:64: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:73: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- 093_[SAA_SOA] NACL & Security Groups.txt:74: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- 093_[SAA_SOA] NACL & Security Groups.txt:75: So the server also needs to connect to the clients to send a response.
- 093_[SAA_SOA] NACL & Security Groups.txt:77: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- 093_[SAA_SOA] NACL & Security Groups.txt:80: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:87: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- 093_[SAA_SOA] NACL & Security Groups.txt:95: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- 093_[SAA_SOA] NACL & Security Groups.txt:101: When the database sends back the request to the clients, what do you think needs to happen?
- 093_[SAA_SOA] NACL & Security Groups.txt:114: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:16: And I'm going to start a HTTP server on it to connect to it.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:32: We are able to connect into our server and it replies "hello world" to us.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:71: But if my EC2 instance was trying to initiate a connection, for example, not here.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:72: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:7: So in your account, for example, you can define your custom prefix list.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:8: For example, this CIDR 1, CIDR 2, and CIDR 3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:12: This allows you, for example, that if the Account A wants to modify the prefix list once, it will be applied to many security groups at once.
- 096_Security Groups - Extras.txt:2: So it turns out that when you have a security group, if you modify a rule, it will never disrupt the tracked connections.
- 096_Security Groups - Extras.txt:7: Now, say for example that the SSH connection is open but then we remove that rule from the security group, what do you think will happen?
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 096_Security Groups - Extras.txt:10: So how do we proceed for, for example, forcing the closure of that connection?
- 096_Security Groups - Extras.txt:13: Because NACLs are stateless, they are evaluated all the time for all inbound and outbound traffic and therefor, the connection will be closed, but because security groups are stateful at the time when the connection was allowed in, the return traffic is also allowed back and the connection remains open as long as it is not timing out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 097_[SAA_SOA] AWS Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 097_[SAA_SOA] AWS Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 097_[SAA_SOA] AWS Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- 098_[SAA_SOA] Direct Connect.txt:6: So what are the use cases for Direct Connect?
- 098_[SAA_SOA] Direct Connect.txt:13: So we have a region and we want to connect it into our corporate data center.
- 098_[SAA_SOA] Direct Connect.txt:21: The alternative is to connect to public services within AWS such as Amazon Glacier, Amazon S3.
- 098_[SAA_SOA] Direct Connect.txt:24: So what if you want to connect to one or more VPCs in different regions?
- 098_[SAA_SOA] Direct Connect.txt:26: So we have an example where we have two regions, and they have two different VPC, we have two different CIDRs and we want to connect our on-premise data center into both VPC.
- 098_[SAA_SOA] Direct Connect.txt:27: So we're going to establish a Direct Connect connection, then using the private VIF, you're going to connect it to Direct Connect gateway.
- 098_[SAA_SOA] Direct Connect.txt:41: Now, when you have a Direct Connect, there is no encryption.
- 098_[SAA_SOA] Direct Connect.txt:53: So in this use case, we have four connections across two locations, sorry, going into AWS.

### 5. Constraints / Limitations
- 076_[SAA_SOA] Bastion Host.txt:11: And we must put the bastion host in the public subnet.
- 076_[SAA_SOA] Bastion Host.txt:13: So for a bastion host perspective, the security group must allow access from the internet, okay?
- 076_[SAA_SOA] Bastion Host.txt:14: But instead of allowing everywhere from the internet access, because that could be a security risk, we can only restrict, for example, access from the public CIDR of your corporation or your internet access and so on.
- 076_[SAA_SOA] Bastion Host.txt:15: So that we have to restrict the EC2 security group of the bastion host as much as possible to guarantee that only a few select IPs can access it, because if somehow a random attacker has access to our EC2 instance as the bastion host, it could be a security risk for our infrastructure.
- 076_[SAA_SOA] Bastion Host.txt:16: Now, in terms of the security group of the EC2 instances in the private subnets, well, they must allow the SSH access, so on the port 22 again, from this time the private IP of the bastion host or the security group of the bastion host, this is equivalent.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:21: So here we have our private instance and because it is in a private sublet, as you know, we cannot use the EC two instance connect into it because that will not work.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:60: And I'm gonna keep this on video because this is a super important to see what can go wrong.
- 078_[SAA_SOA] NAT Gateway.txt:7: Now it cannot be used with an Institute instance within the same sub-net okay.
- 078_[SAA_SOA] NAT Gateway.txt:8: So the nugget weight can only be helpful if accessed from another sub-net.
- 078_[SAA_SOA] NAT Gateway.txt:13: Now the bandwidth is five gigabits per second, automatically scaling up to 100 gigabits per second, and you don't need to manage any security groups it's not required.
- 078_[SAA_SOA] NAT Gateway.txt:23: So the nugget weight is resilience only within a single availability zone.
- 078_[SAA_SOA] NAT Gateway.txt:30: So now let's just talk about the difference between net gateway and other instances, but there should be quite obvious.
- 078_[SAA_SOA] NAT Gateway.txt:46: And there's a link right here, but from an exempt perspective, there should be enough to insert any questions into choosing a NAT gateway versus in that instance.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:12: Now, when you choose a subnet for the NAT Gateway which should be in so for high availability, we need to use multiple subnets.
- 080_[SAA_SOA] Site to Site VPN.txt:16: Which IP address should we use?
- 080_[SAA_SOA] Site to Site VPN.txt:21: And then, that NAT device has a public IP, in which case, the IP address you should use for the CGW is the public IP of the NAT device.
- 080_[SAA_SOA] Site to Site VPN.txt:35: It's a low-cost hub-and-spoke model for primary or secondary network connectivity between different locations, but only using the VPN.
- 083_Client VPN - Client Authentication Types.txt:8: To do so, you must first upload the service certificates to the certificate manager and you will have one client certificate for each user so that you can properly identify them.
- 083_Client VPN - Client Authentication Types.txt:12: For the SSO to work you can only have one identity provider at a time.
- 084_[SAA_SOA] VPC Peering.txt:7: So in order for them not to connect, remember, I said, the VPC network CIDRs must be distant from each other because when we connect them together, if they have overlapping CIDRs, they will not be able to communicate.
- 084_[SAA_SOA] VPC Peering.txt:9: That means that each VPC that wants to communicate with one another must have VPC peering enabled.
- 084_[SAA_SOA] VPC Peering.txt:14: This is very, very, very, very important.
- 084_[SAA_SOA] VPC Peering.txt:15: Finally, even though your VPC are peered with each other, you must also make sure that you update all the route tables in each VPC's subnets, to ensure that these two instances in different VPC, can communicate with each other.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:52: And now it says to send and receive traffic across this VPC peering connection you must adder route to the VPC period in one or more of your VPC, route tables.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:53: So again, this is very important, even though there's VPC peering connections we need to still modify the route table.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:66: And we're saying, Hey, any traffic that is going into this range of IP addresses should be sent to a peering connection called the demo peering connection.
- 087_[SOA] DNS Resolution Options in VPC - Hands On.txt:20: So as you can see for each VPC that you associate with the private hosted zone, you must set the Amazon VPC setting, enabled DNS host name and enableDnsSupport to true, which we did in a few minutes ago.
- 088_VPC Endpoints - Overview.txt:1: So now let's talk about VPC endpoints and they are at the core of the exam, so super important for you to know about them.
- 088_VPC Endpoints - Overview.txt:7: So VPC endpoint gateway only support S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:12: In case you're having issues with VPC endpoints, you must check the DNS setting resolution in your VPC because it leverages the DNS in the backend to make it transparent for your applications.
- 088_VPC Endpoints - Overview.txt:13: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- 088_VPC Endpoints - Overview.txt:15: So this only works for S3 and DynamoDB, and you must create one gateway per VPC.
- 088_VPC Endpoints - Overview.txt:16: So for this, you must update the route tables entries so you don't manage any security groups.
- 088_VPC Endpoints - Overview.txt:19: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- 088_VPC Endpoints - Overview.txt:22: For this to work, you must make sure that the DNS resolution is enabled at the VPC level because this is also leveraging DNS names.
- 088_VPC Endpoints - Overview.txt:24: Now this VPC endpoint gateway, it cannot be extended out of your VPC.
- 088_VPC Endpoints - Overview.txt:32: So you must make sure that the VPC settings enable DNS host names and enable DNS support are set to true.
- 088_VPC Endpoints - Overview.txt:41: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- 089_VPC Endpoint Policies.txt:17: Now, you should note that the AWS principle org ID condition which is something that can come up in the exam, can be used to restrict access only within the organization, therefore, guaranteeing that your VPC endpoint is only used by accounts of your organization.
- 089_VPC Endpoint Policies.txt:20: Number one, that it is accessible from within our organization, and number two, that it will be only accessed through the VPC endpoint.
- 089_VPC Endpoint Policies.txt:24: And then the conditions strings equal is saying only if the source VPC endpoint is the VPC endpoint from before then this is allowed.
- 089_VPC Endpoint Policies.txt:26: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- 089_VPC Endpoint Policies.txt:31: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- 089_VPC Endpoint Policies.txt:33: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- 089_VPC Endpoint Policies.txt:34: And of course, you must not have an explicit deny on your VPC endpoint policy either.
- 089_VPC Endpoint Policies.txt:39: And then the combination of resource policy and identity based policy must give you an explicit allow and no explicit deny.
- 090_VPC Endpoint - Examples.txt:5: Now obviously if your EC2 instance is in a private subnet then this agent must have networking capability to the CodeDeploy service.
- 090_VPC Endpoint - Examples.txt:6: Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- 090_VPC Endpoint - Examples.txt:9: The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy is going to be sending some commands directly to the agent on the EC2 instance.
- 090_VPC Endpoint - Examples.txt:10: And so as you can see, two VPC endpoints may be required for CodeDeploy.
- 090_VPC Endpoint - Examples.txt:11: So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- 090_VPC Endpoint - Examples.txt:12: But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:13: That is only reserved for EC2 instances.
- 090_VPC Endpoint - Examples.txt:16: If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- 090_VPC Endpoint - Examples.txt:26: So this service must allow the inbound 443 port on the security group to allow secure connections.
- 090_VPC Endpoint - Examples.txt:28: And again, it must allow the port 443 for inbound connections.
- 090_VPC Endpoint - Examples.txt:29: Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can communicate together.
- 090_VPC Endpoint - Examples.txt:33: Finally, if you're using an S3 Gateway Endpoint and everything is private you must update the route tables as well.
- 090_VPC Endpoint - Examples.txt:34: So as you can see, a lot of things are required for Session Manager, but that should make sense to you, considering how it works.
- 090_VPC Endpoint - Examples.txt:37: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- 090_VPC Endpoint - Examples.txt:38: And finally, because this VPC endpoint must access your patches, you must authorize through this VPC endpoint policy several buckets.
- 090_VPC Endpoint - Examples.txt:40: The second one is the aws-ssm for your specified region, or any other S3 bucket required by SSM.
- 090_VPC Endpoint - Examples.txt:41: And finally, if you wanted to send the logs of the Patch Manager utility to CloudWatch Logs you must have your own VPC interface endpoint as well.
- 090_VPC Endpoint - Examples.txt:42: Next, you should know how VPC endpoints work for the API Gateway.
- 090_VPC Endpoint - Examples.txt:43: So if you define a private REST API in API Gateway, you can only access it using the VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:47: Of course, for it to work, we must have the correct VPC endpoint policies, and they must use together with the API gateway resource policies.
- 090_VPC Endpoint - Examples.txt:49: So this is the kind of API resource policy you can have in which you're saying, hey I'll allow anyone to execute this API but you cannot invoke it if you don't come from the specified VPC, thanks to this condition.
- 092_[SOA] PrivateLink - Hands On.txt:7: So we can't do this right now but we would have here an endpoint service connected to our network balancer.
- 093_[SAA_SOA] NACL & Security Groups.txt:59: So the default NACL is super important because it can come up in the exam.
- 093_[SAA_SOA] NACL & Security Groups.txt:70: Okay, so now let's go into the important concept of Ephemeral Ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:92: Well, because they're very important in terms of NACLs.
- 093_[SAA_SOA] NACL & Security Groups.txt:104: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- 093_[SAA_SOA] NACL & Security Groups.txt:105: And this is why ephemeral ports are super important to configure well.
- 093_[SAA_SOA] NACL & Security Groups.txt:108: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- 093_[SAA_SOA] NACL & Security Groups.txt:111: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:6: So, it's very important to notice this.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:24: So, this should work right now, so let's try it.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:27: So, right now we only have 4 22.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:50: So, as we can see, this shows the very important aspects around the rule numbers.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:54: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:56: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:76: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:4: So it looks like from this we have used a prefix destination so that the only amount authorized is to S3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:14: So it's a set of CIDR for AWS services, but you can't create, modify, share, or delete them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:15: You can only use them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:16: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 097_[SAA_SOA] AWS Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- 098_[SAA_SOA] Direct Connect.txt:25: For this, you must use a Direct Connect gateway.

### 6. Patterns / Architectures
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:43: Now, this is not something we're going to do in this lecture, but remember the architecture diagram from before.
- 080_[SAA_SOA] Site to Site VPN.txt:1: Okay, so now let's talk about site-to-site VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:3: So for this, we'll have a customer gateway on the corporation side, and a VPN gateway on the VPC side.
- 080_[SAA_SOA] Site to Site VPN.txt:4: And we're going to establish, through the public internet, a private site-to-site VPN connection.
- 080_[SAA_SOA] Site to Site VPN.txt:5: So it's a VPN connection, so it's encrypted.
- 080_[SAA_SOA] Site to Site VPN.txt:8: So, as such, the VPNs need two things.
- 080_[SAA_SOA] Site to Site VPN.txt:10: It's a VPN concentrator on the AWS side of the VPN connection, and the VGW is created and attached to the VPC from which you want to create the site-to-site VPN connection.
- 080_[SAA_SOA] Site to Site VPN.txt:12: The customer gateway is a CGW, and it's an actual software or a physical device on your side, so on the data center side of the VPN connection, And there's a bunch of these that will have been tested by AWS, so we can have a look at the list here.
- 080_[SAA_SOA] Site to Site VPN.txt:22: And then, the site-to-site VPN connection can be established.
- 080_[SAA_SOA] Site to Site VPN.txt:24: And then, the second question that can come up to the exam is that, even though this is set up, this site-to-site VPN connection will not work until you enable route propagation in your VPC within your subnets.
- 080_[SAA_SOA] Site to Site VPN.txt:26: Finally, another exam question that can come up regarding site-to-site VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:30: But they mix it up with the site-to-site VPN and that can be confusing, so here is some help.
- 080_[SAA_SOA] Site to Site VPN.txt:31: Now, there's one last thing to know about a site-to-site VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:32: It's called AWS VPN CloudHub.
- 080_[SAA_SOA] Site to Site VPN.txt:34: So CloudHub is to provide secure communication in between all these sites, using multiple VPN connections.
- 080_[SAA_SOA] Site to Site VPN.txt:35: It's a low-cost hub-and-spoke model for primary or secondary network connectivity between different locations, but only using the VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:36: So you would establish a site-to-site VPN between the CGW and the one single VGW within your VPC.
- 080_[SAA_SOA] Site to Site VPN.txt:37: And then, thanks to this connection, then your customer networks can now communicate with one another through that VPN connection.
- 080_[SAA_SOA] Site to Site VPN.txt:38: Now, because it's a VPN connection, all the traffic goes over the public internet.
- 080_[SAA_SOA] Site to Site VPN.txt:40: They're connected through public network but the VPN connection is encrypted, obviously.
- 080_[SAA_SOA] Site to Site VPN.txt:41: And to set it up, super simple, you set up multiple site-to-site VPN connection on the same virtual private gateway, and then you enable dynamic routing and you configure your route tables, and you're good to go.
- 080_[SAA_SOA] Site to Site VPN.txt:43: That's all you need to know for site-to-site VPN.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:1: So let's have a look at how you can create a site to site VPN connection in AWS.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:2: So scroll down and under VPN, you go and click on "Customer Gateways." So the first step to having a site-to-site VPN connection is to have a customer gateway that you host on-premises.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:12: And then you would specify a Certificate ARN which allows AWS to connect into your VPN device on-premises and establish a secure connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:19: And then we need to connect these two things and therefore we need to create a site-to-site VPN connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:20: To do so we click on "Create VPN Connection." It is of type "Virtual private gateway." Then you specify the virtual private gateway that you would have created from before.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:23: And then you would create that VPN connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:25: For the exam, all you need to know is that to establish a site-to-site VPN connection between on-premises and AWS, you need to first create a customer gateway, then a virtual private gateway on AWS, and then connect the two using a site-to-site VPN connection.
- 082_[CCP] Client VPN.txt:1: Now let's talk about the AWS client VPN.
- 082_[CCP] Client VPN.txt:3: Therefore you will leverage the client VPN to establish a connection using the open VPN to your private network in AWS or on premises.
- 082_[CCP] Client VPN.txt:7: Well, that's difficult if you don't have a VPN but if you have a VPN, then it's super easy.
- 082_[CCP] Client VPN.txt:8: Once the VPN connection is established you will be able to access your EC2 instances using their private IP just as if you were in the VPC network yourself.
- 082_[CCP] Client VPN.txt:9: So your VPC is right here and then your client's VPN is installed on your computer.
- 082_[CCP] Client VPN.txt:10: You will establish the VPN connection over the internet.
- 082_[CCP] Client VPN.txt:13: And if your VPC has established a site to site VPN connection to your on-premises data center then your computer will also be able to access, privately, your servers on your, on premises data center.
- 083_Client VPN - Client Authentication Types.txt:1: So you need to know the different types of authentication you can have with the AWS Client VPN.
- 083_Client VPN - Client Authentication Types.txt:7: So this is where you have certificates and the user will use these certificates to perform the authentication to the client VPN service.
- 083_Client VPN - Client Authentication Types.txt:13: So in this example, the client is initiating a connection to the client VPN endpoint and we have defined SAML 2.0 idP in IAM such as the client VPN endpoint is going to check the configuration of this idP.
- 083_Client VPN - Client Authentication Types.txt:16: And then this SAML token is being passed to the client VPN endpoint which is going to validate the SAML token and therefore establish a secure connection between the clients and the client VPN endpoint.
- 084_[SAA_SOA] VPC Peering.txt:1: So now let's talk about VPC Peering.
- 084_[SAA_SOA] VPC Peering.txt:8: So, VPC peerings can happen between two VPCs and they're not transitive.
- 084_[SAA_SOA] VPC Peering.txt:9: That means that each VPC that wants to communicate with one another must have VPC peering enabled.
- 084_[SAA_SOA] VPC Peering.txt:10: So if you have a look at three VPCs right now, A, B, and C, then we can create a peering connection between A and B.
- 084_[SAA_SOA] VPC Peering.txt:12: And we can create another peering connection between VPC B and C, and again, they can communicate together.
- 084_[SAA_SOA] VPC Peering.txt:13: But even though A and B, and B and C, are connected, you still need to enable a VPC peering connection between A and C, to have them communicate.
- 084_[SAA_SOA] VPC Peering.txt:17: So some good things to know about VPC peering.
- 084_[SAA_SOA] VPC Peering.txt:26: We're here and now we're going to add a VPC peering connection to connect our VPC to other VPCs.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:1: Okay, so let's have a play with peering VPCs.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:39: And to do so, well we need to go and create a peering connection.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:40: So on the lifeline side, there is peering connections.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:41: I'm going to create a peering connection and I'll call it demo peering connection, and we need to select a local VPC to peer with.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:45: So as we can see, this CIDR and that CIDR do not overlap and therefore this VPC peering connection is possible to create, okay.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:46: So let's create this peering connection and it's pending acceptance.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:52: And now it says to send and receive traffic across this VPC peering connection you must adder route to the VPC period in one or more of your VPC, route tables.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:53: So again, this is very important, even though there's VPC peering connections we need to still modify the route table.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:66: And we're saying, Hey, any traffic that is going into this range of IP addresses should be sent to a peering connection called the demo peering connection.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:73: And again, the peering connection.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:78: That mean that the VPC peering connection is working and it was established.
- 088_VPC Endpoints - Overview.txt:1: So now let's talk about VPC endpoints and they are at the core of the exam, so super important for you to know about them.
- 088_VPC Endpoints - Overview.txt:2: These endpoints allow you to connect to AWS services using a private network instead of going over the public internet network, like you usually do.
- 088_VPC Endpoints - Overview.txt:3: These VPC endpoints will scale horizontally and they will be redundant so that you can survive the loss of an availability zone.
- 088_VPC Endpoints - Overview.txt:6: So that means that an EC2 instance in the private subnet has the chance, for example, through a VPC endpoint gateway, to access Amazon S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:7: So VPC endpoint gateway only support S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:8: So this way, as you can see, no NAT gateway is needed, no internet gateway is needed, just the VPC endpoint gateway and you're good to go.
- 088_VPC Endpoints - Overview.txt:9: Next we have the VPC endpoint interface, which supports all services.
- 088_VPC Endpoints - Overview.txt:10: So for example, if you wanted to privately access CloudWatch, for example, to push metrics and logs from a private EC2 instance onto CloudWatch, what you would do is that you would create a VPC endpoint interface, which is an ENI that will live in your private subnet.
- 088_VPC Endpoints - Overview.txt:12: In case you're having issues with VPC endpoints, you must check the DNS setting resolution in your VPC because it leverages the DNS in the backend to make it transparent for your applications.
- 088_VPC Endpoints - Overview.txt:13: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- 088_VPC Endpoints - Overview.txt:14: Let's do a drill down into now the VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:19: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- 088_VPC Endpoints - Overview.txt:20: And this route table will contain, for example, as you can see here on the second line, the fact that the destination is for Amazon S3, and that the target goes through this VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:21: And therefore, thanks to this route table, whenever the EC2 instance tries to connect to the S3 service, it will be routed through the VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:24: Now this VPC endpoint gateway, it cannot be extended out of your VPC.
- 088_VPC Endpoints - Overview.txt:25: So VPN connections do not work.
- 088_VPC Endpoints - Overview.txt:26: Direct Connect does not work.
- 088_VPC Endpoints - Overview.txt:27: Transit gateway does not work, or VPC peering does not work.
- 088_VPC Endpoints - Overview.txt:28: That's why you have to create one VPC endpoint per gateway per VPC you have, if you have multiple VPCs.
- 088_VPC Endpoints - Overview.txt:29: VPC endpoints interface are slightly different, they provide you an elastic network interface, ENI, that will have a private endpoint interface host name.
- 088_VPC Endpoints - Overview.txt:30: This way, it's going to leverage the security groups for security, and you're going to have a private DNS, which is a setting when you create the endpoint.
- 088_VPC Endpoints - Overview.txt:31: That means that the public host name of your service is going to resolve to the private endpoint interface host name.
- 088_VPC Endpoints - Overview.txt:37: So if you have Direct Connect or a site-to-site VPN, it is completely possible for your on-premises application to access services on AWS through these interfaces.
- 088_VPC Endpoints - Overview.txt:39: And then we have a private subnet with an EC2 instance in which we create a VPC endpoint interface that will get a specific IP.
- 088_VPC Endpoints - Overview.txt:40: Automatically upon creating the VPC endpoint interface, the DNS names are going to be registered within the private Route 53 Resolver.
- 088_VPC Endpoints - Overview.txt:41: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- 089_VPC Endpoint Policies.txt:1: So now let's talk about VPC Endpoint Policies.
- 089_VPC Endpoint Policies.txt:2: So they look like this, and as the name indicates, they are attached to VPC endpoints.
- 089_VPC Endpoint Policies.txt:3: So in this example, we have a VPC endpoint policy which is saying that anyone that accesses it, so anyone because principal star that does a list bucket, get bucket, or put objects, so three API calls, is going to be authorized on the bucket itself as well as any objects within the bucket.
- 089_VPC Endpoint Policies.txt:7: So meaning that this endpoint policy is allowing a specific role to access it and to do three kinds of operations on one specific bucket and its objects.
- 089_VPC Endpoint Policies.txt:9: And of course, the VPC endpoint policy will control which principles can use the VPC endpoint to access services.
- 089_VPC Endpoint Policies.txt:10: Now these can be attached to both interface endpoints and gateway endpoints.
- 089_VPC Endpoint Policies.txt:13: So even if the VPC endpoint policy is allowing this role to use the VPC endpoint it does not mean that it's going to authorize the API call on the target resource.
- 089_VPC Endpoint Policies.txt:17: Now, you should note that the AWS principle org ID condition which is something that can come up in the exam, can be used to restrict access only within the organization, therefore, guaranteeing that your VPC endpoint is only used by accounts of your organization.
- 089_VPC Endpoint Policies.txt:20: Number one, that it is accessible from within our organization, and number two, that it will be only accessed through the VPC endpoint.
- 089_VPC Endpoint Policies.txt:24: And then the conditions strings equal is saying only if the source VPC endpoint is the VPC endpoint from before then this is allowed.
- 089_VPC Endpoint Policies.txt:25: Therefore, if a request comes to the queue on its own without the VPC endpoint, it's going to be refused because of that condition.
- 089_VPC Endpoint Policies.txt:26: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- 089_VPC Endpoint Policies.txt:27: So this effectively guarantees that all member accounts through this VPC endpoint can access my SQS queue and do a send message and receive message.
- 089_VPC Endpoint Policies.txt:28: Hopefully that makes sense into the power of VPC endpoint policies.
- 089_VPC Endpoint Policies.txt:30: But just to give you an idea of how this works, so say we have a VPC endpoint policy and an IAM user then they're both going to be evaluated.
- 089_VPC Endpoint Policies.txt:31: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- 089_VPC Endpoint Policies.txt:32: Otherwise, the IAM user will not be able to go through the VPC endpoints.
- 089_VPC Endpoint Policies.txt:33: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- 089_VPC Endpoint Policies.txt:34: And of course, you must not have an explicit deny on your VPC endpoint policy either.
- 089_VPC Endpoint Policies.txt:35: So what I wanted to show you here, is that they're both evaluated regardless, is that even if the VPC endpoint policies allows it, there is still protection at the IAM user level, or the resource policy as we'll see right now.
- 089_VPC Endpoint Policies.txt:36: So in this slightly more complicated use case where we have a VPC endpoint policy, a resource policy, for example, an S3 buckets policy, as well as an identity based policy, for example, an IAM role, then what happens?
- 089_VPC Endpoint Policies.txt:37: Again, we need to be explicitly allowed through the VPC endpoint policy.
- 090_VPC Endpoint - Examples.txt:1: So let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- 090_VPC Endpoint - Examples.txt:6: Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- 090_VPC Endpoint - Examples.txt:7: The first one is an interface endpoint directly into the CodeDeploy service itself.
- 090_VPC Endpoint - Examples.txt:9: The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy is going to be sending some commands directly to the agent on the EC2 instance.
- 090_VPC Endpoint - Examples.txt:10: And so as you can see, two VPC endpoints may be required for CodeDeploy.
- 090_VPC Endpoint - Examples.txt:11: So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- 090_VPC Endpoint - Examples.txt:12: But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:16: If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- 090_VPC Endpoint - Examples.txt:17: This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- 090_VPC Endpoint - Examples.txt:18: If you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- 090_VPC Endpoint - Examples.txt:24: Well, first of all we need multiple VPC interface endpoints.
- 090_VPC Endpoint - Examples.txt:27: The second one is the SSM Session Manager VPC interface endpoint called SSM Messages.
- 090_VPC Endpoint - Examples.txt:29: Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can communicate together.
- 090_VPC Endpoint - Examples.txt:30: Then we're going to need a VPC interface endpoint for EC2 messages because we have the SSM agent and we need access to SSM commands.
- 090_VPC Endpoint - Examples.txt:31: If you're using KMS you're going to get optional KMS encryption by using the VPC interface endpoint for KMS.
- 090_VPC Endpoint - Examples.txt:32: There's also CloudWatch Logs in VPC endpoint in case you're sending the logs to CloudWatch Logs, or Amazon S3 if you're using Amazon S3 for these logs.
- 090_VPC Endpoint - Examples.txt:33: Finally, if you're using an S3 Gateway Endpoint and everything is private you must update the route tables as well.
- 090_VPC Endpoint - Examples.txt:36: So we need to have access to the SSM service itself with its own VPC interface endpoints, and then there will be one called the SSM Commands VPC interface endpoint. called EC2 Messages, which is going to allow the SSM service to send commands into our EC2 instance.
- 090_VPC Endpoint - Examples.txt:37: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- 090_VPC Endpoint - Examples.txt:38: And finally, because this VPC endpoint must access your patches, you must authorize through this VPC endpoint policy several buckets.
- 090_VPC Endpoint - Examples.txt:41: And finally, if you wanted to send the logs of the Patch Manager utility to CloudWatch Logs you must have your own VPC interface endpoint as well.
- 090_VPC Endpoint - Examples.txt:42: Next, you should know how VPC endpoints work for the API Gateway.
- 090_VPC Endpoint - Examples.txt:43: So if you define a private REST API in API Gateway, you can only access it using the VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:45: So that means that in this diagram, what's missing is the VPC interface endpoint for the execute API endpoint.
- 090_VPC Endpoint - Examples.txt:47: Of course, for it to work, we must have the correct VPC endpoint policies, and they must use together with the API gateway resource policies.
- 090_VPC Endpoint - Examples.txt:48: So that means that using a resource policy, you can actually restrict access to your private API from a specific VPC or VPC endpoint.
- 090_VPC Endpoint - Examples.txt:52: A bit redundant, but hopefully you get the point and you understand the whole complexity and power of VPC interface endpoints.
- 091_[SOA] PrivateLink.txt:9: Option number two, you may think of based on what you've seen in this section is to use VPC peering.
- 091_[SOA] PrivateLink.txt:13: And this way is called AWS PrivateLink which is what powers the VPC endpoints.
- 091_[SOA] PrivateLink.txt:14: And this one is also called the VPC endpoint services.
- 091_[SOA] PrivateLink.txt:18: What do you use, all the answer is PrivateLink.
- 091_[SOA] PrivateLink.txt:19: So it does not require a VPC peering or internet gateway, or knots or route tables.
- 091_[SOA] PrivateLink.txt:26: And this ENI through PrivateLink is going to be connected to your network load balancer.
- 091_[SOA] PrivateLink.txt:28: And this is the power of PrivateLink.
- 091_[SOA] PrivateLink.txt:29: So in this example, to establish a connection between the NLB and the ENI there was no need to establish VPC peering before.
- 091_[SOA] PrivateLink.txt:33: So PrivateLink is an awesome solution.
- 091_[SOA] PrivateLink.txt:34: So a way you could set us up, for example, just to show you how everything can be used is for using PrivateLink with ECS.
- 091_[SOA] PrivateLink.txt:39: The PrivateLink can be established directly into your NLB.
- 091_[SOA] PrivateLink.txt:40: And so for other VPCs it could be an ENI directly into PrivateLink.
- 091_[SOA] PrivateLink.txt:41: And for your corporate data center, it could be a private connection, for example, going over direct connect or a VPN connection.
- 091_[SOA] PrivateLink.txt:43: So that's it for PrivateLink.
- 092_[SOA] PrivateLink - Hands On.txt:1: So let's go on the left hand side under endpoint services to create a private link for one of our services.
- 092_[SOA] PrivateLink - Hands On.txt:4: So once the NLB is created, then you can specify additional settings for your endpoint whether or not you want acceptance.
- 092_[SOA] PrivateLink - Hands On.txt:7: So we can't do this right now but we would have here an endpoint service connected to our network balancer.
- 092_[SOA] PrivateLink - Hands On.txt:8: And then to link it to your VPC, you would go on Endpoint.
- 092_[SOA] PrivateLink - Hands On.txt:9: You would create an endpoint.
- 092_[SOA] PrivateLink - Hands On.txt:10: And this time, instead of choosing AWS services as the type of the endpoint, you would use a other endpoint services and you would type the service name you would've obtained from the previous step.
- 097_[SAA_SOA] AWS Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 097_[SAA_SOA] AWS Transit Gateway.txt:3: So, AWS came up with the transit gateway to solve that problem, and you're going to have a transitive peering connection between thousands of VPC, your on-premises data center, your site-to-site VPN, direct connects in a hub-and-spoke star connection.
- 097_[SAA_SOA] AWS Transit Gateway.txt:5: We have transit gateway in the center and you can connect multiple VPCs through the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:6: So in this example, we don't need to peer the VPCs together, they are connected transitively through the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:8: But also, you can connect a direct connect gateway to the transit gateway, so it shows you have a direct connect connection directly in to many different VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:9: Or if you are preferring site-to-site VPN and VPN connections, you can connect your customer gateway and your VPN connection into your transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:10: Again, one more time, giving you access to all these VPC as part of the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:12: It's a regional resource and it can work cross-region, and you can share your transit gateway across accounts by using the resource access manager.
- 097_[SAA_SOA] AWS Transit Gateway.txt:13: You can also peer transit gateways across region.
- 097_[SAA_SOA] AWS Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 097_[SAA_SOA] AWS Transit Gateway.txt:16: So, you get full control over the routing of all the traffic within the transit gateway to give you network security.
- 097_[SAA_SOA] AWS Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 097_[SAA_SOA] AWS Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 097_[SAA_SOA] AWS Transit Gateway.txt:23: So, let's take this example where we have a transit gateway and we have four VPCs attached to our transit gateway, and we have a corporate data center that is connected using site-to-site VPN to a transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 097_[SAA_SOA] AWS Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 097_[SAA_SOA] AWS Transit Gateway.txt:26: But with transit gateway, you can have multiple site-to-site VPN so you can create a second site-to-site VPN attachment and into your transit gateway, so this creates four tunnels.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- 097_[SAA_SOA] AWS Transit Gateway.txt:29: And in this case, a VPN connection is made of two tunnels.
- 097_[SAA_SOA] AWS Transit Gateway.txt:30: But if you are using a VPN into a transit gateway, you get one site-to-site VPN into many VPC because they're all connected transitively to the same transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:31: And also, one site-to-site VPN connection gives you 2.5 Gbps thanks to ECMP, because the two tunnels are going to be used through that strategy.
- 097_[SAA_SOA] AWS Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- 097_[SAA_SOA] AWS Transit Gateway.txt:35: Finally, you can share your direct connect connection between multiple accounts, again, using the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:37: Well, we're going to establish a direct connect connection between your corporate data center and a direct connect location, and then we're going to set up a transit gateway into both VPCs in two different accounts, okay?
- 097_[SAA_SOA] AWS Transit Gateway.txt:38: So this is something we can do with the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:39: And then, we connect the direct connect location into direct connect gateway and connect that gateway into the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:40: And what this just allowed us to do is to share a direct connect connection between multiple accounts and multiple VPC, which is very handy thanks to the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:42: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- 098_[SAA_SOA] Direct Connect.txt:1: Now let's talk about Direct Connect, and you may also see it as DX in the exam.
- 098_[SAA_SOA] Direct Connect.txt:3: So you need to set up that Direct Connect connection and it is using an AWS Direct Connect location.
- 098_[SAA_SOA] Direct Connect.txt:6: So what are the use cases for Direct Connect?
- 098_[SAA_SOA] Direct Connect.txt:8: Also, if you have connectivity issues using the public internet, we'll using Direct Connect you get a more consistent network experience, again because it is private.
- 098_[SAA_SOA] Direct Connect.txt:12: So let's look at a diagram of Direct Connect.
- 098_[SAA_SOA] Direct Connect.txt:14: So for this, we're going to commission an AWS Direct Connect location, their physical locations that you have to find but it's all obviously on the website of AWS, and there's going to be a Direct Connect endpoints, and there's going to be a customer or partner router that you have to rent from a customer or partner cage.
- 098_[SAA_SOA] Direct Connect.txt:15: So you have two cages in this Direct Connect location, and then on your on-premise data center, you're going to set up a customer router with a firewall.
- 098_[SAA_SOA] Direct Connect.txt:25: For this, you must use a Direct Connect gateway.
- 098_[SAA_SOA] Direct Connect.txt:27: So we're going to establish a Direct Connect connection, then using the private VIF, you're going to connect it to Direct Connect gateway.
- 098_[SAA_SOA] Direct Connect.txt:30: Okay, now let's discuss the connection types for Direct Connects.
- 098_[SAA_SOA] Direct Connect.txt:32: And first we need to make a request to AWS, and then it will be completed by an AWS Direct Connect partner.
- 098_[SAA_SOA] Direct Connect.txt:34: And again, we make connection requests via via AWS Direct Connect Partners.
- 098_[SAA_SOA] Direct Connect.txt:39: So an answer can not be Direct Connect because Direct Connect takes often more than one month to establish.
- 098_[SAA_SOA] Direct Connect.txt:40: So you need to look into question whether or not there's already a Direct Connect established, and whether or not the time to transmit the data is less or greater than one month.
- 098_[SAA_SOA] Direct Connect.txt:41: Now, when you have a Direct Connect, there is no encryption.
- 098_[SAA_SOA] Direct Connect.txt:43: And so if you want an encryption on top of it, you can set up Direct Connect to be alongside a VPN to provide IPsec encrypted private connection.
- 098_[SAA_SOA] Direct Connect.txt:45: So to set up is to get the Direct Connect location, but then on the connection, you're going to set up a VPN connection on top of it, to have encryption for your Direct Connect and therefore all the traffic between your corporate data sensor to AWS is going to be encrypted.
- 098_[SAA_SOA] Direct Connect.txt:46: Now, one last thing that can come up in the exam, is around resiliency for Direct Connect.
- 098_[SAA_SOA] Direct Connect.txt:47: So we have two modes of resiliency and architectures and you need to know them both because they will be coming up at the exam.
- 098_[SAA_SOA] Direct Connect.txt:48: You have a high resiliency for critical workloads where we set up multiple Direct Connects.
- 098_[SAA_SOA] Direct Connect.txt:49: So we have two corporate data centers and we have two different Direct Connect location, and this gives us some redundancy.
- 098_[SAA_SOA] Direct Connect.txt:51: And so here we get one connection and multiple locations, and so if one of the Direct Connect location goes down, then at least we have some backup Direct Connect location somewhere else and so this gives us high resiliency, and this is good for critical workloads.
- 098_[SAA_SOA] Direct Connect.txt:52: But if you want to get to maximum resiliency for critical workloads and I emphasize the word maximum because it can come up in the exam, then you're going to have to set up again two Direct Connect locations, but this time each Direct Connect location will have two connections independence to give you maximum resiliency.
- 098_[SAA_SOA] Direct Connect.txt:55: So that's it for Direct Connect.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:1: Hi, so a very short lecture on an architecture that can come up in the exam.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:2: So the idea is that you have your corporate data center and it's connected to your VPC using Direct Connect.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:3: And that's your primary connection and it's expensive, but maybe sometimes you will have an issue with your Direct Connect connection, and of course, you do not want to have no internet connection into your VPC.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:4: Therefore, you can use a Direct Connect as a secondary connection, but that would be quite expensive.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:5: Or you can set up a site to site VPN connection as a backup connection and set it up so that if the primary connection fails, then it kicks in, and now you are connected through the public internet using site to site VPN, which can be a bit more reliable because the internet, public internet, may always be accessible, okay?
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:6: So this is an architecture that can come up in the exam and I just wanted to show it to you once, so that you know what to expect.

## Step 3 — Deep Expansion (Core VPC Connectivity Security Concepts)

### AWS Direct Connect
- What it is: Dedicated private connectivity from on-premises to AWS.
- Why it exists: Provides predictable bandwidth and lower jitter than internet-based tunnels.
- Internal working: Provision private/public/transit virtual interfaces over dedicated circuits.
- Architecture: On-prem router -> DX location -> AWS edge -> VPC/TGW destinations.
- Key components: Connections, LAG, virtual interfaces, gateways, BGP routing.

### AWS Transit Gateway
- What it is: Centralized routing hub connecting multiple VPCs and hybrid links.
- Why it exists: Simplifies mesh complexity and centralizes route-domain control.
- Internal working: Attachments connect networks to transit route tables with propagation/association.
- Architecture: Spoke VPCs/VPN/DX -> TGW -> route policy segmentation.
- Key components: Attachments, route tables, propagation, associations, appliance mode.

### PrivateLink
- What it is: Private service publishing/consumption mechanism over private network interfaces.
- Why it exists: Allows service sharing across VPC/accounts without full network peering.
- Internal working: Consumers connect to endpoint service backed by NLB through interface endpoints.
- Architecture: Consumer VPC endpoint -> provider endpoint service/NLB -> service targets.
- Key components: Endpoint services, interface endpoints, NLB integration, acceptance controls.

### VPC Endpoints
- What it is: Private connectivity mechanism from VPC to AWS services without traversing public internet.
- Why it exists: Reduces exposure, improves compliance posture, and enables policy-based access control.
- Internal working: Gateway or interface endpoints inject private routes/DNS and enforce endpoint policies.
- Architecture: Workload subnet -> endpoint ENI/route -> service private plane.
- Key components: Gateway endpoints, interface endpoints, endpoint policies, DNS integration.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Jump-host administration | Bastion Host | Azure Bastion | IAP TCP forwarding / bastion patterns |
| Managed outbound internet egress | NAT Gateway | NAT Gateway | Cloud NAT |
| Site-to-site private connectivity | Site-to-Site VPN | VPN Gateway (S2S) | Cloud VPN |
| Remote user secure access | Client VPN | Point-to-Site VPN + Entra auth | BeyondCorp Enterprise / VPN alternatives |
| Private service access without public internet | VPC Endpoints + PrivateLink | Private Link + Service Endpoints | Private Service Connect |
| Multi-VPC transit hub | Transit Gateway | Virtual WAN / Hub VNet | Network Connectivity Center / Cloud Router patterns |
| Dedicated private circuit to on-prem | Direct Connect | ExpressRoute | Cloud Interconnect |
| Packet/filter controls at subnet and NIC levels | NACL + Security Groups | NSG + ASG | Firewall rules + tags/service accounts |

### Trade-offs and Decision Notes
- AWS Transit Gateway and endpoint ecosystem is mature for large multi-VPC topologies.
- Azure Virtual WAN simplifies branch/remote connectivity at enterprise scale.
- GCP Private Service Connect is strong for private producer/consumer service exposure.
- For hybrid estates, combine dedicated links with VPN failover and explicit routing controls.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Connectivity primitives: peering, VPN, dedicated links, endpoints, and routing boundaries.
- Security boundaries: subnet controls, SG/NACL responsibilities, and DNS implications.

### Phase 2 — Core Services
- Implement private service access with endpoints and PrivateLink.
- Build controlled hybrid access with VPN and Direct Connect.
- Apply segmentation and least-privilege traffic with SG/NACL plus route controls.

### Phase 3 — Advanced Patterns
- Transit Gateway hub-and-spoke with route-domain isolation across environments.
- Centralized egress and inspection patterns for regulated workloads.

### Phase 4 — System Design
- Enterprise network architecture: multi-account VPC fabric with hybrid ingress/egress and service-private access.
- Scaling considerations: route table growth, attachment limits, DNS complexity, and failover behavior.
- Cost considerations: data transfer, endpoint hourly/data charges, VPN/DX utilization economics.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Egress Control
- Hybrid Networking
- Identity-Aware Access
- Private Connectivity
- Routing and Reachability
- Segmentation and Isolation
- VPC Connectivity Operational Context

### Services (Deduped)
- AWS Client VPN
- AWS Direct Connect
- AWS Transit Gateway
- Amazon VPC
- Bastion Host
- DNS Resolution
- NAT Gateway
- Network ACL
- PrivateLink
- Security Groups
- Site-to-Site VPN
- VPC Endpoints
- VPC Peering

### Features (Deduped)
- association
- authentication
- authorization
- dns
- endpoint policy
- peering
- propagation
- resolver
- route table
- transit
- tunnel

### Use Cases (Deduped)
- 076_[SAA_SOA] Bastion Host.txt:14: But instead of allowing everywhere from the internet access, because that could be a security risk, we can only restrict, for example, access from the public CIDR of your corporation or your internet access and so on.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:2: This is because we are able to SSH into this fashion host and from it, we'll be able to connect to an EC two instance in a private subnet.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:15: So we want to be into a private subnet, for example the private subnet a, and we're going to create a security group.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:27: So we're going to connect into our Bashian host.
- 078_[SAA_SOA] NAT Gateway.txt:21: And by editing them, we are going to be able to connect our Institute instance into our nuts gateway.
- 078_[SAA_SOA] NAT Gateway.txt:29: And there's no need to connect the atheist together through the route tables, because well, if an AZ goes down, then all the Eastern instances in that are also currently unassailable.
- 078_[SAA_SOA] NAT Gateway.txt:34: And that for in that instance, well, it depends on the instance type that you have, but the higher instance type, the more throughput you're going to have, the maintenance is obviously a managed service when they get way.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:12: Now, when you choose a subnet for the NAT Gateway which should be in so for high availability, we need to use multiple subnets.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:29: So what I'm going to do is pause the videos and get back to you when this is done.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:41: For example, we can do sudo yum, and then updates, for example, our operating system, without making this instance public, which is really good.
- 080_[SAA_SOA] Site to Site VPN.txt:25: And then, when this is done, then the connectivity will work.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:12: And then you would specify a Certificate ARN which allows AWS to connect into your VPN device on-premises and establish a secure connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:19: And then we need to connect these two things and therefore we need to create a site-to-site VPN connection.
- 082_[CCP] Client VPN.txt:6: Well, for example say you have deployed EC2 instances in a private VPC and you want to access them using a private IP.
- 084_[SAA_SOA] VPC Peering.txt:2: So the idea is that we can create VPCs and in different regions, different accounts and we want to connect them together using the AWS network.
- 084_[SAA_SOA] VPC Peering.txt:6: Maybe you could have VPC in other regions in other accounts, or even within your same accounts and you want to connect them.
- 084_[SAA_SOA] VPC Peering.txt:7: So in order for them not to connect, remember, I said, the VPC network CIDRs must be distant from each other because when we connect them together, if they have overlapping CIDRs, they will not be able to communicate.
- 084_[SAA_SOA] VPC Peering.txt:11: And this is allowing you to connect them together.
- 084_[SAA_SOA] VPC Peering.txt:19: So if you want to connect a VPC from one account A, to account B, you could, and also across regions.
- 084_[SAA_SOA] VPC Peering.txt:26: We're here and now we're going to add a VPC peering connection to connect our VPC to other VPCs.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:16: And what I want to do is to connect and make sure this default instance VPC can connect to the instance in my BastionHost.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:36: Well, because there is no way for our EC2 instance right now in this VPC to connect to the two instance in another VPC.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:38: So we're going to connect them.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:42: So we're going to say that the requester is my demo VPC, and then we're going to select another VPC to connect to.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:61: Okay, so we want to connect this and that's.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:62: So let's start with a public route table and I will go to routes and then edit routes and I will have a destination.
- 086_[SOA] DNS Resolution Options in VPC.txt:14: So when you enable the DNS support setting, then you can leverage route 53 to resolve the public DNS names within the internet.
- 086_[SOA] DNS Resolution Options in VPC.txt:26: Well, if you have a custom DNS domain name in a private hosted zone in Route 53, and you said to both of these attributes to true, then you can create this private hosted zone as we'll see in the hands-on for example, web.mycompany.private as a record of type A and the value 10.0.0.10.
- 086_[SOA] DNS Resolution Options in VPC.txt:28: And you're EC2 Instance when requesting that private DNS name, we'll look it up to the Route 53 resolver, which we'll look up the private hosted zone and say, yes, I know what this is.
- 087_[SOA] DNS Resolution Options in VPC - Hands On.txt:33: So let's go into the easy to manage run console, and then I'm going to connect to my bastion hosts and connect to it.
- 088_VPC Endpoints - Overview.txt:2: These endpoints allow you to connect to AWS services using a private network instead of going over the public internet network, like you usually do.
- 088_VPC Endpoints - Overview.txt:6: So that means that an EC2 instance in the private subnet has the chance, for example, through a VPC endpoint gateway, to access Amazon S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:10: So for example, if you wanted to privately access CloudWatch, for example, to push metrics and logs from a private EC2 instance onto CloudWatch, what you would do is that you would create a VPC endpoint interface, which is an ENI that will live in your private subnet.
- 088_VPC Endpoints - Overview.txt:13: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- 088_VPC Endpoints - Overview.txt:19: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- 088_VPC Endpoints - Overview.txt:20: And this route table will contain, for example, as you can see here on the second line, the fact that the destination is for Amazon S3, and that the target goes through this VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:21: And therefore, thanks to this route table, whenever the EC2 instance tries to connect to the S3 service, it will be routed through the VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:30: This way, it's going to leverage the security groups for security, and you're going to have a private DNS, which is a setting when you create the endpoint.
- 088_VPC Endpoints - Overview.txt:35: So your clients can use, for example, athena.us-east-1.amazonaws.com, to resolve to any of the top addresses on the top.
- 088_VPC Endpoints - Overview.txt:41: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- 089_VPC Endpoint Policies.txt:14: For this. we'll still need the IAM role, or the policy or the resource based policy, for example industry buckets, to authorize this call.
- 089_VPC Endpoint Policies.txt:26: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- 089_VPC Endpoint Policies.txt:31: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- 089_VPC Endpoint Policies.txt:33: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- 089_VPC Endpoint Policies.txt:36: So in this slightly more complicated use case where we have a VPC endpoint policy, a resource policy, for example, an S3 buckets policy, as well as an identity based policy, for example, an IAM role, then what happens?
- 090_VPC Endpoint - Examples.txt:3: So CodeDeploy is a way to deploy new application versions onto your EC2 instances, for example.
- 090_VPC Endpoint - Examples.txt:15: So with Secrets Manager, say we have a Lambda function and it wants to access privately the Secrets of Secrets Manager, for example, to get a database password.
- 090_VPC Endpoint - Examples.txt:17: This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- 090_VPC Endpoint - Examples.txt:37: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- 091_[SOA] PrivateLink.txt:11: And on top of it, when you set up a VPC incorrect peer in connection, you open up the whole network of one VPC to another Whereas all you wanted was just to externalize one application service.
- 091_[SOA] PrivateLink.txt:34: So a way you could set us up, for example, just to show you how everything can be used is for using PrivateLink with ECS.
- 091_[SOA] PrivateLink.txt:41: And for your corporate data center, it could be a private connection, for example, going over direct connect or a VPN connection.
- 092_[SOA] PrivateLink - Hands On.txt:12: For example, the demo VPC and voila.
- 093_[SAA_SOA] NACL & Security Groups.txt:2: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- 093_[SAA_SOA] NACL & Security Groups.txt:34: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- 093_[SAA_SOA] NACL & Security Groups.txt:48: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- 093_[SAA_SOA] NACL & Security Groups.txt:54: And NACLs have a very, very good use case.
- 093_[SAA_SOA] NACL & Security Groups.txt:64: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:73: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- 093_[SAA_SOA] NACL & Security Groups.txt:74: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- 093_[SAA_SOA] NACL & Security Groups.txt:75: So the server also needs to connect to the clients to send a response.
- 093_[SAA_SOA] NACL & Security Groups.txt:77: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- 093_[SAA_SOA] NACL & Security Groups.txt:80: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:87: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- 093_[SAA_SOA] NACL & Security Groups.txt:95: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- 093_[SAA_SOA] NACL & Security Groups.txt:101: When the database sends back the request to the clients, what do you think needs to happen?
- 093_[SAA_SOA] NACL & Security Groups.txt:114: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:16: And I'm going to start a HTTP server on it to connect to it.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:32: We are able to connect into our server and it replies "hello world" to us.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:71: But if my EC2 instance was trying to initiate a connection, for example, not here.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:72: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:7: So in your account, for example, you can define your custom prefix list.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:8: For example, this CIDR 1, CIDR 2, and CIDR 3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:12: This allows you, for example, that if the Account A wants to modify the prefix list once, it will be applied to many security groups at once.
- 096_Security Groups - Extras.txt:2: So it turns out that when you have a security group, if you modify a rule, it will never disrupt the tracked connections.
- 096_Security Groups - Extras.txt:7: Now, say for example that the SSH connection is open but then we remove that rule from the security group, what do you think will happen?
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 096_Security Groups - Extras.txt:10: So how do we proceed for, for example, forcing the closure of that connection?
- 096_Security Groups - Extras.txt:13: Because NACLs are stateless, they are evaluated all the time for all inbound and outbound traffic and therefor, the connection will be closed, but because security groups are stateful at the time when the connection was allowed in, the return traffic is also allowed back and the connection remains open as long as it is not timing out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 097_[SAA_SOA] AWS Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 097_[SAA_SOA] AWS Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 097_[SAA_SOA] AWS Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- 098_[SAA_SOA] Direct Connect.txt:6: So what are the use cases for Direct Connect?
- 098_[SAA_SOA] Direct Connect.txt:13: So we have a region and we want to connect it into our corporate data center.
- 098_[SAA_SOA] Direct Connect.txt:21: The alternative is to connect to public services within AWS such as Amazon Glacier, Amazon S3.
- 098_[SAA_SOA] Direct Connect.txt:24: So what if you want to connect to one or more VPCs in different regions?
- 098_[SAA_SOA] Direct Connect.txt:26: So we have an example where we have two regions, and they have two different VPC, we have two different CIDRs and we want to connect our on-premise data center into both VPC.
- 098_[SAA_SOA] Direct Connect.txt:27: So we're going to establish a Direct Connect connection, then using the private VIF, you're going to connect it to Direct Connect gateway.
- 098_[SAA_SOA] Direct Connect.txt:41: Now, when you have a Direct Connect, there is no encryption.
- 098_[SAA_SOA] Direct Connect.txt:53: So in this use case, we have four connections across two locations, sorry, going into AWS.

### Constraints / Limitations (Deduped)
- 076_[SAA_SOA] Bastion Host.txt:11: And we must put the bastion host in the public subnet.
- 076_[SAA_SOA] Bastion Host.txt:13: So for a bastion host perspective, the security group must allow access from the internet, okay?
- 076_[SAA_SOA] Bastion Host.txt:14: But instead of allowing everywhere from the internet access, because that could be a security risk, we can only restrict, for example, access from the public CIDR of your corporation or your internet access and so on.
- 076_[SAA_SOA] Bastion Host.txt:15: So that we have to restrict the EC2 security group of the bastion host as much as possible to guarantee that only a few select IPs can access it, because if somehow a random attacker has access to our EC2 instance as the bastion host, it could be a security risk for our infrastructure.
- 076_[SAA_SOA] Bastion Host.txt:16: Now, in terms of the security group of the EC2 instances in the private subnets, well, they must allow the SSH access, so on the port 22 again, from this time the private IP of the bastion host or the security group of the bastion host, this is equivalent.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:21: So here we have our private instance and because it is in a private sublet, as you know, we cannot use the EC two instance connect into it because that will not work.
- 077_[SAA_SOA] Bastion Host - Hands On.txt:60: And I'm gonna keep this on video because this is a super important to see what can go wrong.
- 078_[SAA_SOA] NAT Gateway.txt:7: Now it cannot be used with an Institute instance within the same sub-net okay.
- 078_[SAA_SOA] NAT Gateway.txt:8: So the nugget weight can only be helpful if accessed from another sub-net.
- 078_[SAA_SOA] NAT Gateway.txt:13: Now the bandwidth is five gigabits per second, automatically scaling up to 100 gigabits per second, and you don't need to manage any security groups it's not required.
- 078_[SAA_SOA] NAT Gateway.txt:23: So the nugget weight is resilience only within a single availability zone.
- 078_[SAA_SOA] NAT Gateway.txt:30: So now let's just talk about the difference between net gateway and other instances, but there should be quite obvious.
- 078_[SAA_SOA] NAT Gateway.txt:46: And there's a link right here, but from an exempt perspective, there should be enough to insert any questions into choosing a NAT gateway versus in that instance.
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:12: Now, when you choose a subnet for the NAT Gateway which should be in so for high availability, we need to use multiple subnets.
- 080_[SAA_SOA] Site to Site VPN.txt:16: Which IP address should we use?
- 080_[SAA_SOA] Site to Site VPN.txt:21: And then, that NAT device has a public IP, in which case, the IP address you should use for the CGW is the public IP of the NAT device.
- 080_[SAA_SOA] Site to Site VPN.txt:35: It's a low-cost hub-and-spoke model for primary or secondary network connectivity between different locations, but only using the VPN.
- 083_Client VPN - Client Authentication Types.txt:8: To do so, you must first upload the service certificates to the certificate manager and you will have one client certificate for each user so that you can properly identify them.
- 083_Client VPN - Client Authentication Types.txt:12: For the SSO to work you can only have one identity provider at a time.
- 084_[SAA_SOA] VPC Peering.txt:7: So in order for them not to connect, remember, I said, the VPC network CIDRs must be distant from each other because when we connect them together, if they have overlapping CIDRs, they will not be able to communicate.
- 084_[SAA_SOA] VPC Peering.txt:9: That means that each VPC that wants to communicate with one another must have VPC peering enabled.
- 084_[SAA_SOA] VPC Peering.txt:14: This is very, very, very, very important.
- 084_[SAA_SOA] VPC Peering.txt:15: Finally, even though your VPC are peered with each other, you must also make sure that you update all the route tables in each VPC's subnets, to ensure that these two instances in different VPC, can communicate with each other.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:52: And now it says to send and receive traffic across this VPC peering connection you must adder route to the VPC period in one or more of your VPC, route tables.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:53: So again, this is very important, even though there's VPC peering connections we need to still modify the route table.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:66: And we're saying, Hey, any traffic that is going into this range of IP addresses should be sent to a peering connection called the demo peering connection.
- 087_[SOA] DNS Resolution Options in VPC - Hands On.txt:20: So as you can see for each VPC that you associate with the private hosted zone, you must set the Amazon VPC setting, enabled DNS host name and enableDnsSupport to true, which we did in a few minutes ago.
- 088_VPC Endpoints - Overview.txt:1: So now let's talk about VPC endpoints and they are at the core of the exam, so super important for you to know about them.
- 088_VPC Endpoints - Overview.txt:7: So VPC endpoint gateway only support S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:12: In case you're having issues with VPC endpoints, you must check the DNS setting resolution in your VPC because it leverages the DNS in the backend to make it transparent for your applications.
- 088_VPC Endpoints - Overview.txt:13: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- 088_VPC Endpoints - Overview.txt:15: So this only works for S3 and DynamoDB, and you must create one gateway per VPC.
- 088_VPC Endpoints - Overview.txt:16: So for this, you must update the route tables entries so you don't manage any security groups.
- 088_VPC Endpoints - Overview.txt:19: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- 088_VPC Endpoints - Overview.txt:22: For this to work, you must make sure that the DNS resolution is enabled at the VPC level because this is also leveraging DNS names.
- 088_VPC Endpoints - Overview.txt:24: Now this VPC endpoint gateway, it cannot be extended out of your VPC.
- 088_VPC Endpoints - Overview.txt:32: So you must make sure that the VPC settings enable DNS host names and enable DNS support are set to true.
- 088_VPC Endpoints - Overview.txt:41: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- 089_VPC Endpoint Policies.txt:17: Now, you should note that the AWS principle org ID condition which is something that can come up in the exam, can be used to restrict access only within the organization, therefore, guaranteeing that your VPC endpoint is only used by accounts of your organization.
- 089_VPC Endpoint Policies.txt:20: Number one, that it is accessible from within our organization, and number two, that it will be only accessed through the VPC endpoint.
- 089_VPC Endpoint Policies.txt:24: And then the conditions strings equal is saying only if the source VPC endpoint is the VPC endpoint from before then this is allowed.
- 089_VPC Endpoint Policies.txt:26: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- 089_VPC Endpoint Policies.txt:31: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- 089_VPC Endpoint Policies.txt:33: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- 089_VPC Endpoint Policies.txt:34: And of course, you must not have an explicit deny on your VPC endpoint policy either.
- 089_VPC Endpoint Policies.txt:39: And then the combination of resource policy and identity based policy must give you an explicit allow and no explicit deny.
- 090_VPC Endpoint - Examples.txt:5: Now obviously if your EC2 instance is in a private subnet then this agent must have networking capability to the CodeDeploy service.
- 090_VPC Endpoint - Examples.txt:6: Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- 090_VPC Endpoint - Examples.txt:9: The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy is going to be sending some commands directly to the agent on the EC2 instance.
- 090_VPC Endpoint - Examples.txt:10: And so as you can see, two VPC endpoints may be required for CodeDeploy.
- 090_VPC Endpoint - Examples.txt:11: So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- 090_VPC Endpoint - Examples.txt:12: But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:13: That is only reserved for EC2 instances.
- 090_VPC Endpoint - Examples.txt:16: If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- 090_VPC Endpoint - Examples.txt:26: So this service must allow the inbound 443 port on the security group to allow secure connections.
- 090_VPC Endpoint - Examples.txt:28: And again, it must allow the port 443 for inbound connections.
- 090_VPC Endpoint - Examples.txt:29: Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can communicate together.
- 090_VPC Endpoint - Examples.txt:33: Finally, if you're using an S3 Gateway Endpoint and everything is private you must update the route tables as well.
- 090_VPC Endpoint - Examples.txt:34: So as you can see, a lot of things are required for Session Manager, but that should make sense to you, considering how it works.
- 090_VPC Endpoint - Examples.txt:37: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- 090_VPC Endpoint - Examples.txt:38: And finally, because this VPC endpoint must access your patches, you must authorize through this VPC endpoint policy several buckets.
- 090_VPC Endpoint - Examples.txt:40: The second one is the aws-ssm for your specified region, or any other S3 bucket required by SSM.
- 090_VPC Endpoint - Examples.txt:41: And finally, if you wanted to send the logs of the Patch Manager utility to CloudWatch Logs you must have your own VPC interface endpoint as well.
- 090_VPC Endpoint - Examples.txt:42: Next, you should know how VPC endpoints work for the API Gateway.
- 090_VPC Endpoint - Examples.txt:43: So if you define a private REST API in API Gateway, you can only access it using the VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:47: Of course, for it to work, we must have the correct VPC endpoint policies, and they must use together with the API gateway resource policies.
- 090_VPC Endpoint - Examples.txt:49: So this is the kind of API resource policy you can have in which you're saying, hey I'll allow anyone to execute this API but you cannot invoke it if you don't come from the specified VPC, thanks to this condition.
- 092_[SOA] PrivateLink - Hands On.txt:7: So we can't do this right now but we would have here an endpoint service connected to our network balancer.
- 093_[SAA_SOA] NACL & Security Groups.txt:59: So the default NACL is super important because it can come up in the exam.
- 093_[SAA_SOA] NACL & Security Groups.txt:70: Okay, so now let's go into the important concept of Ephemeral Ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:92: Well, because they're very important in terms of NACLs.
- 093_[SAA_SOA] NACL & Security Groups.txt:104: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- 093_[SAA_SOA] NACL & Security Groups.txt:105: And this is why ephemeral ports are super important to configure well.
- 093_[SAA_SOA] NACL & Security Groups.txt:108: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- 093_[SAA_SOA] NACL & Security Groups.txt:111: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:6: So, it's very important to notice this.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:24: So, this should work right now, so let's try it.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:27: So, right now we only have 4 22.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:50: So, as we can see, this shows the very important aspects around the rule numbers.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:54: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:56: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:76: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:4: So it looks like from this we have used a prefix destination so that the only amount authorized is to S3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:14: So it's a set of CIDR for AWS services, but you can't create, modify, share, or delete them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:15: You can only use them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:16: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 097_[SAA_SOA] AWS Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- 098_[SAA_SOA] Direct Connect.txt:25: For this, you must use a Direct Connect gateway.

### Patterns / Architectures (Deduped)
- 079_[SAA_SOA] NAT Gateway - Hands On.txt:43: Now, this is not something we're going to do in this lecture, but remember the architecture diagram from before.
- 080_[SAA_SOA] Site to Site VPN.txt:1: Okay, so now let's talk about site-to-site VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:3: So for this, we'll have a customer gateway on the corporation side, and a VPN gateway on the VPC side.
- 080_[SAA_SOA] Site to Site VPN.txt:4: And we're going to establish, through the public internet, a private site-to-site VPN connection.
- 080_[SAA_SOA] Site to Site VPN.txt:5: So it's a VPN connection, so it's encrypted.
- 080_[SAA_SOA] Site to Site VPN.txt:8: So, as such, the VPNs need two things.
- 080_[SAA_SOA] Site to Site VPN.txt:10: It's a VPN concentrator on the AWS side of the VPN connection, and the VGW is created and attached to the VPC from which you want to create the site-to-site VPN connection.
- 080_[SAA_SOA] Site to Site VPN.txt:12: The customer gateway is a CGW, and it's an actual software or a physical device on your side, so on the data center side of the VPN connection, And there's a bunch of these that will have been tested by AWS, so we can have a look at the list here.
- 080_[SAA_SOA] Site to Site VPN.txt:22: And then, the site-to-site VPN connection can be established.
- 080_[SAA_SOA] Site to Site VPN.txt:24: And then, the second question that can come up to the exam is that, even though this is set up, this site-to-site VPN connection will not work until you enable route propagation in your VPC within your subnets.
- 080_[SAA_SOA] Site to Site VPN.txt:26: Finally, another exam question that can come up regarding site-to-site VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:30: But they mix it up with the site-to-site VPN and that can be confusing, so here is some help.
- 080_[SAA_SOA] Site to Site VPN.txt:31: Now, there's one last thing to know about a site-to-site VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:32: It's called AWS VPN CloudHub.
- 080_[SAA_SOA] Site to Site VPN.txt:34: So CloudHub is to provide secure communication in between all these sites, using multiple VPN connections.
- 080_[SAA_SOA] Site to Site VPN.txt:35: It's a low-cost hub-and-spoke model for primary or secondary network connectivity between different locations, but only using the VPN.
- 080_[SAA_SOA] Site to Site VPN.txt:36: So you would establish a site-to-site VPN between the CGW and the one single VGW within your VPC.
- 080_[SAA_SOA] Site to Site VPN.txt:37: And then, thanks to this connection, then your customer networks can now communicate with one another through that VPN connection.
- 080_[SAA_SOA] Site to Site VPN.txt:38: Now, because it's a VPN connection, all the traffic goes over the public internet.
- 080_[SAA_SOA] Site to Site VPN.txt:40: They're connected through public network but the VPN connection is encrypted, obviously.
- 080_[SAA_SOA] Site to Site VPN.txt:41: And to set it up, super simple, you set up multiple site-to-site VPN connection on the same virtual private gateway, and then you enable dynamic routing and you configure your route tables, and you're good to go.
- 080_[SAA_SOA] Site to Site VPN.txt:43: That's all you need to know for site-to-site VPN.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:1: So let's have a look at how you can create a site to site VPN connection in AWS.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:2: So scroll down and under VPN, you go and click on "Customer Gateways." So the first step to having a site-to-site VPN connection is to have a customer gateway that you host on-premises.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:12: And then you would specify a Certificate ARN which allows AWS to connect into your VPN device on-premises and establish a secure connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:19: And then we need to connect these two things and therefore we need to create a site-to-site VPN connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:20: To do so we click on "Create VPN Connection." It is of type "Virtual private gateway." Then you specify the virtual private gateway that you would have created from before.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:23: And then you would create that VPN connection.
- 081_[SAA_SOA] Site to Site VPN - Hands On.txt:25: For the exam, all you need to know is that to establish a site-to-site VPN connection between on-premises and AWS, you need to first create a customer gateway, then a virtual private gateway on AWS, and then connect the two using a site-to-site VPN connection.
- 082_[CCP] Client VPN.txt:1: Now let's talk about the AWS client VPN.
- 082_[CCP] Client VPN.txt:3: Therefore you will leverage the client VPN to establish a connection using the open VPN to your private network in AWS or on premises.
- 082_[CCP] Client VPN.txt:7: Well, that's difficult if you don't have a VPN but if you have a VPN, then it's super easy.
- 082_[CCP] Client VPN.txt:8: Once the VPN connection is established you will be able to access your EC2 instances using their private IP just as if you were in the VPC network yourself.
- 082_[CCP] Client VPN.txt:9: So your VPC is right here and then your client's VPN is installed on your computer.
- 082_[CCP] Client VPN.txt:10: You will establish the VPN connection over the internet.
- 082_[CCP] Client VPN.txt:13: And if your VPC has established a site to site VPN connection to your on-premises data center then your computer will also be able to access, privately, your servers on your, on premises data center.
- 083_Client VPN - Client Authentication Types.txt:1: So you need to know the different types of authentication you can have with the AWS Client VPN.
- 083_Client VPN - Client Authentication Types.txt:7: So this is where you have certificates and the user will use these certificates to perform the authentication to the client VPN service.
- 083_Client VPN - Client Authentication Types.txt:13: So in this example, the client is initiating a connection to the client VPN endpoint and we have defined SAML 2.0 idP in IAM such as the client VPN endpoint is going to check the configuration of this idP.
- 083_Client VPN - Client Authentication Types.txt:16: And then this SAML token is being passed to the client VPN endpoint which is going to validate the SAML token and therefore establish a secure connection between the clients and the client VPN endpoint.
- 084_[SAA_SOA] VPC Peering.txt:1: So now let's talk about VPC Peering.
- 084_[SAA_SOA] VPC Peering.txt:8: So, VPC peerings can happen between two VPCs and they're not transitive.
- 084_[SAA_SOA] VPC Peering.txt:9: That means that each VPC that wants to communicate with one another must have VPC peering enabled.
- 084_[SAA_SOA] VPC Peering.txt:10: So if you have a look at three VPCs right now, A, B, and C, then we can create a peering connection between A and B.
- 084_[SAA_SOA] VPC Peering.txt:12: And we can create another peering connection between VPC B and C, and again, they can communicate together.
- 084_[SAA_SOA] VPC Peering.txt:13: But even though A and B, and B and C, are connected, you still need to enable a VPC peering connection between A and C, to have them communicate.
- 084_[SAA_SOA] VPC Peering.txt:17: So some good things to know about VPC peering.
- 084_[SAA_SOA] VPC Peering.txt:26: We're here and now we're going to add a VPC peering connection to connect our VPC to other VPCs.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:1: Okay, so let's have a play with peering VPCs.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:39: And to do so, well we need to go and create a peering connection.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:40: So on the lifeline side, there is peering connections.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:41: I'm going to create a peering connection and I'll call it demo peering connection, and we need to select a local VPC to peer with.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:45: So as we can see, this CIDR and that CIDR do not overlap and therefore this VPC peering connection is possible to create, okay.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:46: So let's create this peering connection and it's pending acceptance.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:52: And now it says to send and receive traffic across this VPC peering connection you must adder route to the VPC period in one or more of your VPC, route tables.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:53: So again, this is very important, even though there's VPC peering connections we need to still modify the route table.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:66: And we're saying, Hey, any traffic that is going into this range of IP addresses should be sent to a peering connection called the demo peering connection.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:73: And again, the peering connection.
- 085_[SAA_SOA] VPC Peering - Hands On.txt:78: That mean that the VPC peering connection is working and it was established.
- 088_VPC Endpoints - Overview.txt:1: So now let's talk about VPC endpoints and they are at the core of the exam, so super important for you to know about them.
- 088_VPC Endpoints - Overview.txt:2: These endpoints allow you to connect to AWS services using a private network instead of going over the public internet network, like you usually do.
- 088_VPC Endpoints - Overview.txt:3: These VPC endpoints will scale horizontally and they will be redundant so that you can survive the loss of an availability zone.
- 088_VPC Endpoints - Overview.txt:6: So that means that an EC2 instance in the private subnet has the chance, for example, through a VPC endpoint gateway, to access Amazon S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:7: So VPC endpoint gateway only support S3 and DynamoDB.
- 088_VPC Endpoints - Overview.txt:8: So this way, as you can see, no NAT gateway is needed, no internet gateway is needed, just the VPC endpoint gateway and you're good to go.
- 088_VPC Endpoints - Overview.txt:9: Next we have the VPC endpoint interface, which supports all services.
- 088_VPC Endpoints - Overview.txt:10: So for example, if you wanted to privately access CloudWatch, for example, to push metrics and logs from a private EC2 instance onto CloudWatch, what you would do is that you would create a VPC endpoint interface, which is an ENI that will live in your private subnet.
- 088_VPC Endpoints - Overview.txt:12: In case you're having issues with VPC endpoints, you must check the DNS setting resolution in your VPC because it leverages the DNS in the backend to make it transparent for your applications.
- 088_VPC Endpoints - Overview.txt:13: And also you must check the route tables to make sure, for example, when you have a VPC endpoint gateway, that the correct routing is in place.
- 088_VPC Endpoints - Overview.txt:14: Let's do a drill down into now the VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:19: So for example, we'll have a VPC endpoint gateway for S3, and then this EC2 instance, to be able to access this VPC endpoint gateway, you must define a route table.
- 088_VPC Endpoints - Overview.txt:20: And this route table will contain, for example, as you can see here on the second line, the fact that the destination is for Amazon S3, and that the target goes through this VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:21: And therefore, thanks to this route table, whenever the EC2 instance tries to connect to the S3 service, it will be routed through the VPC endpoint gateway.
- 088_VPC Endpoints - Overview.txt:24: Now this VPC endpoint gateway, it cannot be extended out of your VPC.
- 088_VPC Endpoints - Overview.txt:25: So VPN connections do not work.
- 088_VPC Endpoints - Overview.txt:26: Direct Connect does not work.
- 088_VPC Endpoints - Overview.txt:27: Transit gateway does not work, or VPC peering does not work.
- 088_VPC Endpoints - Overview.txt:28: That's why you have to create one VPC endpoint per gateway per VPC you have, if you have multiple VPCs.
- 088_VPC Endpoints - Overview.txt:29: VPC endpoints interface are slightly different, they provide you an elastic network interface, ENI, that will have a private endpoint interface host name.
- 088_VPC Endpoints - Overview.txt:30: This way, it's going to leverage the security groups for security, and you're going to have a private DNS, which is a setting when you create the endpoint.
- 088_VPC Endpoints - Overview.txt:31: That means that the public host name of your service is going to resolve to the private endpoint interface host name.
- 088_VPC Endpoints - Overview.txt:37: So if you have Direct Connect or a site-to-site VPN, it is completely possible for your on-premises application to access services on AWS through these interfaces.
- 088_VPC Endpoints - Overview.txt:39: And then we have a private subnet with an EC2 instance in which we create a VPC endpoint interface that will get a specific IP.
- 088_VPC Endpoints - Overview.txt:40: Automatically upon creating the VPC endpoint interface, the DNS names are going to be registered within the private Route 53 Resolver.
- 088_VPC Endpoints - Overview.txt:41: And so whenever your EC2 instance will ask, for example, hey, where can I find athena.us-east-1.amazonaws.com, well, the thing will reply, you should access it through this IP address of type A, which is 10.0.0.10, and this IP address is going to point directly to the VPC endpoint interface, and therefore, will be accessing Athena privately.
- 089_VPC Endpoint Policies.txt:1: So now let's talk about VPC Endpoint Policies.
- 089_VPC Endpoint Policies.txt:2: So they look like this, and as the name indicates, they are attached to VPC endpoints.
- 089_VPC Endpoint Policies.txt:3: So in this example, we have a VPC endpoint policy which is saying that anyone that accesses it, so anyone because principal star that does a list bucket, get bucket, or put objects, so three API calls, is going to be authorized on the bucket itself as well as any objects within the bucket.
- 089_VPC Endpoint Policies.txt:7: So meaning that this endpoint policy is allowing a specific role to access it and to do three kinds of operations on one specific bucket and its objects.
- 089_VPC Endpoint Policies.txt:9: And of course, the VPC endpoint policy will control which principles can use the VPC endpoint to access services.
- 089_VPC Endpoint Policies.txt:10: Now these can be attached to both interface endpoints and gateway endpoints.
- 089_VPC Endpoint Policies.txt:13: So even if the VPC endpoint policy is allowing this role to use the VPC endpoint it does not mean that it's going to authorize the API call on the target resource.
- 089_VPC Endpoint Policies.txt:17: Now, you should note that the AWS principle org ID condition which is something that can come up in the exam, can be used to restrict access only within the organization, therefore, guaranteeing that your VPC endpoint is only used by accounts of your organization.
- 089_VPC Endpoint Policies.txt:20: Number one, that it is accessible from within our organization, and number two, that it will be only accessed through the VPC endpoint.
- 089_VPC Endpoint Policies.txt:24: And then the conditions strings equal is saying only if the source VPC endpoint is the VPC endpoint from before then this is allowed.
- 089_VPC Endpoint Policies.txt:25: Therefore, if a request comes to the queue on its own without the VPC endpoint, it's going to be refused because of that condition.
- 089_VPC Endpoint Policies.txt:26: So here we have tightly linked the VPC endpoint to the SQS queue, and then we can add a VPC endpoint policy saying that the request are only allowed from anything by anywhere to anyone as long as the account ID that is making this request, so the user belongs to an account ID, for example, also belongs to an organization with a principle org ID of 0, 1, 2, 3, 4, 5, 6, 7, 8, and so on.
- 089_VPC Endpoint Policies.txt:27: So this effectively guarantees that all member accounts through this VPC endpoint can access my SQS queue and do a send message and receive message.
- 089_VPC Endpoint Policies.txt:28: Hopefully that makes sense into the power of VPC endpoint policies.
- 089_VPC Endpoint Policies.txt:30: But just to give you an idea of how this works, so say we have a VPC endpoint policy and an IAM user then they're both going to be evaluated.
- 089_VPC Endpoint Policies.txt:31: So if an IAM user makes a request from a VPC through a VPC endpoint and then into, for example, a resource and SQS queue whatever you want, then first of all this VPC endpoint policy must have an explicit allow.
- 089_VPC Endpoint Policies.txt:32: Otherwise, the IAM user will not be able to go through the VPC endpoints.
- 089_VPC Endpoint Policies.txt:33: And then even if it's allowed in the VPC endpoint policy, then you must have, for example, on your IAM policy attached to your IAM user, you must have an explicit allow and no explicit deny.
- 089_VPC Endpoint Policies.txt:34: And of course, you must not have an explicit deny on your VPC endpoint policy either.
- 089_VPC Endpoint Policies.txt:35: So what I wanted to show you here, is that they're both evaluated regardless, is that even if the VPC endpoint policies allows it, there is still protection at the IAM user level, or the resource policy as we'll see right now.
- 089_VPC Endpoint Policies.txt:36: So in this slightly more complicated use case where we have a VPC endpoint policy, a resource policy, for example, an S3 buckets policy, as well as an identity based policy, for example, an IAM role, then what happens?
- 089_VPC Endpoint Policies.txt:37: Again, we need to be explicitly allowed through the VPC endpoint policy.
- 090_VPC Endpoint - Examples.txt:1: So let's go through some very tricky examples of how we can access services of AWS through VPC endpoints.
- 090_VPC Endpoint - Examples.txt:6: Now, it turns out that there are two kinds of VPC interface endpoints that are required.
- 090_VPC Endpoint - Examples.txt:7: The first one is an interface endpoint directly into the CodeDeploy service itself.
- 090_VPC Endpoint - Examples.txt:9: The second VPC interface endpoint that's going to be required for EC2 types of deployments is the one called codedeploy-commands-secure, which is going to allow to have CodeDeploy agent operations because CodeDeploy is going to be sending some commands directly to the agent on the EC2 instance.
- 090_VPC Endpoint - Examples.txt:10: And so as you can see, two VPC endpoints may be required for CodeDeploy.
- 090_VPC Endpoint - Examples.txt:11: So just to give you some comparison, if you're deploying on EC2 instances you must have access to both VPC interface endpoint, one for the CodeDeploy API operations and the second one for the ones related to the agent.
- 090_VPC Endpoint - Examples.txt:12: But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:16: If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- 090_VPC Endpoint - Examples.txt:17: This will allow the Lambda function to get the database password through the VPC endpoint onto Secrets Manager and then to privately connect, for example, to a private RDS database instance.
- 090_VPC Endpoint - Examples.txt:18: If you didn't want to use a VPC interface endpoint you would need to set up NAT gateways and internet gateways to access from Lambda the Secrets Manager service, and that may be more complicated.
- 090_VPC Endpoint - Examples.txt:24: Well, first of all we need multiple VPC interface endpoints.
- 090_VPC Endpoint - Examples.txt:27: The second one is the SSM Session Manager VPC interface endpoint called SSM Messages.
- 090_VPC Endpoint - Examples.txt:29: Therefore, because your EC2 instances is going to access both these VPC interface endpoints, you must allow at least the port 443 outbound on your security group of your EC2 instance so that all these things can communicate together.
- 090_VPC Endpoint - Examples.txt:30: Then we're going to need a VPC interface endpoint for EC2 messages because we have the SSM agent and we need access to SSM commands.
- 090_VPC Endpoint - Examples.txt:31: If you're using KMS you're going to get optional KMS encryption by using the VPC interface endpoint for KMS.
- 090_VPC Endpoint - Examples.txt:32: There's also CloudWatch Logs in VPC endpoint in case you're sending the logs to CloudWatch Logs, or Amazon S3 if you're using Amazon S3 for these logs.
- 090_VPC Endpoint - Examples.txt:33: Finally, if you're using an S3 Gateway Endpoint and everything is private you must update the route tables as well.
- 090_VPC Endpoint - Examples.txt:36: So we need to have access to the SSM service itself with its own VPC interface endpoints, and then there will be one called the SSM Commands VPC interface endpoint. called EC2 Messages, which is going to allow the SSM service to send commands into our EC2 instance.
- 090_VPC Endpoint - Examples.txt:37: So the network security is similar as before, and again, to get these patches now, you must also get them from Amazon S3, and so therefore we'll need a VPC gateway endpoint for Amazon S3, and updating these tables, of course, when you have a VPC gateway endpoint.
- 090_VPC Endpoint - Examples.txt:38: And finally, because this VPC endpoint must access your patches, you must authorize through this VPC endpoint policy several buckets.
- 090_VPC Endpoint - Examples.txt:41: And finally, if you wanted to send the logs of the Patch Manager utility to CloudWatch Logs you must have your own VPC interface endpoint as well.
- 090_VPC Endpoint - Examples.txt:42: Next, you should know how VPC endpoints work for the API Gateway.
- 090_VPC Endpoint - Examples.txt:43: So if you define a private REST API in API Gateway, you can only access it using the VPC interface endpoint.
- 090_VPC Endpoint - Examples.txt:45: So that means that in this diagram, what's missing is the VPC interface endpoint for the execute API endpoint.
- 090_VPC Endpoint - Examples.txt:47: Of course, for it to work, we must have the correct VPC endpoint policies, and they must use together with the API gateway resource policies.
- 090_VPC Endpoint - Examples.txt:48: So that means that using a resource policy, you can actually restrict access to your private API from a specific VPC or VPC endpoint.
- 090_VPC Endpoint - Examples.txt:52: A bit redundant, but hopefully you get the point and you understand the whole complexity and power of VPC interface endpoints.
- 091_[SOA] PrivateLink.txt:9: Option number two, you may think of based on what you've seen in this section is to use VPC peering.
- 091_[SOA] PrivateLink.txt:13: And this way is called AWS PrivateLink which is what powers the VPC endpoints.
- 091_[SOA] PrivateLink.txt:14: And this one is also called the VPC endpoint services.
- 091_[SOA] PrivateLink.txt:18: What do you use, all the answer is PrivateLink.
- 091_[SOA] PrivateLink.txt:19: So it does not require a VPC peering or internet gateway, or knots or route tables.
- 091_[SOA] PrivateLink.txt:26: And this ENI through PrivateLink is going to be connected to your network load balancer.
- 091_[SOA] PrivateLink.txt:28: And this is the power of PrivateLink.
- 091_[SOA] PrivateLink.txt:29: So in this example, to establish a connection between the NLB and the ENI there was no need to establish VPC peering before.
- 091_[SOA] PrivateLink.txt:33: So PrivateLink is an awesome solution.
- 091_[SOA] PrivateLink.txt:34: So a way you could set us up, for example, just to show you how everything can be used is for using PrivateLink with ECS.
- 091_[SOA] PrivateLink.txt:39: The PrivateLink can be established directly into your NLB.
- 091_[SOA] PrivateLink.txt:40: And so for other VPCs it could be an ENI directly into PrivateLink.
- 091_[SOA] PrivateLink.txt:41: And for your corporate data center, it could be a private connection, for example, going over direct connect or a VPN connection.
- 091_[SOA] PrivateLink.txt:43: So that's it for PrivateLink.
- 092_[SOA] PrivateLink - Hands On.txt:1: So let's go on the left hand side under endpoint services to create a private link for one of our services.
- 092_[SOA] PrivateLink - Hands On.txt:4: So once the NLB is created, then you can specify additional settings for your endpoint whether or not you want acceptance.
- 092_[SOA] PrivateLink - Hands On.txt:7: So we can't do this right now but we would have here an endpoint service connected to our network balancer.
- 092_[SOA] PrivateLink - Hands On.txt:8: And then to link it to your VPC, you would go on Endpoint.
- 092_[SOA] PrivateLink - Hands On.txt:9: You would create an endpoint.
- 092_[SOA] PrivateLink - Hands On.txt:10: And this time, instead of choosing AWS services as the type of the endpoint, you would use a other endpoint services and you would type the service name you would've obtained from the previous step.
- 097_[SAA_SOA] AWS Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 097_[SAA_SOA] AWS Transit Gateway.txt:3: So, AWS came up with the transit gateway to solve that problem, and you're going to have a transitive peering connection between thousands of VPC, your on-premises data center, your site-to-site VPN, direct connects in a hub-and-spoke star connection.
- 097_[SAA_SOA] AWS Transit Gateway.txt:5: We have transit gateway in the center and you can connect multiple VPCs through the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:6: So in this example, we don't need to peer the VPCs together, they are connected transitively through the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:8: But also, you can connect a direct connect gateway to the transit gateway, so it shows you have a direct connect connection directly in to many different VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:9: Or if you are preferring site-to-site VPN and VPN connections, you can connect your customer gateway and your VPN connection into your transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:10: Again, one more time, giving you access to all these VPC as part of the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:12: It's a regional resource and it can work cross-region, and you can share your transit gateway across accounts by using the resource access manager.
- 097_[SAA_SOA] AWS Transit Gateway.txt:13: You can also peer transit gateways across region.
- 097_[SAA_SOA] AWS Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 097_[SAA_SOA] AWS Transit Gateway.txt:16: So, you get full control over the routing of all the traffic within the transit gateway to give you network security.
- 097_[SAA_SOA] AWS Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 097_[SAA_SOA] AWS Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 097_[SAA_SOA] AWS Transit Gateway.txt:23: So, let's take this example where we have a transit gateway and we have four VPCs attached to our transit gateway, and we have a corporate data center that is connected using site-to-site VPN to a transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 097_[SAA_SOA] AWS Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 097_[SAA_SOA] AWS Transit Gateway.txt:26: But with transit gateway, you can have multiple site-to-site VPN so you can create a second site-to-site VPN attachment and into your transit gateway, so this creates four tunnels.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- 097_[SAA_SOA] AWS Transit Gateway.txt:29: And in this case, a VPN connection is made of two tunnels.
- 097_[SAA_SOA] AWS Transit Gateway.txt:30: But if you are using a VPN into a transit gateway, you get one site-to-site VPN into many VPC because they're all connected transitively to the same transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:31: And also, one site-to-site VPN connection gives you 2.5 Gbps thanks to ECMP, because the two tunnels are going to be used through that strategy.
- 097_[SAA_SOA] AWS Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- 097_[SAA_SOA] AWS Transit Gateway.txt:35: Finally, you can share your direct connect connection between multiple accounts, again, using the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:37: Well, we're going to establish a direct connect connection between your corporate data center and a direct connect location, and then we're going to set up a transit gateway into both VPCs in two different accounts, okay?
- 097_[SAA_SOA] AWS Transit Gateway.txt:38: So this is something we can do with the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:39: And then, we connect the direct connect location into direct connect gateway and connect that gateway into the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:40: And what this just allowed us to do is to share a direct connect connection between multiple accounts and multiple VPC, which is very handy thanks to the transit gateway.
- 097_[SAA_SOA] AWS Transit Gateway.txt:42: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- 098_[SAA_SOA] Direct Connect.txt:1: Now let's talk about Direct Connect, and you may also see it as DX in the exam.
- 098_[SAA_SOA] Direct Connect.txt:3: So you need to set up that Direct Connect connection and it is using an AWS Direct Connect location.
- 098_[SAA_SOA] Direct Connect.txt:6: So what are the use cases for Direct Connect?
- 098_[SAA_SOA] Direct Connect.txt:8: Also, if you have connectivity issues using the public internet, we'll using Direct Connect you get a more consistent network experience, again because it is private.
- 098_[SAA_SOA] Direct Connect.txt:12: So let's look at a diagram of Direct Connect.
- 098_[SAA_SOA] Direct Connect.txt:14: So for this, we're going to commission an AWS Direct Connect location, their physical locations that you have to find but it's all obviously on the website of AWS, and there's going to be a Direct Connect endpoints, and there's going to be a customer or partner router that you have to rent from a customer or partner cage.
- 098_[SAA_SOA] Direct Connect.txt:15: So you have two cages in this Direct Connect location, and then on your on-premise data center, you're going to set up a customer router with a firewall.
- 098_[SAA_SOA] Direct Connect.txt:25: For this, you must use a Direct Connect gateway.
- 098_[SAA_SOA] Direct Connect.txt:27: So we're going to establish a Direct Connect connection, then using the private VIF, you're going to connect it to Direct Connect gateway.
- 098_[SAA_SOA] Direct Connect.txt:30: Okay, now let's discuss the connection types for Direct Connects.
- 098_[SAA_SOA] Direct Connect.txt:32: And first we need to make a request to AWS, and then it will be completed by an AWS Direct Connect partner.
- 098_[SAA_SOA] Direct Connect.txt:34: And again, we make connection requests via via AWS Direct Connect Partners.
- 098_[SAA_SOA] Direct Connect.txt:39: So an answer can not be Direct Connect because Direct Connect takes often more than one month to establish.
- 098_[SAA_SOA] Direct Connect.txt:40: So you need to look into question whether or not there's already a Direct Connect established, and whether or not the time to transmit the data is less or greater than one month.
- 098_[SAA_SOA] Direct Connect.txt:41: Now, when you have a Direct Connect, there is no encryption.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: But if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- Signal 2: If your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- Signal 3: Transcript signals that if you're using CodeDeploy to deploy to ECS or Lambda you only need access to the CodeDeploy APIs themselves, not this second VPC interface endpoint.
- Signal 4: Transcript signals that if your Lambda function is deployed in a private subnet you must also deploy a VPC interface endpoint of Secrets Manager in this private subnet.
- Signal 5: Key Insights: So to do so well, let's go ahead and create an EC two instance in a private subnet, but first, if you don't have a key pair, yet sometimes I reuse accounts or create new ones or transfusions.
- Signal 6: Key Insights: So I'll have a, a demo key pair right here, and then in the PM format.
- Signal 7: Key Insights: And then I will create my key pair.
- Signal 8: Key Insights: So now let's go into EC two instances And I'm going to launch an EC two instance.
- Signal 9: Key Insights: We will use the key pair named demo key pair we just created.
- Signal 10: Key Insights: And then for network settings, we will make sure to launch this into our demo VPC.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for 11 VPC Connectivity Security
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

### Activity 2: IAM Lab for 11 VPC Connectivity Security
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

### Activity 3: Amazon S3 Lab for 11 VPC Connectivity Security
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

### Activity 4: Amazon CloudWatch Lab for 11 VPC Connectivity Security
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

Use this lens to study 11 VPC Connectivity Security in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |
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

